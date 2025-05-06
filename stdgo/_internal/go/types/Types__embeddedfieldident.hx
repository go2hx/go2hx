package stdgo._internal.go.types;
function _embeddedFieldIdent(_e:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> {
        //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L181"
        {
            final __type__ = _e;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L183"
                return _e;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>))) {
                var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L186"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").x) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>), _1 : false };
                    }, __0 = __tmp__._0, _ok = __tmp__._1;
                    if (!_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L187"
                        return stdgo._internal.go.types.Types__embeddedfieldident._embeddedFieldIdent((@:checkr _e ?? throw "null pointer dereference").x);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>))) {
                var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L190"
                return (@:checkr _e ?? throw "null pointer dereference").sel;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>))) {
                var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L192"
                return stdgo._internal.go.types.Types__embeddedfieldident._embeddedFieldIdent((@:checkr _e ?? throw "null pointer dereference").x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>))) {
                var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L194"
                return stdgo._internal.go.types.Types__embeddedfieldident._embeddedFieldIdent((@:checkr _e ?? throw "null pointer dereference").x);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L196"
        return null;
    }
