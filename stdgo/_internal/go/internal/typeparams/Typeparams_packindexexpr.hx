package stdgo._internal.go.internal.typeparams;
function packIndexExpr(_x:stdgo._internal.go.ast.Ast_expr.Expr, _lbrack:stdgo._internal.go.token.Token_pos.Pos, _exprs:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, _rbrack:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.ast.Ast_expr.Expr {
        //"file:///home/runner/.go/go1.21.3/src/go/internal/typeparams/typeparams.go#L13"
        {
            final __value__ = (_exprs.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/typeparams/typeparams.go#L15"
                throw stdgo.Go.toInterface(("internal error: PackIndexExpr with empty expr slice" : stdgo.GoString));
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/typeparams/typeparams.go#L17"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, lbrack : _lbrack, index : _exprs[(0 : stdgo.GoInt)], rbrack : _rbrack } : stdgo._internal.go.ast.Ast_indexexpr.IndexExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>));
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/typeparams/typeparams.go#L24"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, lbrack : _lbrack, indices : _exprs, rbrack : _rbrack } : stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>));
            };
        };
    }
