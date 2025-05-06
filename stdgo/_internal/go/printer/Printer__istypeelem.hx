package stdgo._internal.go.printer;
function _isTypeElem(_x:stdgo._internal.go.ast.Ast_expr.Expr):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L427"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>))) {
                var _x:stdgo._internal.go.ast.Ast_expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L429"
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L431"
                return (@:checkr _x ?? throw "null pointer dereference").op == ((88 : stdgo._internal.go.token.Token_token.Token));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L433"
                return (stdgo._internal.go.printer.Printer__istypeelem._isTypeElem((@:checkr _x ?? throw "null pointer dereference").x) || stdgo._internal.go.printer.Printer__istypeelem._isTypeElem((@:checkr _x ?? throw "null pointer dereference").y) : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L435"
                return stdgo._internal.go.printer.Printer__istypeelem._isTypeElem((@:checkr _x ?? throw "null pointer dereference").x);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L437"
        return false;
    }
