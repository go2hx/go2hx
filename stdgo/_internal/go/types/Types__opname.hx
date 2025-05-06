package stdgo._internal.go.types;
function _opName(_e:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L90"
        {
            final __type__ = _e;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>))) {
                var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L92"
                if ((((@:checkr _e ?? throw "null pointer dereference").op : stdgo.GoInt) < (stdgo._internal.go.types.Types__op2str2._op2str2.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L93"
                    return stdgo._internal.go.types.Types__op2str2._op2str2[((@:checkr _e ?? throw "null pointer dereference").op : stdgo.GoInt)]?.__copy__();
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>))) {
                var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L96"
                if ((((@:checkr _e ?? throw "null pointer dereference").op : stdgo.GoInt) < (stdgo._internal.go.types.Types__op2str1._op2str1.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L97"
                    return stdgo._internal.go.types.Types__op2str1._op2str1[((@:checkr _e ?? throw "null pointer dereference").op : stdgo.GoInt)]?.__copy__();
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/expr.go#L100"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
