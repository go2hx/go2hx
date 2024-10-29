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
	"strconv"

	"golang.org/x/tools/go/ast/astutil"
)

type funcScope struct {
	tempVars         map[*ast.Object]tempVarData
	checker          *types.Checker
	labelMap         map[string]token.Pos
	labelMapLoop     map[string]*ast.ForStmt
	loopLabelMap     map[token.Pos]string
	nextJumpFunc     []func(token.Pos)
	loopPost         ast.Stmt
	loopContinuePos  token.Pos
	loopBreakPosFunc func(token.Pos)
}

func (fs *funcScope) nextJumpRun(f func(token.Pos)) {
	fs.nextJumpFunc = append(fs.nextJumpFunc, f)
}

func newFuncScope(checker *types.Checker) *funcScope {
	fs := &funcScope{
		tempVars:     map[*ast.Object]tempVarData{},
		labelMap:     map[string]token.Pos{},
		loopLabelMap: map[token.Pos]string{},
		labelMapLoop: map[string]*ast.ForStmt{},
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

func (fs *funcScope) markJumps(stmt ast.Stmt, scopeIndex int) []ast.Stmt {
	switch stmt := stmt.(type) {
	case *ast.BlockStmt:
		newStmts := []ast.Stmt{} //make([]ast.Stmt, len(stmt.List))
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
			newStmts = append(newStmts, fs.markJumps(stmt.List[i], scopeIndex+1)...)
		}
		stmt.List = newStmts
		return []ast.Stmt{stmt}
	case *ast.BranchStmt:
		if stmt.Label == nil {
			switch stmt.Tok {
			case token.BREAK:
				stmts := []ast.Stmt{jumpTo(0)}
				fs.loopBreakPosFunc = func(pos token.Pos) {
					stmts[0].(*ast.AssignStmt).Rhs[0] = ast.NewIdent(fmt.Sprint(pos))
				}
				return stmts
			case token.CONTINUE:
				post := blank()
				if fs.loopPost != nil {
					post = fs.loopPost
				}
				return []ast.Stmt{post, jumpTo(fs.loopContinuePos)}
			}
		} else {
			switch stmt.Tok {
			case token.GOTO:
				pos := fs.labelMap[stmt.Label.Name]
				return []ast.Stmt{jumpTo(pos)}
			case token.BREAK:
				forStmt := fs.labelMapLoop[stmt.Label.Name]
				return []ast.Stmt{
					assign(ast.NewIdent(stmt.Label.Name+"Break"), ast.NewIdent("true")),
					jumpTo(forStmt.For),
				}
			case token.CONTINUE:
				forStmt := fs.labelMapLoop[stmt.Label.Name]
				return []ast.Stmt{
					forStmt.Post,
					jumpTo(forStmt.For),
				}
			}
		}
		return []ast.Stmt{stmt}
	case *ast.SwitchStmt:
		if stmt.Init != nil {
			stmt.Init = fs.markJumps(stmt.Init, scopeIndex)[0]
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
			for j := range stmt.Body.List[i].(*ast.CaseClause).Body {
				newStmts = append(newStmts, fs.markJumps(stmt.Body.List[i].(*ast.CaseClause).Body[j], scopeIndex+1)...)
			}
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
		return []ast.Stmt{stmt}
	case *ast.IfStmt:
		if stmt.Init != nil {
			stmt.Init = fs.markJumps(stmt.Init, scopeIndex)[0]
		}
		stmt.Cond = fs.changeVars(stmt.Cond)
		stmt.Body = fs.markJumps(stmt.Body, scopeIndex+1)[0].(*ast.BlockStmt)
		if stmt.Else == nil {
			stmt.Else = &ast.BlockStmt{List: []ast.Stmt{}, Lbrace: stmt.End()}
		} else {
			nextJumpFunc := fs.nextJumpFunc
			fs.nextJumpFunc = make([]func(token.Pos), 0)
			stmt.Else = fs.markJumps(stmt.Else, scopeIndex)[0]
			fs.nextJumpFunc = append(fs.nextJumpFunc, nextJumpFunc...)
			pos := stmt.Else.(*ast.BlockStmt).Pos()
			stmt.Else.(*ast.BlockStmt).List = append([]ast.Stmt{jumpTo(pos), setJump(pos)}, stmt.Else.(*ast.BlockStmt).List...)
		}
		stmt.Body.List = append([]ast.Stmt{jumpTo(stmt.Body.Pos()), setJump(stmt.Body.Pos())}, stmt.Body.List...)
		stmt.Else.(*ast.BlockStmt).List = append(stmt.Else.(*ast.BlockStmt).List, blank())
		stmt.Body.List = append(stmt.Body.List, blank())
		fs.nextJumpRun(func(pos token.Pos) {
			stmt.Body.List[len(stmt.Body.List)-1] = jumpTo(pos)
			//stmt.Else.(*ast.BlockStmt).List = []ast.Stmt{}
			stmt.Else.(*ast.BlockStmt).List[len(stmt.Else.(*ast.BlockStmt).List)-1] = jumpTo(pos)
		})
		return []ast.Stmt{
			stmt,
		}
	case *ast.ForStmt:
		fs.loopContinuePos = stmt.For
		init := []ast.Stmt{blank()}
		if stmt.Init != nil {
			init = fs.markJumps(stmt.Init, scopeIndex)
		}
		if labelName, exists := fs.loopLabelMap[stmt.Pos()]; exists {
			breakName := labelName + "Break"
			obj := ast.NewObj(ast.Var, breakName)
			fs.tempVars[obj] = tempVarData{ast.NewIdent(breakName), ast.NewIdent("bool")}
			init = append(init, assign(ast.NewIdent(breakName), ast.NewIdent("false")))
			stmt.Cond = &ast.BinaryExpr{X: &ast.UnaryExpr{X: ast.NewIdent(breakName), Op: token.NOT}, Y: stmt.Cond, Op: token.LAND}
		}
		if stmt.Post != nil {
			stmt.Body.List = append(stmt.Body.List, stmt.Post)
			fs.loopPost = fs.markJumps(stmt.Post, scopeIndex)[0]
		} else {
			fs.loopPost = nil
		}
		stmt.Body = fs.markJumps(stmt.Body, scopeIndex+1)[0].(*ast.BlockStmt)
		/*if fs.loopPost != nil {
			stmt.Body.List = append(stmt.Body.List, fs.loopPost)
		}*/
		stmt.Body.List = append([]ast.Stmt{jumpTo(stmt.Body.Pos()), setJump(stmt.Body.Pos())}, stmt.Body.List...)
		stmt.Body.List = append(stmt.Body.List, jumpTo(stmt.For))
		var ifStmt *ast.IfStmt = makeIf(fs.changeVars(stmt.Cond), stmt.Body.List, []ast.Stmt{blank()})
		fs.nextJumpRun(func(pos token.Pos) {
			ifStmt.Else.(*ast.BlockStmt).List[0] = jumpTo(pos)
			if fs.loopBreakPosFunc != nil {
				fs.loopBreakPosFunc(pos)
				fs.loopBreakPosFunc = nil
			}
		})
		return append(init,
			jumpTo(stmt.For),
			setJump(stmt.For),
			ifStmt,
		)
	case *ast.DeclStmt:
		switch decl := stmt.Decl.(type) {
		case *ast.GenDecl:
			isVar := false
			stmts := []ast.Stmt{}
			for _, spec := range decl.Specs {
				switch spec := spec.(type) {
				case *ast.ValueSpec:
					isVar = true
					names := []ast.Expr{}
					for i, name := range spec.Names {
						ident := fs.tempVarWithTypeExpr(name.Obj, spec.Type)
						if len(spec.Values) > i {
							names = append(names, ident)
						}
					}
					for i := range spec.Values {
						spec.Values[i] = fs.changeVars(spec.Values[i])
					}
					if len(names) > 0 {
						stmts = append(stmts, &ast.AssignStmt{Lhs: names, Rhs: spec.Values, Tok: token.ASSIGN})
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
						stmt.Lhs[i] = fs.tempVar(expr.Obj, fs.checker.TypeOf(expr))
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
	case *ast.IncDecStmt:
		fs.changeVars(stmt.X)
	case *ast.DeferStmt:
		fs.changeVars(stmt.Call)
	case *ast.LabeledStmt:
		return append([]ast.Stmt{jumpTo(stmt.Label.Pos()), setJump(stmt.Label.Pos())}, fs.markJumps(stmt.Stmt, scopeIndex)...)
	}
	return []ast.Stmt{stmt}
}

func blank() ast.Stmt {
	return assign(ast.NewIdent("_"), ast.NewIdent("0"))
}

func jumpTo(pos token.Pos) ast.Stmt {
	return assign(ast.NewIdent("gotoNext"), ast.NewIdent(fmt.Sprint(int(pos))))
}
func makeIf(cond ast.Expr, body []ast.Stmt, elseStmts []ast.Stmt) *ast.IfStmt {
	return &ast.IfStmt{Cond: cond, Body: &ast.BlockStmt{List: body}, Else: &ast.BlockStmt{List: elseStmts}}
}

func assign(ident *ast.Ident, value ast.Expr) ast.Stmt {
	return &ast.AssignStmt{Lhs: []ast.Expr{ident}, Tok: token.ASSIGN, Rhs: []ast.Expr{value}}
}

func (fs *funcScope) tempVarWithTypeExpr(nameObj *ast.Object, t ast.Expr) *ast.Ident {
	if data, ok := fs.tempVars[nameObj]; ok {
		return data.Ident
	}
	ident := ast.NewIdent(nameObj.Name + "_" + fmt.Sprint(int(nameObj.Pos())))
	fs.tempVars[nameObj] = tempVarData{Ident: ident, Type: t}
	return ident
}

func (fs *funcScope) tempVar(nameObj *ast.Object, t types.Type) *ast.Ident {
	return fs.tempVarWithTypeExpr(nameObj, typeToExpr(t))
}

type labelData struct {
	index int
	stmts []ast.Stmt
}

type JumpData struct {
	index int
	stmts []ast.Stmt
}

func (j *JumpData) connect(pos token.Pos) {
	j.stmts = append(j.stmts, jumpTo(pos))
}

type tempVarData struct {
	*ast.Ident
	Type ast.Expr
}

func typeToExpr(t types.Type) ast.Expr {
	switch t := t.(type) {
	case *types.Basic:
		return ast.NewIdent(t.Name())
	default:
		panic("typeToExpr unsupported type: " + reflect.TypeOf(t).String())
	}
}

func ParseLocalGotos(file *ast.File, checker *types.Checker) {
	// select functions that have gotos in them
	fns := []*ast.BlockStmt{}
	for _, decl := range file.Decls {
		switch decl := decl.(type) {
		case *ast.FuncDecl:
			// TODO: create check later
			fns = append(fns, decl.Body)
		}
	}
	for _, fn := range fns {
		fs := newFuncScope(checker)
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
				case *ast.RangeStmt:
				case *ast.ForStmt:
					fs.labelMapLoop[labelName] = child
					fs.loopLabelMap[child.Pos()] = labelName
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
		fn = fs.markJumps(fn, 0)[0].(*ast.BlockStmt)
		// create switch stmt
		gotoNextIdent := ast.NewIdent("gotoNext")
		switchStmt := &ast.SwitchStmt{
			Tag:  gotoNextIdent,
			Body: &ast.BlockStmt{},
		}
		_ = switchStmt
		secondPass := true
		if secondPass {
			buf := bytes.NewBufferString("")
			printer.Fprint(buf, token.NewFileSet(), fn)
			file.Doc = &ast.CommentGroup{List: []*ast.Comment{&ast.Comment{Text: "/*" + buf.String() + "*/"}}}
			jumps := map[int][]ast.Stmt{
				0: []ast.Stmt{},
			}
			astutil.Apply(fn, nil, func(c *astutil.Cursor) bool {
				//fmt.Println(reflect.TypeOf(c.Node()).String())
				jumpPos := -1
				if c.Node() == fn {
					jumpPos = 0
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
			for index, stmts := range jumps {
				switchStmt.Body.List = append(switchStmt.Body.List, &ast.CaseClause{
					List: []ast.Expr{ast.NewIdent(fmt.Sprint(index))},
					Body: stmts,
				})
			}
			fn.List = []ast.Stmt{&ast.ForStmt{Cond: &ast.BinaryExpr{X: gotoNextIdent, Op: token.NEQ, Y: ast.NewIdent("-1")}, Body: &ast.BlockStmt{List: []ast.Stmt{
				//&ast.ExprStmt{X: &ast.CallExpr{Fun: ast.NewIdent("println"), Args: []ast.Expr{ast.NewIdent("gotoNext")}}},
				switchStmt,
			}}}}
		}
		// set as function body
		//fn.List = []ast.Stmt{}
		// define of gotoNext
		startExpr := ast.NewIdent("0")
		fn.List = append([]ast.Stmt{&ast.AssignStmt{
			Tok: token.DEFINE,
			Lhs: []ast.Expr{gotoNextIdent},
			Rhs: []ast.Expr{startExpr},
		}, setJump(0)}, fn.List...)

		// add temp vars
		for _, data := range fs.tempVars {
			fn.List = append([]ast.Stmt{&ast.DeclStmt{
				Decl: &ast.GenDecl{
					Tok: token.VAR,
					Specs: []ast.Spec{
						&ast.ValueSpec{
							Names: []*ast.Ident{data.Ident},
							Type:  data.Type,
						},
					},
				},
			}}, fn.List...)
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

func addToBlock(list []ast.Stmt, jumpPos int, jumps map[int][]ast.Stmt) []ast.Stmt {
	newStmts := []ast.Stmt{}
	addToBlock := true
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
		if addToBlock {
			newStmts = append(newStmts, stmt)
		}
		switch stmt.(type) {
		case *ast.IfStmt, *ast.SwitchStmt:
			jumpPos = -1
			addToBlock = false
		}
		if pos != -1 && !labelBool {
			jumpPos = -1
			addToBlock = false
		}
	}
	return newStmts
}

func findGoto(stmt ast.Stmt) (pos int, labelBool bool) {
	switch stmt := stmt.(type) {
	case *ast.AssignStmt:
		if len(stmt.Lhs) == 1 && len(stmt.Rhs) == 1 {
			switch ident := stmt.Lhs[0].(type) {
			case *ast.Ident:
				if ident.Name == "gotoNext" { // end
					// execute
					i, err := strconv.Atoi(stmt.Rhs[0].(*ast.Ident).Name)
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
									i, err := strconv.Atoi(rhs.Y.(*ast.Ident).Name)
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
	return assign(ast.NewIdent("_"), &ast.BinaryExpr{X: ast.NewIdent("gotoNext"), Y: ast.NewIdent(fmt.Sprint(pos)), Op: token.EQL})
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
