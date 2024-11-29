package analysis

import (
	"go/ast"
	"go/token"
	"go/types"

	"golang.org/x/tools/go/ast/astutil"
)

func ParseLocalPointers(file *ast.File, checker *types.Checker, fset *token.FileSet) {
	const suffix = "__pointer__"
	for _, decl := range file.Decls {
		switch decl := decl.(type) {
		case *ast.FuncDecl:
			identObjMap := map[*ast.Object]ast.Expr{}
			astutil.Apply(decl.Body, nil, func(c *astutil.Cursor) bool {
				//switch
				switch stmt := c.Node().(type) {
				case *ast.UnaryExpr:
					if stmt.Op == token.AND {
						if ident, ok := stmt.X.(*ast.Ident); ok {
							stmt2 := *stmt // copy
							ident2 := *ident
							stmt2.X = &ident2
							identObjMap[ident.Obj] = &stmt2
							ident.Name += suffix
							c.Replace(ident)
						}
					}
				}
				return true
			})
			// second pass add ptr var
			astutil.Apply(decl.Body, nil, func(c *astutil.Cursor) bool {
				//switch
				switch stmt := c.Node().(type) {
				case *ast.AssignStmt:
					if stmt.Tok == token.DEFINE {
						for i := range stmt.Lhs {
							if ident, ok := stmt.Lhs[i].(*ast.Ident); ok {
								if value, ok := identObjMap[ident.Obj]; ok {
									ident2 := *ident
									ident2.Name += suffix
									c.InsertAfter(define(&ident2, value))
								}
							}
						}
					}
				case *ast.ValueSpec:
					for _, ident := range stmt.Names {
						if value, ok := identObjMap[ident.Obj]; ok {
							ident2 := *ident
							ident2.Name += suffix
							c.InsertAfter(define(&ident2, value))
						}
					}
				}
				return true
			})
		}
	}
}
