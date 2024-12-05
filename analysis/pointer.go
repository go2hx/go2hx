package analysis

import (
	"go/ast"
	"go/token"
	"go/types"
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
									ident2 := *ident
									ident2.Name += suffix
									c.InsertAfter(define(&ident2, &ast.UnaryExpr{Op: token.AND, X: ident}))
									identObjMap[ident.Obj] = true
								}
							}
						}
					}
				case *ast.DeclStmt:
					switch decl2 := stmt.Decl.(type) {
					case *ast.GenDecl:
						for _, spec := range decl2.Specs {
							switch stmt2 := spec.(type) {
							case *ast.ValueSpec:
								for _, ident := range stmt2.Names {
									if hasAddrObj(ident.Obj, decl.Body, stmt2) {
										ident2 := *ident
										ident2.Name += suffix
										c.InsertAfter(define(&ident2, &ast.UnaryExpr{Op: token.AND, X: ident}))
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
