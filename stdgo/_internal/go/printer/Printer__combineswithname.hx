package stdgo._internal.go.printer;
function _combinesWithName(_x:stdgo._internal.go.ast.Ast_expr.Expr):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L410"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L413"
                return !stdgo._internal.go.printer.Printer__istypeelem._isTypeElem((@:checkr _x ?? throw "null pointer dereference").x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L415"
                return (stdgo._internal.go.printer.Printer__combineswithname._combinesWithName((@:checkr _x ?? throw "null pointer dereference").x) && !stdgo._internal.go.printer.Printer__istypeelem._isTypeElem((@:checkr _x ?? throw "null pointer dereference").y) : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L419"
                throw stdgo.Go.toInterface(("unexpected parenthesized expression" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L421"
        return false;
    }
