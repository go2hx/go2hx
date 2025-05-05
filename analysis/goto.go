package analysis

import (
	"bytes"
	"fmt"
	"go/ast"
	"go/printer"
	"go/token"
	"go/types"
	"os"
	"reflect"
	"slices"
	"strconv"

	"golang.org/x/tools/go/ast/astutil"
)

type funcScope struct {
	tempVars               map[*ast.Object]tempVarData
	checker                *types.Checker
	labelMap               map[string]token.Pos
	labelMapLoop           map[string]ast.Stmt
	labelMapPost           map[string]ast.Stmt
	loopLabelMap           map[token.Pos]string
	nextJumpFunc           []func(token.Pos)
	loopPost               [100]ast.Stmt
	loopContinuePos        [100]token.Pos
	loopBreakPosFunc       []breakData
	loopFallthroughPosFunc func(token.Pos)
	fset                   *token.FileSet
}

type breakData struct {
	f          func(token.Pos)
	scopeIndex int
}

func (fs *funcScope) nextJumpRun(f func(token.Pos)) {
	fs.nextJumpFunc = append(fs.nextJumpFunc, f)
}

func newFuncScope(checker *types.Checker) *funcScope {
	fs := &funcScope{
		tempVars:     map[*ast.Object]tempVarData{},
		labelMap:     map[string]token.Pos{},
		labelMapPost: map[string]ast.Stmt{},
		loopLabelMap: map[token.Pos]string{},
		labelMapLoop: map[string]ast.Stmt{},
		checker:      checker,
		nextJumpFunc: []func(token.Pos){},
	}
	return fs
}

func (fs *funcScope) changeVars(expr ast.Expr) ast.Expr {
	astutil.Apply(expr, nil, func(c *astutil.Cursor) bool {
		switch expr := c.Node().(type) {
		case *ast.Ident:
			if data, ok := fs.tempVars[expr.Obj]; ok {
				expr.Name = data.Name
			}
		}
		return true
	})
	return expr
}

func (fs *funcScope) changeVarsStmtSimple(stmt ast.Stmt, from string, to string) ast.Stmt {
	astutil.Apply(stmt, nil, func(c *astutil.Cursor) bool {
		switch node := c.Node().(type) {
		case *ast.Ident:
			if node.Name == from {
				node.Name = to
			}
		}
		return true
	})
	return stmt
}

func (fs *funcScope) markJumpBlock(stmt *ast.BlockStmt, scopeIndex int, indepedent bool) *ast.BlockStmt {
	newStmts := []ast.Stmt{} //make([]ast.Stmt, len(stmt.List))
	if indepedent {
		newStmts = append(newStmts, jumpTo(stmt.Pos()), setJump(stmt.Pos()))
	}
	for i := range stmt.List {
		if len(fs.nextJumpFunc) > 0 {
			for _, f := range fs.nextJumpFunc {
				f(stmt.List[i].Pos())
			}
			fs.nextJumpFunc = []func(token.Pos){}
			// Adds unnecessary jumpTo when nextJumpFunc already creates necessary jumpTo points
			//newStmts = append(newStmts, jumpTo(stmt.List[i].Pos()))
			newStmts = append(newStmts, setJump(stmt.List[i].Pos()))
		}
		newStmts = append(newStmts, fs.markJumps(stmt.List[i], scopeIndex)...)
	}
	if indepedent {
		newStmts = append(newStmts, blank())
		fs.nextJumpRun(func(pos token.Pos) {
			newStmts[len(newStmts)-1] = jumpTo(pos)
		})
	}
	stmt.List = newStmts
	return stmt
}

