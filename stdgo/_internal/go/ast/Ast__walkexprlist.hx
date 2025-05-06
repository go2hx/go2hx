package stdgo._internal.go.ast;
function _walkExprList(_v:stdgo._internal.go.ast.Ast_visitor.Visitor, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L25"
        for (__0 => _x in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/walk.go#L26"
            stdgo._internal.go.ast.Ast_walk.walk(_v, _x);
        };
    }
