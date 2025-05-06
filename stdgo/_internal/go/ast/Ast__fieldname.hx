package stdgo._internal.go.ast;
function _fieldName(_x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L61"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L63"
                return _t;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L65"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference").x) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                    }, __0 = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L66"
                        return (@:checkr _t ?? throw "null pointer dereference").sel;
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L69"
                return stdgo._internal.go.ast.Ast__fieldname._fieldName((@:checkr _t ?? throw "null pointer dereference").x);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L71"
        return null;
    }