func (fs *funcScope) markJumps(stmt ast.Stmt, scopeIndex int) []ast.Stmt {
	switch stmt := stmt.(type) {
	case *ast.BlockStmt:
		return []ast.Stmt{fs.markJumpBlock(stmt, scopeIndex, true)}
	case *ast.BranchStmt:
		if stmt.Label == nil {
			switch stmt.Tok {
			case token.FALLTHROUGH:
				stmts := []ast.Stmt{jumpTo(0)}
				fs.loopFallthroughPosFunc = func(pos token.Pos) {
					stmts[0].(*ast.AssignStmt).Rhs[0] = createPos(pos)
				}
				return stmts
			case token.BREAK:
				stmts := []ast.Stmt{jumpTo(0)}
				fs.loopBreakPosFunc = append(fs.loopBreakPosFunc, breakData{f: func(pos token.Pos) {
					stmts[0].(*ast.AssignStmt).Rhs[0] = createPos(pos)
				}, scopeIndex: scopeIndex})
				return stmts
			case token.CONTINUE:
				var post ast.Stmt = nil
				pos := token.Pos(0)
				for i := 0; i < 15; i++ {
					if scopeIndex-i < 0 {
						break
					}
					pos = fs.loopContinuePos[scopeIndex-i]
					post = fs.loopPost[scopeIndex-i]
					if pos != 0 {
						break
					}
				}
				if pos == 0 {
					panic(fmt.Sprint("not found continue pos2:", scopeIndex, fs.fset.Position(stmt.Pos())))
				}
				return []ast.Stmt{post, jumpTo(pos)}
			}
		} else {
			switch stmt.Tok {
			case token.GOTO:
				pos := fs.labelMap[stmt.Label.Name]
				return []ast.Stmt{jumpTo(pos)}
			case token.BREAK:
				forStmt, exists := fs.labelMapLoop[stmt.Label.Name]
				if !exists {
					p([]ast.Stmt{stmt})
					panic("break for stmt not found")
				}
				return []ast.Stmt{
					assign(ast.NewIdent(stmt.Label.Name+"Break"), ast.NewIdent("true")),
					jumpTo(forStmt.Pos()),
				}
			case token.CONTINUE:
				forStmt := fs.labelMapLoop[stmt.Label.Name]
				if post := fs.labelMapPost[stmt.Label.Name]; post != nil {
					return []ast.Stmt{
						post,
						jumpTo(forStmt.Pos()),
					}
				} else {
					return []ast.Stmt{jumpTo(forStmt.Pos())}
				}
			}
		}
		return []ast.Stmt{stmt}
	case *ast.TypeSwitchStmt: // TODO typeSwitchStmt and switchStmt are copies of each other besides stmt.Assign and stmt.Tag
		init := []ast.Stmt{blank()}
		if stmt.Init != nil {
			init = fs.markJumps(stmt.Init, scopeIndex)
		}
		definedStmts := make([]ast.Stmt, len(stmt.Body.List))
		defined := false
		switch assignStmt := stmt.Assign.(type) {
		case *ast.AssignStmt: // define vartypeSwitch
			defined = true
			assignName := assignStmt.Lhs[0].(*ast.Ident).Name
			assignStmt.Rhs[0] = fs.changeVars(assignStmt.Rhs[0])
			for i, clause := range stmt.Body.List {
				clause := clause.(*ast.CaseClause)
				defineIdent := ast.NewIdent(assignName + "_" + fmt.Sprint(counter))
				counter++
				for i := range clause.Body {
					clause.Body[i] = fs.changeVarsStmtSimple(clause.Body[i], assignName, defineIdent.Name)
				}
				obj := ast.NewObj(ast.Var, defineIdent.Name)
				var defineType ast.Expr = ast.NewIdent("any")
				if len(clause.List) == 1 {
					defineType = clause.List[0]
				}
				fs.tempVars[obj] = tempVarData{defineIdent, defineType, nil}
				definedStmts[i] = assign(defineIdent, assignStmt.Lhs[0])
				clause.Body = append(clause.Body, assign(ast.NewIdent("_"), defineIdent))
				//clause.Body = append([]ast.Stmt{define(defineIdent, assign.Lhs[0])}, clause.Body...)
			}
		default:
			stmt.Assign = fs.markJumps(stmt.Assign, scopeIndex)[0]
		}
		var defaultClause *ast.CaseClause
		for i := range stmt.Body.List {
			if stmt.Body.List[i].(*ast.CaseClause).List == nil {
				defaultClause = stmt.Body.List[i].(*ast.CaseClause)
			} else {
				for j := range stmt.Body.List[i].(*ast.CaseClause).List {
					stmt.Body.List[i].(*ast.CaseClause).List[j] = fs.changeVars(stmt.Body.List[i].(*ast.CaseClause).List[j])
				}
			}
			newStmts := []ast.Stmt{}
			if fs.loopFallthroughPosFunc != nil {
				fs.loopFallthroughPosFunc(stmt.Body.List[i].(*ast.CaseClause).Pos())
				fs.loopFallthroughPosFunc = nil
			}
			nextJumpFunc := fs.nextJumpFunc
			fs.nextJumpFunc = make([]func(token.Pos), 0)
			newStmts = fs.markJumpBlock(&ast.BlockStmt{List: stmt.Body.List[i].(*ast.CaseClause).Body}, scopeIndex+1, false).List
			fs.nextJumpFunc = append(fs.nextJumpFunc, nextJumpFunc...)

			stmt.Body.List[i].(*ast.CaseClause).Body = newStmts
			initBody := []ast.Stmt{jumpTo(stmt.Body.List[i].(*ast.CaseClause).Pos()), setJump(stmt.Body.List[i].(*ast.CaseClause).Pos())}
			if defined {
				initBody = append([]ast.Stmt{definedStmts[i]}, initBody...)
			}
			stmt.Body.List[i].(*ast.CaseClause).Body = append(initBody, stmt.Body.List[i].(*ast.CaseClause).Body...)
			stmt.Body.List[i].(*ast.CaseClause).Body = append(stmt.Body.List[i].(*ast.CaseClause).Body, blank())
			i := i
			fs.nextJumpRun(func(pos token.Pos) {
				stmt.Body.List[i].(*ast.CaseClause).Body[len(stmt.Body.List[i].(*ast.CaseClause).Body)-1] = jumpTo(pos)
				//stmt.Else.(*ast.BlockStmt).List = []ast.Stmt{}
				//stmt.Else.(*ast.BlockStmt).List[len(stmt.Else.(*ast.BlockStmt).List)-1] = jumpTo(pos)
			})
		}
		fs.loopFallthroughPosFunc = nil
		if defaultClause == nil {
			stmt.Body.List = append(stmt.Body.List, &ast.CaseClause{
				List: nil,
				Body: []ast.Stmt{blank()},
			})
			i := len(stmt.Body.List) - 1
			fs.nextJumpRun(func(pos token.Pos) {
				stmt.Body.List[i].(*ast.CaseClause).Body[len(stmt.Body.List[i].(*ast.CaseClause).Body)-1] = jumpTo(pos)
			})
		}
		// switch break
		fs.nextJumpRun(func(pos token.Pos) {
			newLoopBreakPosFunc := []breakData{}
			for _, data := range fs.loopBreakPosFunc {
				if scopeIndex+1 == data.scopeIndex {
					data.f(pos)
				} else {
					newLoopBreakPosFunc = append(newLoopBreakPosFunc, data)
				}
			}
			fs.loopBreakPosFunc = newLoopBreakPosFunc
		})
		if labelName, exists := fs.loopLabelMap[stmt.Pos()]; exists {
			breakName := labelName + "Break"
			obj := ast.NewObj(ast.Var, breakName)
			fs.tempVars[obj] = tempVarData{ast.NewIdent(breakName), ast.NewIdent("bool"), ast.NewIdent("false")}
			init = append(init, assign(ast.NewIdent(breakName), ast.NewIdent("false")))
			notBreakNameExpr := &ast.UnaryExpr{X: ast.NewIdent(breakName), Op: token.NOT}
			ifStmt := &ast.IfStmt{Cond: notBreakNameExpr, Body: &ast.BlockStmt{List: []ast.Stmt{stmt}}, Else: &ast.BlockStmt{List: []ast.Stmt{blank()}}}
			fs.nextJumpRun(func(pos token.Pos) {
				ifStmt.Else.(*ast.BlockStmt).List[len(ifStmt.Else.(*ast.BlockStmt).List)-1] = jumpTo((pos))
			})
			return append(init,
				jumpTo(stmt.Pos()),
				setJump(stmt.Pos()),
				ifStmt,
			)
		}
		return append(init,
			jumpTo(stmt.Pos()),
			setJump(stmt.Pos()),
			stmt,
		)
	case *ast.SwitchStmt:
		init := []ast.Stmt{}
		if stmt.Init != nil {
			_ = fs.markJumps(stmt.Init, scopeIndex)
			//stmt.Init = nil
		}
		stmt.Tag = fs.changeVars(stmt.Tag)
		var defaultClause *ast.CaseClause
		for i := range stmt.Body.List {
			if stmt.Body.List[i].(*ast.CaseClause).List == nil {
				defaultClause = stmt.Body.List[i].(*ast.CaseClause)
			} else {
				for j := range stmt.Body.List[i].(*ast.CaseClause).List {
					stmt.Body.List[i].(*ast.CaseClause).List[j] = fs.changeVars(stmt.Body.List[i].(*ast.CaseClause).List[j])
				}
			}
			newStmts := []ast.Stmt{}
			if fs.loopFallthroughPosFunc != nil {
				fs.loopFallthroughPosFunc(stmt.Body.List[i].(*ast.CaseClause).Pos())
				fs.loopFallthroughPosFunc = nil
			}
			nextJumpFunc := fs.nextJumpFunc
			fs.nextJumpFunc = make([]func(token.Pos), 0)
			newStmts = fs.markJumpBlock(&ast.BlockStmt{List: stmt.Body.List[i].(*ast.CaseClause).Body}, scopeIndex+1, false).List
			fs.nextJumpFunc = append(fs.nextJumpFunc, nextJumpFunc...)

			stmt.Body.List[i].(*ast.CaseClause).Body = newStmts
			stmt.Body.List[i].(*ast.CaseClause).Body = append([]ast.Stmt{jumpTo(stmt.Body.List[i].(*ast.CaseClause).Pos()), setJump(stmt.Body.List[i].(*ast.CaseClause).Pos())}, stmt.Body.List[i].(*ast.CaseClause).Body...)
			stmt.Body.List[i].(*ast.CaseClause).Body = append(stmt.Body.List[i].(*ast.CaseClause).Body, blank())
			i := i
			fs.nextJumpRun(func(pos token.Pos) {
				stmt.Body.List[i].(*ast.CaseClause).Body[len(stmt.Body.List[i].(*ast.CaseClause).Body)-1] = jumpTo(pos)
				//stmt.Else.(*ast.BlockStmt).List = []ast.Stmt{}
				//stmt.Else.(*ast.BlockStmt).List[len(stmt.Else.(*ast.BlockStmt).List)-1] = jumpTo(pos)
			})
		}
		fs.loopFallthroughPosFunc = nil
		if defaultClause == nil {
			stmt.Body.List = append(stmt.Body.List, &ast.CaseClause{
				List: nil,
				Body: []ast.Stmt{blank()},
			})
			i := len(stmt.Body.List) - 1
			fs.nextJumpRun(func(pos token.Pos) {
				stmt.Body.List[i].(*ast.CaseClause).Body[len(stmt.Body.List[i].(*ast.CaseClause).Body)-1] = jumpTo(pos)
			})
		}
		// switch break
		fs.nextJumpRun(func(pos token.Pos) {
			newLoopBreakPosFunc := []breakData{}
			for _, data := range fs.loopBreakPosFunc {
				if scopeIndex+1 == data.scopeIndex {
					data.f(pos)
				} else {
					newLoopBreakPosFunc = append(newLoopBreakPosFunc, data)
				}
			}
			fs.loopBreakPosFunc = newLoopBreakPosFunc
		})
		if labelName, exists := fs.loopLabelMap[stmt.Pos()]; exists {
			breakName := labelName + "Break"
			obj := ast.NewObj(ast.Var, breakName)
			fs.tempVars[obj] = tempVarData{ast.NewIdent(breakName), ast.NewIdent("bool"), ast.NewIdent("false")}
			init = append(init, assign(ast.NewIdent(breakName), ast.NewIdent("false")))
			notBreakNameExpr := &ast.UnaryExpr{X: ast.NewIdent(breakName), Op: token.NOT}
			ifStmt := &ast.IfStmt{Cond: notBreakNameExpr, Body: &ast.BlockStmt{List: []ast.Stmt{stmt}}, Else: &ast.BlockStmt{List: []ast.Stmt{blank()}}}
			fs.nextJumpRun(func(pos token.Pos) {
				ifStmt.Else.(*ast.BlockStmt).List[len(ifStmt.Else.(*ast.BlockStmt).List)-1] = jumpTo((pos))
			})
			return append(init,
				jumpTo(stmt.Pos()),
				setJump(stmt.Pos()),
				ifStmt,
			)
		}
		return append(init,
			jumpTo(stmt.Pos()),
			setJump(stmt.Pos()),
			stmt,
		)
	case *ast.IfStmt:
		if stmt.Init != nil {
			stmt.Init = fs.markJumps(stmt.Init, scopeIndex)[0]
		}
		stmt.Cond = fs.changeVars(stmt.Cond)
		stmt.Body = fs.markJumpBlock(stmt.Body, scopeIndex, false)
		if stmt.Else == nil {
			stmt.Else = &ast.BlockStmt{List: []ast.Stmt{}, Lbrace: stmt.End()}
		} else {
			nextJumpFunc := fs.nextJumpFunc
			fs.nextJumpFunc = make([]func(token.Pos), 0)
			stmt.Else = fs.markJumps(stmt.Else, scopeIndex)[0]
			fs.nextJumpFunc = append(fs.nextJumpFunc, nextJumpFunc...)
			pos := stmt.Else.Pos()
			switch stmt.Else.(type) {
			case *ast.BlockStmt:
				stmt.Else.(*ast.BlockStmt).List = append([]ast.Stmt{jumpTo(pos), setJump(pos)}, stmt.Else.(*ast.BlockStmt).List...)
			case *ast.IfStmt:
			}
		}
		stmt.Body.List = append([]ast.Stmt{jumpTo(stmt.Body.Pos()), setJump(stmt.Body.Pos())}, stmt.Body.List...)
		switch stmt.Else.(type) {
		case *ast.BlockStmt:
			stmt.Else.(*ast.BlockStmt).List = append(stmt.Else.(*ast.BlockStmt).List, blank())
		}
		stmt.Body.List = append(stmt.Body.List, blank())
		fs.nextJumpRun(func(pos token.Pos) {
			stmt.Body.List[len(stmt.Body.List)-1] = jumpTo(pos)
			//stmt.Else.(*ast.BlockStmt).List = []ast.Stmt{}
			switch stmt.Else.(type) {
			case *ast.BlockStmt:
				stmt.Else.(*ast.BlockStmt).List[len(stmt.Else.(*ast.BlockStmt).List)-1] = jumpTo(pos)
			}
		})
		return []ast.Stmt{
			stmt,
		}
	case *ast.ForStmt:
		previousLoopContinuePos := fs.loopContinuePos[scopeIndex+1]
		fs.loopContinuePos[scopeIndex+1] = stmt.Pos()
		init := []ast.Stmt{blank()}
		if stmt.Init != nil {
			init = fs.markJumps(stmt.Init, scopeIndex)
		}
		if labelName, exists := fs.loopLabelMap[stmt.Pos()]; exists {
			breakName := labelName + "Break"
			obj := ast.NewObj(ast.Var, breakName)
			fs.tempVars[obj] = tempVarData{ast.NewIdent(breakName), ast.NewIdent("bool"), ast.NewIdent("false")}
			init = append(init, assign(ast.NewIdent(breakName), ast.NewIdent("false")))
			notBreakNameExpr := &ast.UnaryExpr{X: ast.NewIdent(breakName), Op: token.NOT}
			if stmt.Cond == nil {
				stmt.Cond = notBreakNameExpr
			} else {
				stmt.Cond = &ast.BinaryExpr{X: notBreakNameExpr, Y: &ast.ParenExpr{X: stmt.Cond}, Op: token.LAND}
			}
		}
		previousLoopPost := fs.loopPost[scopeIndex+1]
		if stmt.Post != nil {
			stmt.Body.List = append(stmt.Body.List, stmt.Post)
			fs.loopPost[scopeIndex+1] = fs.markJumps(stmt.Post, scopeIndex)[0]
		} else {
			fs.loopPost[scopeIndex+1] = blank()
		}
		stmt.Body = fs.markJumpBlock(stmt.Body, scopeIndex+1, false)
		/*if fs.loopPost != nil {
			stmt.Body.List = append(stmt.Body.List, fs.loopPost)
		}*/
		stmt.Body.List = append([]ast.Stmt{jumpTo(stmt.Body.Pos()), setJump(stmt.Body.Pos())}, stmt.Body.List...)
		if len(fs.nextJumpFunc) > 0 {
			for _, f := range fs.nextJumpFunc {
				f(stmt.Pos())
			}
			fs.nextJumpFunc = []func(token.Pos){}
		}
		stmt.Body.List = append(stmt.Body.List, jumpTo(stmt.Pos()))
		if stmt.Cond == nil {
			stmt.Cond = ast.NewIdent("true")
		}
		var ifStmt *ast.IfStmt = makeIf(fs.changeVars(stmt.Cond), stmt.Body.List, []ast.Stmt{blank()})
		fs.nextJumpRun(func(pos token.Pos) {
			ifStmt.Else.(*ast.BlockStmt).List[0] = jumpTo(pos)
			newLoopBreakPosFunc := []breakData{}
			for _, data := range fs.loopBreakPosFunc {
				if scopeIndex+1 == data.scopeIndex {
					data.f(pos)
				} else {
					newLoopBreakPosFunc = append(newLoopBreakPosFunc, data)
				}
			}
			fs.loopBreakPosFunc = newLoopBreakPosFunc
		})
		fs.loopPost[scopeIndex+1] = previousLoopPost
		fs.loopContinuePos[scopeIndex+1] = previousLoopContinuePos
		return append(init,
			jumpTo(stmt.Pos()),
			setJump(stmt.Pos()),
			ifStmt,
		)
	case *ast.RangeStmt:
		switch t := fs.checker.TypeOf(stmt.X).Underlying().(type) {
		case *types.Basic:
			_ = t
			ident := ast.NewIdent("iterator_" + fmt.Sprint(stmt.Range))
			ident.Obj = ast.NewObj(ast.Var, ident.Name)
			ident.NamePos = stmt.Range
			fs.tempVars[ident.Obj] = tempVarData{
				Ident: ident,
				Type:  ast.NewIdent("int"),
			}
			rhs := []ast.Expr{createPos(token.Pos(0))}
			init := &ast.AssignStmt{Lhs: []ast.Expr{ident}, Tok: token.ASSIGN, TokPos: stmt.TokPos, Rhs: rhs}

			keysExpr := ast.NewIdent("keys_" + fmt.Sprint(stmt.Pos()))
			valuesExpr := ast.NewIdent("values_" + fmt.Sprint(stmt.Pos()))
			forStmt := &ast.ForStmt{For: stmt.Body.Rbrace, Init: init, Body: stmt.Body, Cond: &ast.BinaryExpr{X: ident, Op: token.LSS, Y: &ast.CallExpr{Fun: ast.NewIdent("len"), Args: []ast.Expr{keysExpr}}}, Post: &ast.IncDecStmt{X: ident, Tok: token.INC}}
			for labelName, stmt2 := range fs.labelMapLoop {
				if stmt == stmt2 {
					fs.labelMapLoop[labelName] = forStmt
					break
				}
			}
			if stmt.Key != nil {
				assign := defineExpr(stmt.Key, &ast.IndexExpr{X: keysExpr, Index: ident})
				forStmt.Body.List = append([]ast.Stmt{assign}, forStmt.Body.List...)
			}
			if stmt.Value != nil {
				assign := defineExpr(stmt.Value, &ast.IndexExpr{X: valuesExpr, Index: ident})
				forStmt.Body.List = append([]ast.Stmt{assign}, forStmt.Body.List...)
			}

			cond := &ast.BinaryExpr{X: createPos(token.Pos(0)), Op: token.LSS, Y: &ast.CallExpr{Fun: ast.NewIdent("len"), Args: []ast.Expr{keysExpr}}}
			ifStmt := &ast.IfStmt{Cond: cond, Body: &ast.BlockStmt{List: []ast.Stmt{forStmt}, Lbrace: stmt.Body.Rbrace - 1}, If: stmt.X.Pos()}
			clKeysType := &ast.CompositeLit{Type: &ast.ArrayType{Elt: ast.NewIdent("int")}}
			fs.tempVars[ast.NewObj(ast.Var, keysExpr.Name)] = tempVarData{
				Ident: keysExpr,
				Value: clKeysType,
			}
			clValuesType := &ast.CompositeLit{Type: &ast.ArrayType{Elt: ast.NewIdent("rune")}}
			fs.tempVars[ast.NewObj(ast.Var, valuesExpr.Name)] = tempVarData{
				Ident: valuesExpr,
				Value: clValuesType,
			}

			rangeStmt := &ast.RangeStmt{For: stmt.For - 1, Key: ast.NewIdent("key"), Value: ast.NewIdent("value"), Tok: token.DEFINE, X: fs.changeVars(stmt.X), Body: &ast.BlockStmt{
				List: []ast.Stmt{
					assign(keysExpr, &ast.CallExpr{Fun: ast.NewIdent("append"), Args: []ast.Expr{keysExpr, ast.NewIdent("key")}}),
					assign(valuesExpr, &ast.CallExpr{Fun: ast.NewIdent("append"), Args: []ast.Expr{valuesExpr, ast.NewIdent("value")}}),
				},
			}}
			return append([]ast.Stmt{assign(keysExpr, clKeysType), assign(valuesExpr, clValuesType), rangeStmt}, fs.markJumps(ifStmt, scopeIndex)...)
		case *types.Map:
			ident := ast.NewIdent("iterator_" + fmt.Sprint(stmt.Range))
			ident.Obj = ast.NewObj(ast.Var, ident.Name)
			ident.NamePos = stmt.Range
			fs.tempVars[ident.Obj] = tempVarData{
				Ident: ident,
				Type:  ast.NewIdent("int"),
				Value: createPos(0),
			}
			lhs := []ast.Expr{ident}
			rhs := []ast.Expr{createPos(token.Pos(0))}
			init := &ast.AssignStmt{Lhs: lhs, Tok: token.ASSIGN, TokPos: stmt.TokPos, Rhs: rhs}

			keysExpr := ast.NewIdent("keys_" + fmt.Sprint(stmt.Pos()))
			keysExpr.Obj = ast.NewObj(ast.Var, keysExpr.Name)
			forStmt := &ast.ForStmt{For: stmt.Body.Rbrace, Init: init, Body: stmt.Body, Cond: &ast.BinaryExpr{X: lhs[0], Op: token.LSS, Y: &ast.CallExpr{Fun: ast.NewIdent("len"), Args: []ast.Expr{keysExpr}}}, Post: &ast.IncDecStmt{X: lhs[0], Tok: token.INC}}
			for labelName, stmt2 := range fs.labelMapLoop {
				if stmt == stmt2 {
					fs.labelMapLoop[labelName] = forStmt
					break
				}
			}
			getKeyExpr := &ast.IndexExpr{X: keysExpr, Index: lhs[0]}
			if stmt.Key != nil {
				assign := defineExpr(stmt.Key, getKeyExpr)
				forStmt.Body.List = append([]ast.Stmt{assign}, forStmt.Body.List...)
			}
			if stmt.Value != nil {
				assign := defineExpr(stmt.Value, &ast.IndexExpr{X: stmt.X, Index: &ast.IndexExpr{X: keysExpr, Index: lhs[0]}})
				forStmt.Body.List = append([]ast.Stmt{assign}, forStmt.Body.List...)
			}

			cond := &ast.BinaryExpr{X: createPos(token.Pos(0)), Op: token.LSS, Y: &ast.CallExpr{Fun: ast.NewIdent("len"), Args: []ast.Expr{stmt.X}}}
			ifStmt := &ast.IfStmt{Cond: cond, Body: &ast.BlockStmt{List: []ast.Stmt{forStmt}, Lbrace: stmt.Body.Rbrace - 1}, If: stmt.X.Pos()}
			fs.addTypeWithExpr(types.NewSlice(t.Key()), &ast.ArrayType{Elt: fs.typeToExpr(t.Key())})
			cl := &ast.CompositeLit{Type: fs.typeToExpr(types.NewSlice(t.Key()))}
			fs.tempVars[ast.NewObj(ast.Var, keysExpr.Name)] = tempVarData{
				Ident: keysExpr,
				Type:  cl.Type,
				Value: cl,
			}
			keysStmt := &ast.RangeStmt{For: stmt.For - 1, Key: ast.NewIdent("key"), Tok: token.DEFINE, X: stmt.X, Body: &ast.BlockStmt{
				List: []ast.Stmt{assign(keysExpr, &ast.CallExpr{Fun: ast.NewIdent("append"), Args: []ast.Expr{keysExpr, ast.NewIdent("key")}})},
			}}
			return append([]ast.Stmt{assign(keysExpr, cl), keysStmt}, fs.markJumps(ifStmt, scopeIndex)...)
		case *types.Array, *types.Slice:
			_ = t
			lhs := []ast.Expr{}
			if stmt.Key != nil {
				switch key := stmt.Key.(type) {
				case *ast.Ident:
					if key.Name == "_" {
						key.Name = "iterator_" + fmt.Sprint(stmt.Range)
						if stmt.Tok == token.ASSIGN {
							obj := ast.NewObj(ast.Var, key.Name)
							fs.tempVars[obj] = tempVarData{
								Ident: key,
								Value: createPos(0),
							}
						}
					}
				}
				lhs = append(lhs, fs.changeVars(stmt.Key))
			} else {
				lhs = append(lhs, ast.NewIdent("i_"+fmt.Sprint(stmt.Range)))
			}
			if stmt.Value != nil && stmt.Tok == token.DEFINE {
				lhs = append(lhs, stmt.Value)
			}
			rhs := make([]ast.Expr, len(lhs))
			for i := range lhs {
				switch i {
				case 0:
					rhs[i] = createPos(token.Pos(0))
				case 1:
					rhs[i] = &ast.IndexExpr{X: stmt.X, Index: createPos(token.Pos(0))}
				}
			}
			itok := token.ASSIGN
			if stmt.Tok != token.ILLEGAL {
				itok = stmt.Tok
			}
			init := &ast.AssignStmt{Lhs: lhs, Tok: itok, TokPos: stmt.TokPos, Rhs: rhs}
			forStmt := &ast.ForStmt{For: stmt.Body.Rbrace, Init: init, Body: stmt.Body, Cond: &ast.BinaryExpr{X: lhs[0], Op: token.LSS, Y: &ast.CallExpr{Fun: ast.NewIdent("len"), Args: []ast.Expr{stmt.X}}}, Post: &ast.IncDecStmt{X: lhs[0], Tok: token.INC}}
			for labelName, stmt2 := range fs.labelMapLoop {
				if stmt == stmt2 {
					fs.labelMapLoop[labelName] = forStmt
					break
				}
			}
			if stmt.Value != nil {
				assign := assignExpr(stmt.Value, &ast.IndexExpr{X: stmt.X, Index: lhs[0]})
				forStmt.Body.List = append([]ast.Stmt{assign}, forStmt.Body.List...)
			}
			cond := &ast.BinaryExpr{X: createPos(token.Pos(0)), Op: token.LSS, Y: &ast.CallExpr{Fun: ast.NewIdent("len"), Args: []ast.Expr{stmt.X}}}
			ifStmt := &ast.IfStmt{Cond: cond, Body: &ast.BlockStmt{List: []ast.Stmt{forStmt}, Lbrace: stmt.Body.Rbrace - 1}, If: stmt.X.Pos()}
			return fs.markJumps(ifStmt, scopeIndex)
		}
	case *ast.DeclStmt:
		switch decl := stmt.Decl.(type) {
		case *ast.GenDecl:
			isVar := false
			stmts := []ast.Stmt{}
			iotaFlag := false // is iota being used in the declaration?
			for _, spec := range decl.Specs {
				switch spec := spec.(type) {
				case *ast.ValueSpec:
					isVar = true
					if len(spec.Values) > 0 {
						if idt, ok := spec.Values[0].(*ast.Ident); ok {
							if idt.Name == "iota" {
								iotaFlag = true
							}
						}
					}
					names := []ast.Expr{}
					for i, name := range spec.Names {
						typ := spec.Type
						if iotaFlag {
							typ = &ast.Ident{Name: "int"}
						}
						ident := fs.tempVarWithTypeExpr(name, typ)
						if len(spec.Values) > i || iotaFlag {
							names = append(names, ident)
						}
						if iotaFlag {
							v := strconv.Itoa(spec.Names[i].Obj.Data.(int)) // this will panic if it does not work
							bl := &ast.BasicLit{Kind: token.INT, Value: v}
							if len(spec.Values) > i {
								spec.Values[i] = bl
							} else {
								spec.Values = append(spec.Values, bl)
							}
						}
					}
					if iotaFlag && len(names) > 0 {
						ass := ast.AssignStmt{Lhs: names, Rhs: spec.Values, Tok: token.ASSIGN}
						stmts = append(stmts, &ass)
					} else {
						for i := range spec.Values {
							spec.Values[i] = fs.changeVars(spec.Values[i])
						}
						if len(names) > 0 && decl.Tok != token.CONST {
							stmts = append(stmts, &ast.AssignStmt{Lhs: names, Rhs: spec.Values, Tok: token.ASSIGN})
						}
					}
				default:
				}
			}

			if !isVar {
				return []ast.Stmt{stmt}
			} else {
				return stmts
			}
		}

	case *ast.AssignStmt:
		if stmt.Tok == token.DEFINE {
			for i, expr := range stmt.Lhs {
				switch expr := expr.(type) {
				case *ast.Ident:
					if expr.Name == "_" || expr.Name == "gotoNext" {
						continue
					}
					//fmt.Println(checker.TypeOf(expr).String())
					if expr.Obj != nil {
						t := fs.checker.TypeOf(expr)
						stmt.Lhs[i] = fs.tempVar(expr, t)
					}
				default:
					panic("unknown expr lhs type: " + reflect.TypeOf(expr).String())
				}
			}
			stmt.Tok = token.ASSIGN
		}
		for i := range stmt.Rhs {
			stmt.Rhs[i] = fs.changeVars(stmt.Rhs[i])
		}
		for i := range stmt.Lhs {
			stmt.Lhs[i] = fs.changeVars(stmt.Lhs[i])
		}
	case *ast.ExprStmt:
		fs.changeVars(stmt.X)
	case *ast.ReturnStmt:
		for i := range stmt.Results {
			stmt.Results[i] = fs.changeVars(stmt.Results[i])
		}
	case *ast.IncDecStmt:
		fs.changeVars(stmt.X)
	case *ast.DeferStmt:
		fs.changeVars(stmt.Call)
	case *ast.LabeledStmt:
		return append([]ast.Stmt{jumpTo(stmt.Label.Pos()), setJump(stmt.Label.Pos())}, fs.markJumps(stmt.Stmt, scopeIndex)...)
	}
	return []ast.Stmt{stmt}
}

