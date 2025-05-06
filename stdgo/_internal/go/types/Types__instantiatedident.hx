package stdgo._internal.go.types;
function _instantiatedIdent(_expr:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> {
        var _selOrIdent:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
        //"file:///home/runner/.go/go1.21.3/src/go/types/check.go#L580"
        {
            final __type__ = _expr;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>))) {
                var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__().value);
                _selOrIdent = (@:checkr _e ?? throw "null pointer dereference").x;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>))) {
                var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__().value);
                _selOrIdent = (@:checkr _e ?? throw "null pointer dereference").x;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                var _e:stdgo._internal.go.ast.Ast_expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : cast __type__;
                _selOrIdent = _e;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/check.go#L588"
        {
            final __type__ = _selOrIdent;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/check.go#L590"
                return _x;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/check.go#L592"
                return (@:checkr _x ?? throw "null pointer dereference").sel;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/check.go#L594"
        throw stdgo.Go.toInterface(("instantiated ident not found" : stdgo.GoString));
    }
