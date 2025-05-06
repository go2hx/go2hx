package stdgo._internal.go.types;
function _unparen(_e:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        //"file:///home/runner/.go/go1.21.3/src/go/types/builtins.go#L1039"
        while (true) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_e) : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>), _1 : false };
            }, _p = __tmp__._0, _ok = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/types/builtins.go#L1041"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/builtins.go#L1042"
                return _e;
            };
            _e = (@:checkr _p ?? throw "null pointer dereference").x;
        };
    }