func (fs *funcScope) addTypeWithExpr(t types.Type, e ast.Expr) {
	fs.checker.Types[e] = types.TypeAndValue{Type: t}
	//types.TypeAndValue{Type: types.NewSlice(t.Key())}
}

func blank() ast.Stmt {
	return assign(ast.NewIdent("_"), createPos(token.Pos(0)))
}

func jumpTo(pos token.Pos) ast.Stmt {
	return assign(ast.NewIdent("gotoNext"), createPos(pos))
}

func createPos(pos token.Pos) ast.Expr {
	return &ast.BasicLit{Kind: token.INT, Value: fmt.Sprint(pos)}
}
func makeIf(cond ast.Expr, body []ast.Stmt, elseStmts []ast.Stmt) *ast.IfStmt {
	return &ast.IfStmt{Cond: cond, Body: &ast.BlockStmt{List: body}, Else: &ast.BlockStmt{List: elseStmts}}
}

func assignExpr(key ast.Expr, value ast.Expr) ast.Stmt {
	return &ast.AssignStmt{Lhs: []ast.Expr{key}, Tok: token.ASSIGN, Rhs: []ast.Expr{value}}
}

func defineExpr(key ast.Expr, value ast.Expr) ast.Stmt {
	return &ast.AssignStmt{Lhs: []ast.Expr{key}, Tok: token.DEFINE, Rhs: []ast.Expr{value}}
}

