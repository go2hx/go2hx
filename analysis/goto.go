package analysis

import (
	"fmt"
	"go/ast"
	"go/printer"
	"go/token"
	"go/types"
	"os"
	"reflect"

	"golang.org/x/tools/go/ast/astutil"
)

type funcScope struct {
	lastJump *JumpData
	tempVars map[*ast.Object]tempVarData
	checker  *types.Checker
	labelMap map[string]labelData
	jumps    []*JumpData
	innerPos token.Pos
}

func newFuncScope(checker *types.Checker) *funcScope {
	fs := &funcScope{
		lastJump: &JumpData{stmts: []ast.Stmt{}},
		tempVars: map[*ast.Object]tempVarData{},
		labelMap: map[string]labelData{},
		jumps:    []*JumpData{},
		checker:  checker,
	}
	fs.jumps = append(fs.jumps, fs.lastJump)
	return fs
}

func (fs *funcScope) changeVars(expr ast.Expr) {
	astutil.Apply(expr, nil, func(c *astutil.Cursor) bool {
		switch expr := c.Node().(type) {
		case *ast.Ident:
			if data, ok := fs.tempVars[expr.Obj]; ok {
				expr.Name = data.Name
			}
		}
		return true
	})
}

func (fs *funcScope) elimGotos(stmt ast.Stmt) ast.Stmt {
	switch stmt := stmt.(type) {
	case *ast.BlockStmt:
		for i := range stmt.List {
			stmt.List[i] = fs.elimGotos(stmt.List[i])
		}
		return stmt
	case *ast.AssignStmt:
		for i, expr := range stmt.Lhs {
			switch expr := expr.(type) {
			case *ast.Ident:
				//fmt.Println(checker.TypeOf(expr).String())
				stmt.Lhs[i] = fs.tempVar(expr.Obj, fs.checker.TypeOf(expr))
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
	case *ast.ForStmt:
		lastJump := fs.lastJump
		// init
		startPos := stmt.For
		if stmt.Init != nil {
			startPos = stmt.Init.Pos()
			fs.makeJump(stmt.Init.Pos(), true).stmts = []ast.Stmt{fs.elimGotos(stmt.Init)}
		}
		if stmt.Cond == nil {
			stmt.Cond = ast.NewIdent("true")
		}
		condJump := fs.makeJump(stmt.For, true)
		fs.changeVars(stmt.Cond)
		// cond
		endPos := stmt.End()
		innerPosBool := fs.innerPos != 0
		if innerPosBool {
			endPos = fs.innerPos
		}
		condJump.stmts = []ast.Stmt{
			makeIf(stmt.Cond, []ast.Stmt{jumpTo(stmt.Body.Pos())}, []ast.Stmt{jumpTo(endPos)}),
		}
		// body
		bodyJump := fs.makeJump(stmt.Body.Pos(), false)
		post := fs.elimGotos(stmt.Post)
		fs.innerPos = stmt.End()
		bodyJump.stmts = fs.elimGotos(stmt.Body).(*ast.BlockStmt).List
		fs.innerPos = 0
		bodyJump.stmts = append(bodyJump.stmts, jumpTo(stmt.For), post)
		// next jump
		if !innerPosBool {
			nextJump := fs.makeJump(stmt.End(), false)
			_ = nextJump
		}
		//return &ast.BlockStmt{}
		fmt.Println("lastJumps")
		p(lastJump.stmts)
		return &ast.BlockStmt{
			List: []ast.Stmt{jumpTo(startPos), &ast.BranchStmt{Tok: token.CONTINUE}},
		}
	}
	// add to last jump
	fs.lastJump.stmts = append(fs.lastJump.stmts, stmt.(ast.Stmt))
	return stmt
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

func (fs *funcScope) makeJump(pos token.Pos, connectJump bool) *JumpData {
	if connectJump {
		fs.lastJump.stmts = append(fs.lastJump.stmts, jumpTo(pos))
	}
	fs.lastJump = &JumpData{stmts: []ast.Stmt{}, index: int(pos)}
	fs.jumps = append(fs.jumps, fs.lastJump)
	return fs.lastJump
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
		fn = fs.elimGotos(fn).(*ast.BlockStmt)
		// create switch stmt
		gotoNextIdent := ast.NewIdent("gotoNext")
		switchStmt := &ast.SwitchStmt{
			Tag:  gotoNextIdent,
			Body: &ast.BlockStmt{},
		}
		if len(fs.jumps) > 0 {
			fs.lastJump.stmts = append(fs.lastJump.stmts, &ast.BranchStmt{Tok: token.RETURN})
		}
		for _, jump := range fs.jumps {
			switchStmt.Body.List = append(switchStmt.Body.List, &ast.CaseClause{
				List: []ast.Expr{ast.NewIdent(fmt.Sprint(jump.index))},
				Body: jump.stmts,
			})
		}
		// set as function body
		fn.List = []ast.Stmt{}
		// add temp vars
		for _, data := range fs.tempVars {
			fn.List = append(fn.List, &ast.DeclStmt{
				Decl: &ast.GenDecl{
					Tok: token.VAR,
					Specs: []ast.Spec{
						&ast.ValueSpec{
							Names: []*ast.Ident{data.Ident},
							Type:  data.Type,
						},
					},
				},
			})
		}
		// define of gotoNext
		startExpr := ast.NewIdent("0")
		fn.List = append(fn.List, &ast.AssignStmt{
			Tok: token.DEFINE,
			Lhs: []ast.Expr{gotoNextIdent},
			Rhs: []ast.Expr{startExpr},
		})
		// for loop inside switch
		fn.List = append(fn.List, &ast.ForStmt{
			Body: &ast.BlockStmt{
				List: []ast.Stmt{
					//&ast.ExprStmt{X: &ast.CallExpr{Fun: ast.NewIdent("println"), Args: []ast.Expr{gotoNextIdent}}},
					switchStmt,
				},
			},
		})
	}
	// find labels

	// find gotos

	// deconstruct all control flows

	// turn funcs' blocks into looped switch statement

	// optional print out somewhere and run
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
