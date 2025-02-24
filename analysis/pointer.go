package analysis

import (
	"go/ast"
	"go/token"
	"go/types"
	"slices"
	"strings"

	"golang.org/x/tools/go/ast/astutil"
)

func ParseLocalPointers(file *ast.File, checker *types.Checker, fset *token.FileSet) {
	const suffix = "__pointer__"
	for _, decl := range file.Decls {
		switch decl := decl.(type) {
		case *ast.FuncDecl:
			identObjMap := map[*ast.Object]bool{}
			// add ptr var
			astutil.Apply(decl.Body, nil, func(c *astutil.Cursor) bool {
				//switch
				switch stmt := c.Node().(type) {
				case *ast.AssignStmt:
					if stmt.Tok == token.DEFINE {
						for i := range stmt.Lhs {
							if ident, ok := stmt.Lhs[i].(*ast.Ident); ok {

								if strings.HasSuffix(ident.Name, "__pointer__") {

								} else if hasAddrObj(ident.Obj, decl.Body, stmt) {
									if !isValidPointer(checker.TypeOf(stmt.Lhs[i])) {
										continue
									}
									ident2 := *ident
									ident2.Name += suffix
									index := c.Index()
									ptrDefine := define(&ident2, &ast.UnaryExpr{Op: token.AND, X: ident})
									if index < 0 {
										switch parent := c.Parent().(type) {
										case *ast.IfStmt:
											parent.Body.List = append([]ast.Stmt{ptrDefine}, parent.Body.List...)
										case *ast.ForStmt:
											parent.Body.List = append([]ast.Stmt{ptrDefine}, parent.Body.List...)
										case *ast.SwitchStmt:
											for _, c := range parent.Body.List {
												c := c.(*ast.CaseClause)
												c.Body = append([]ast.Stmt{ptrDefine}, c.Body...)
											}
										case *ast.TypeSwitchStmt:
											for _, c := range parent.Body.List {
												c := c.(*ast.CaseClause)
												c.Body = append([]ast.Stmt{ptrDefine}, c.Body...)
											}
										}
									} else {
										c.InsertAfter(ptrDefine)
									}
									identObjMap[ident.Obj] = true
								}
							}
						}
					}
				case *ast.DeclStmt:
					switch decl2 := stmt.Decl.(type) {
					case *ast.GenDecl:
						for i, spec := range decl2.Specs {
							switch stmt2 := spec.(type) {
							case *ast.ValueSpec:
								if !isValidPointer(checker.TypeOf(stmt2.Type)) {
									continue
								}
								for _, ident := range stmt2.Names {
									_ = i
									if hasAddrObj(ident.Obj, decl.Body, stmt2) {
										var value ast.Expr = &ast.UnaryExpr{Op: token.AND, X: ast.NewIdent(ident.Name)}
										ident2 := *ident
										ident2.Name += suffix
										var s ast.Spec = &ast.ValueSpec{
											Names:  []*ast.Ident{&ident2},
											Values: []ast.Expr{value},
										}
										_ = s
										decl2.Specs = slices.Insert(decl2.Specs, i+1, s)
										//c.InsertAfter(define(&ident2, value))
										identObjMap[ident.Obj] = true
									}
								}
							}
						}
					}
				}
				return true
			})
			astutil.Apply(decl.Body, nil, func(c *astutil.Cursor) bool {
				//switch
				switch stmt := c.Node().(type) {
				case *ast.UnaryExpr:
					if stmt.Op == token.AND {
						if ident, ok := stmt.X.(*ast.Ident); ok {
							if identObjMap[ident.Obj] {
								skip := false
								if stmt, ok := c.Parent().(*ast.AssignStmt); ok {
									if len(stmt.Lhs) == 1 {
										if ident, ok := stmt.Lhs[0].(*ast.Ident); ok {
											if strings.HasSuffix(ident.Name, "__pointer__") {
												skip = true
											}
										}
									}
								}
								if !skip {
									ident2 := *ident
									ident2.Name += suffix
									checker.Types[&ident2] = checker.Types[stmt]
									c.Replace(&ident2)
								}
							}
						}
					}
				}
				return true
			})
		}
	}
}

func isValidPointer(t types.Type) bool {
	if t == nil {
		return false
	}
	switch t := t.(type) {
	case *types.Named:
		return isValidPointer(t.Underlying())
	case *types.Pointer:
		return false
	case *types.Basic:
		return true
	case *types.Signature:
		return true
	default:
		return false
	}
}

func hasAddrObj(obj *ast.Object, root ast.Node, parent ast.Node) bool {
	hasAddr := false
	astutil.Apply(root, nil, func(c *astutil.Cursor) bool {
		if hasAddr {
			return false
		}
		switch stmt := c.Node().(type) {
		case *ast.UnaryExpr:
			if stmt.Op == token.AND && c.Parent() != parent {
				if ident, ok := stmt.X.(*ast.Ident); ok {
					if ident.Obj == obj {
						hasAddr = true
						return false
					}
				}
			}
		}
		return true
	})
	return hasAddr
}