func assign(ident *ast.Ident, value ast.Expr) ast.Stmt {
	return &ast.AssignStmt{Lhs: []ast.Expr{ident}, Tok: token.ASSIGN, Rhs: []ast.Expr{value}}
}

var counter = 0

func (fs *funcScope) tempVarWithTypeExpr(ident *ast.Ident, t ast.Expr) *ast.Ident {
	nameObj := ident.Obj
	if data, ok := fs.tempVars[nameObj]; ok {
		return data.Ident
	}
	ident.Name = ident.Name + "_" + fmt.Sprint(counter)
	counter++
	fs.tempVars[nameObj] = tempVarData{Ident: ident, Type: t}
	return ident
}

func (fs *funcScope) tempVar(ident *ast.Ident, t types.Type) *ast.Ident {
	return fs.tempVarWithTypeExpr(ident, fs.typeToExpr(t))
}

type labelData struct {
	scopeIndex int
	stmts      []ast.Stmt
}

type JumpData struct {
	index int
	stmts []ast.Stmt
}
type tempVarData struct {
	*ast.Ident
	Type  ast.Expr
	Value ast.Expr
}

func (fs *funcScope) typeToExpr(t types.Type) ast.Expr {
	if t == nil {
		return ast.NewIdent("any")
	}
	for expr, data := range fs.checker.Types {
		if data.Type.String() == t.String() { // type equality
			buf := bytes.NewBufferString("")
			printer.Fprint(buf, token.NewFileSet(), expr)
			switch t.(type) {
			case *types.Basic:
				return ast.NewIdent(t.String())
			default:
				if buf.String() == t.String() { // expr should look the same as the type
					return expr
				}
			}
		}
	}
	return ast.NewIdent(t.String())
}

