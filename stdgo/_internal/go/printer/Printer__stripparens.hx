package stdgo._internal.go.printer;
function _stripParens(_x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1249"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>), _1 : false };
            }, _px = __tmp__._0, _strip = __tmp__._1;
            if (_strip) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1253"
                stdgo._internal.go.ast.Ast_inspect.inspect((@:checkr _px ?? throw "null pointer dereference").x, function(_node:stdgo._internal.go.ast.Ast_node.Node):Bool {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1254"
                    {
                        final __type__ = _node;
                        if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>))) {
                            var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__().value);
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1257"
                            return false;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>))) {
                            var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__().value);
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1259"
                            if (stdgo._internal.go.printer.Printer__istypename._isTypeName((@:checkr _x ?? throw "null pointer dereference").type)) {
                                _strip = false;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1262"
                            return false;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1265"
                    return true;
                });
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1267"
                if (_strip) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1268"
                    return stdgo._internal.go.printer.Printer__stripparens._stripParens((@:checkr _px ?? throw "null pointer dereference").x);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1271"
        return _x;
    }
