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
	labelMap         map[string]labelData
	nextJumpFunc     func(token.Pos)
	loopPost         ast.Stmt
	loopContinuePos  token.Pos
	loopBreakPosFunc func(token.Pos)
}

func (fs *funcScope) nextJumpRun(f func(token.Pos)) {
	fs.nextJumpFunc = f
}

func newFuncScope(checker *types.Checker) *funcScope {
	fs := &funcScope{
		tempVars: map[*ast.Object]tempVarData{},
		labelMap: map[string]labelData{},
		checker:  checker,
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
			if fs.nextJumpFunc != nil {
				fs.nextJumpFunc(stmt.List[i].Pos())
				fs.nextJumpFunc = nil
				newStmts = append(newStmts, jumpTo(stmt.List[i].Pos()))
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

		}
		return []ast.Stmt{stmt}
	case *ast.IfStmt:
		if stmt.Init != nil {
			stmt.Init = fs.markJumps(stmt.Init, scopeIndex)[0]
		}
		stmt.Body = fs.markJumps(stmt.Body, scopeIndex+1)[0].(*ast.BlockStmt)
		stmt.Body.List = append(stmt.Body.List, blank())
		if stmt.Else != nil {
			stmt.Else.(*ast.BlockStmt).List = append(stmt.Else.(*ast.BlockStmt).List, blank())
		}
		fs.nextJumpRun(func(pos token.Pos) {
			stmt.Body.List[len(stmt.Body.List)-1] = jumpTo(pos)
			if stmt.Else != nil {
				stmt.Else.(*ast.BlockStmt).List[len(stmt.Else.(*ast.BlockStmt).List)-1] = jumpTo(pos)
			}
		})
		return []ast.Stmt{
			stmt,
		}
	case *ast.ForStmt:
		fs.loopContinuePos = stmt.For
		fs.loopPost = stmt.Post
		stmt.Body = fs.markJumps(stmt.Body, scopeIndex+1)[0].(*ast.BlockStmt)
		init := blank()
		if stmt.Init != nil {
			init = fs.markJumps(stmt.Init, scopeIndex)[0]
		}
		body := fs.markJumps(stmt.Body, scopeIndex+1)[0].(*ast.BlockStmt)
		body.List = append(body.List, jumpTo(stmt.For))
		elseStmts := []ast.Stmt{blank()}
		ifStmt := makeIf(fs.changeVars(stmt.Cond), body.List, elseStmts)
		fs.nextJumpRun(func(pos token.Pos) {
			elseStmts[0] = jumpTo(pos)
			if fs.loopBreakPosFunc != nil {
				fs.loopBreakPosFunc(pos)
				fs.loopBreakPosFunc = nil
			}
		})
		return []ast.Stmt{
			init,
			jumpTo(stmt.For),
			setJump(stmt.For),
			ifStmt,
		}
	case *ast.AssignStmt:
		for i, expr := range stmt.Lhs {
			switch expr := expr.(type) {
			case *ast.Ident:
				if expr.Name == "_" || expr.Name == "gotoNext" {
					continue
				}
				//fmt.Println(checker.TypeOf(expr).String())
				fmt.Println("expr.Name:", expr.Name)
				if expr.Obj != nil {
					stmt.Lhs[i] = fs.tempVar(expr.Obj, fs.checker.TypeOf(expr))
				}
			default:
				panic("unknown expr lhs type: " + reflect.TypeOf(expr).String())
			}
		}
		for i := range stmt.Rhs {
			fs.changeVars(stmt.Rhs[i])
		}
		stmt.Tok = token.ASSIGN
	case *ast.ExprStmt:
		fs.changeVars(stmt.X)
	case *ast.IncDecStmt:
		fs.changeVars(stmt.X)
	case *ast.DeferStmt:
		fs.changeVars(stmt.Call)
	}
	return []ast.Stmt{stmt}
}

func blank() ast.Stmt {
	return assign(ast.NewIdent("_"), ast.NewIdent("0"))
}

func jumpTo(pos token.Pos) ast.Stmt {
	return assign(ast.NewIdent("gotoNext"), ast.NewIdent(fmt.Sprint(int(pos))))
}
func makeIf(cond ast.Expr, body []ast.Stmt, elseStmts []ast.Stmt) ast.Stmt {
	return &ast.IfStmt{Cond: cond, Body: &ast.BlockStmt{List: body}, Else: &ast.BlockStmt{List: elseStmts}}
}

func assign(ident *ast.Ident, value ast.Expr) ast.Stmt {
	return &ast.AssignStmt{Lhs: []ast.Expr{ident}, Tok: token.ASSIGN, Rhs: []ast.Expr{value}}
}

func (fs *funcScope) tempVar(nameObj *ast.Object, t types.Type) *ast.Ident {
	if data, ok := fs.tempVars[nameObj]; ok {
		return data.Ident
	}
	ident := ast.NewIdent(nameObj.Name + "_" + fmt.Sprint(int(nameObj.Pos())))
	fs.tempVars[nameObj] = tempVarData{Ident: ident, Type: typeToExpr(t)}
	return ident
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
				// set labelMap based on labelName
				switch parent := c.Parent().(type) {
				case *ast.BlockStmt:
					fs.labelMap[labelName] = labelData{
						index: c.Index(),
						stmts: parent.List,
					}
				case *ast.LabeledStmt:
					parentLabelData := fs.labelMap[parent.Label.Name]
					fs.labelMap[labelName] = labelData{
						index: parentLabelData.index,
						stmts: parentLabelData.stmts,
					}
					return true
				case *ast.ForStmt, *ast.RangeStmt:
					return true
				}
			}
			return false
		}, nil)
		// temp vars and flatten control flow
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
			astutil.Apply(fn, func(c *astutil.Cursor) bool {
				fmt.Println(reflect.TypeOf(c.Node()).String())
				switch stmt := c.Node().(type) {
				case *ast.BlockStmt:
					//newStmts := []ast.Stmt{}
					list := stmt.List
					startPos := 0
					for i, stmt := range list {
						pos, startBool := findGoto(stmt)
						jumps[pos] = append(jumps[pos], stmt)
						if pos == -1 {
							return true
						}
						if startBool {
							startPos = i
						} else {
							jumps[pos] = list[startPos:i]
						}
						_ = stmt
					}
					//stmt.List = newStmts
				}
				return true
			}, nil)
			//jumps[int(fn.Pos())] = fn.List
			for index, stmts := range jumps {
				switchStmt.Body.List = append(switchStmt.Body.List, &ast.CaseClause{
					List: []ast.Expr{ast.NewIdent(fmt.Sprint(index))},
					Body: stmts,
				})
			}
			fn.List = []ast.Stmt{switchStmt}
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

func findGoto(stmt ast.Stmt) (pos int, startBool bool) {
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