var testBool = false

func ParseLocalGotos(file *ast.File, checker *types.Checker, fset *token.FileSet, setTestBool bool) {
	testBool = setTestBool
	counter = 0
	// select functions that have gotos in them
	decls := []*ast.FuncDecl{}
	for _, decl := range file.Decls {
		switch decl := decl.(type) {
		case *ast.FuncDecl:
			isLabeled := false
			astutil.Apply(decl.Body, nil, func(c *astutil.Cursor) bool {
				if isLabeled {
					return false
				}
				switch c.Node().(type) {
				case *ast.LabeledStmt:
					isLabeled = true
					return false
				}
				return true
			})
			if isLabeled {
				decls = append(decls, decl)
			}
		}
	}
	for _, decl := range decls {
		fn := decl.Body
		fs := newFuncScope(checker)
		fs.fset = fset
		// get labels
		astutil.Apply(fn, func(c *astutil.Cursor) bool {
			switch stmt := c.Node().(type) {
			case *ast.LabeledStmt:
				labelName := stmt.Label.Name
				fs.labelMap[labelName] = stmt.Label.Pos()
				// set labelMap based on labelName
				switch child := stmt.Stmt.(type) {
				case *ast.BlockStmt:
				case *ast.LabeledStmt:
				case *ast.TypeSwitchStmt:
					fs.loopLabelMap[stmt.Stmt.Pos()] = labelName
					fs.labelMapLoop[labelName] = stmt.Stmt
				case *ast.SwitchStmt:
					fs.loopLabelMap[stmt.Stmt.Pos()] = labelName
					fs.labelMapLoop[labelName] = stmt.Stmt
				case *ast.RangeStmt:
					var x = ast.NewIdent("iterator_" + fmt.Sprint(child.Range))
					switch t := fs.checker.TypeOf(child.X).Underlying().(type) {
					case *types.Array, *types.Slice:
						_ = t
						if child.Key != nil {
							switch key := child.Key.(type) {
							case *ast.Ident:
								if key.Name != "_" {
									x = key
								}
							}
						} else {
							x.Obj = ast.NewObj(ast.Var, x.Name)
							child.Key = x
							fs.tempVarWithTypeExpr(x, &ast.Ident{Name: "int"})
						}
					}
					fs.labelMapPost[labelName] = &ast.IncDecStmt{X: x, Tok: token.INC}
					fs.loopLabelMap[stmt.Stmt.Pos()] = labelName
					fs.labelMapLoop[labelName] = stmt.Stmt
				case *ast.ForStmt:
					if child.Post != nil {
						fs.labelMapPost[labelName] = child.Post
					}
					fs.loopLabelMap[stmt.Stmt.Pos()] = labelName
					fs.labelMapLoop[labelName] = stmt.Stmt
				}
			}
			return true
		}, nil)
		// temp vars and flatten control flow
		// create endpoint
		endJumpObj := ast.NewObj(ast.Var, "gotoNext")
		endJump := jumpTo(-1)
		endJumpObj.Decl = endJump
		endJump.(*ast.AssignStmt).Lhs[0].(*ast.Ident).Obj = endJumpObj
		endJump.(*ast.AssignStmt).Lhs[0].(*ast.Ident).NamePos = fn.Rbrace
		// add end point to end of file
		fn.List = append(fn.List, endJump)
		// mark jumps
		fn = fs.markJumpBlock(fn, 0, false)
		// create switch stmt
		gotoNextIdent := ast.NewIdent("gotoNext")
		switchStmt := &ast.SwitchStmt{
			Tag:  gotoNextIdent,
			Body: &ast.BlockStmt{},
		}
		_ = switchStmt
		secondPass := true
		// debug comment
		commentBool := false
		if secondPass {
			if commentBool {
				buf := bytes.NewBufferString("")
				printer.Fprint(buf, token.NewFileSet(), fn)
				file.Doc = &ast.CommentGroup{List: []*ast.Comment{{Text: "/*" + buf.String() + "*/"}}}
			}
			jumps := map[int][]ast.Stmt{
				0: {},
			}
			astutil.Apply(fn, nil, func(c *astutil.Cursor) bool {
				//fmt.Println(reflect.TypeOf(c.Node()).String())
				jumpPos := -1
				if c.Node() == fn {
					jumpPos = 0
				}
				if c.Node() == nil {
					return true
				}
				switch stmt := c.Node().(type) {
				case *ast.CaseClause:
					stmt.Body = addToBlock(stmt.Body, jumpPos, jumps)
				case *ast.BlockStmt:
					stmt.List = addToBlock(stmt.List, jumpPos, jumps)
					c.Replace(stmt)
				}
				return true
			})

			// jumps to cases
			cases := []CaseData{}

			for index, stmts := range jumps {
				cases = append(cases, CaseData{index, stmts})
			}
			// sort based on index
			slices.SortFunc(cases, func(a CaseData, b CaseData) int {
				return a.index - b.index
			})
			// add cases to switch stmt
			for _, c := range cases {
				switchStmt.Body.List = append(switchStmt.Body.List, &ast.CaseClause{
					List: []ast.Expr{createPos(token.Pos(c.index))},
					Body: c.stmts,
				})
			}
			cond := &ast.BinaryExpr{X: gotoNextIdent, Op: token.NEQ, Y: createPos(token.Pos(-1))}
			fn.List = []ast.Stmt{&ast.ForStmt{Cond: cond, Body: &ast.BlockStmt{List: []ast.Stmt{
				//&ast.ExprStmt{X: &ast.CallExpr{Fun: ast.NewIdent("println"), Args: []ast.Expr{ast.NewIdent("gotoNext")}}},
				switchStmt,
			}}}}
			if decl.Type.Results != nil {
				// create panic if decl func has a return type
				unreachableStmt := &ast.ExprStmt{X: &ast.CallExpr{Fun: ast.NewIdent("panic"), Args: []ast.Expr{&ast.BasicLit{Kind: token.STRING, Value: `"unreachable goto control flow"`}}}}
				fn.List = append(fn.List, unreachableStmt)
			}
		}
		// set as function body
		//fn.List = []ast.Stmt{}
		// define of gotoNext
		startExpr := createPos(token.Pos(0))
		fn.List = append([]ast.Stmt{&ast.AssignStmt{
			Tok: token.DEFINE,
			Lhs: []ast.Expr{gotoNextIdent},
			Rhs: []ast.Expr{startExpr},
		}, setJump(0)}, fn.List...)

		// add temp vars
		for _, data := range fs.tempVars {
			valueSpec := &ast.ValueSpec{
				Names: []*ast.Ident{data.Ident},
				Type:  data.Type,
			}
			if data.Value != nil {
				valueSpec.Values = []ast.Expr{data.Value}
			}
			stmts := []ast.Stmt{&ast.DeclStmt{
				Decl: &ast.GenDecl{
					Tok: token.VAR,
					Specs: []ast.Spec{
						valueSpec,
					},
				},
			}}
			if testBool {
				stmts = append(stmts, assignExpr(ast.NewIdent("_"), data.Ident))
			}
			fn.List = append(stmts, fn.List...)
		}

		/*
			// for loop inside switch
			fn.List = append(fn.List, &ast.ForStmt{
				Body: &ast.BlockStmt{
					List: []ast.Stmt{
						//&ast.ExprStmt{X: &ast.CallExpr{Fun: ast.NewIdent("println"), Args: []ast.Expr{gotoNextIdent}}},
						//switchStmt,
					},
				},
			})*/
	}
	// find labels

	// find gotos

	// deconstruct all control flows

	// turn funcs' blocks into looped switch statement

	// optional print out somewhere and run
}

