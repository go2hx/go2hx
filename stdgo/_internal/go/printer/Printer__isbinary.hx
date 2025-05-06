package stdgo._internal.go.printer;
function _isBinary(_expr:stdgo._internal.go.ast.Ast_expr.Expr):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_expr) : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>), _1 : false };
        }, __0 = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L821"
        return _ok;
    }