type CaseData struct {
	index int
	stmts []ast.Stmt
}

func addToBlock(list []ast.Stmt, jumpPos int, jumps map[int][]ast.Stmt) []ast.Stmt {
	newStmts := []ast.Stmt{}
	addToBlockBool := true
	for _, stmt := range list {
		pos, labelBool := findGoto(stmt)
		if pos != -1 && labelBool {
			// end
			jumpPos = pos
			continue
		}
		if jumpPos != -1 {
			jumps[jumpPos] = append(jumps[jumpPos], stmt)
		}
		// addToBlockBool false prevents anything else after from being added to the block
		if addToBlockBool {
			newStmts = append(newStmts, stmt)
		}
		switch stmt.(type) {
		case *ast.IfStmt, *ast.SwitchStmt:
			jumpPos = -1
			//addToBlockBool = false
		}
		// no label found and pos to goto found
		if pos != -1 && !labelBool {
			jumpPos = -1
			addToBlockBool = false
		}
	}
	return newStmts
}

func findGotoJump(stmt ast.Stmt) (pos int, found bool) {
	switch stmt := stmt.(type) {
	case *ast.AssignStmt:
		if len(stmt.Lhs) == 1 && len(stmt.Rhs) == 1 {
			switch ident := stmt.Lhs[0].(type) {
			case *ast.Ident:
				if ident.Name == "gotoNext" { // end
					// execute
					i, err := strconv.Atoi(stmt.Rhs[0].(*ast.BasicLit).Value)
					if err != nil {
						panic(err)
					}
					return i, true
				}
			}
		}
	}
	return -1, false
}

func findGoto(stmt ast.Stmt) (pos int, labelBool bool) {
	switch stmt := stmt.(type) {
	case *ast.BlockStmt:
		if len(stmt.List) == 1 {
			return findGoto(stmt.List[0])
		}
	case *ast.AssignStmt:
		if len(stmt.Lhs) == 1 && len(stmt.Rhs) == 1 {
			switch ident := stmt.Lhs[0].(type) {
			case *ast.Ident:
				if ident.Name == "gotoNext" { // end
					// execute
					i, err := strconv.Atoi(stmt.Rhs[0].(*ast.BasicLit).Value)
					if err != nil {
						panic(err)
					}
					return i, false
				} else if ident.Name == "_" { // start
					switch rhs := stmt.Rhs[0].(type) {
					case *ast.BinaryExpr:
						if rhs.Op == token.EQL {
							switch x := rhs.X.(type) {
							case *ast.Ident:
								if x.Name == "gotoNext" {
									// execute
									// execute
									i, err := strconv.Atoi(rhs.Y.(*ast.BasicLit).Value)
									if err != nil {
										panic(err)
									}
									return i, true
								}
							}
						}
					}
				}
			}
		}
	}
	return -1, false
}

func setJump(pos token.Pos) ast.Stmt {
	return assign(ast.NewIdent("_"), &ast.BinaryExpr{X: ast.NewIdent("gotoNext"), Y: createPos(pos), Op: token.EQL})
}

func define(ident *ast.Ident, value ast.Expr) ast.Stmt {
	return &ast.AssignStmt{Lhs: []ast.Expr{ident}, Tok: token.DEFINE, Rhs: []ast.Expr{value}}
}

func p(stmts []ast.Stmt) {
	for i, stmt := range stmts {
		fmt.Printf("/*%d*/ ", i)
		printer.Fprint(os.Stdout, token.NewFileSet(), stmt)
		fmt.Println()
	}
	fmt.Println()
	fmt.Println()
}
