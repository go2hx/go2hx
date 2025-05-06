package stdgo._internal.go.ast;
function _filterExprList(_list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, _filter:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> {
        var _j = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L119"
        for (__0 => _exp in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L120"
            {
                final __type__ = _exp;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L122"
                    stdgo._internal.go.ast.Ast__filtercompositelit._filterCompositeLit(_x, _filter, _export);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L124"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference").key) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                        }, _x = __tmp__._0, _ok = __tmp__._1;
                        if ((_ok && !_filter((@:checkr _x ?? throw "null pointer dereference").name?.__copy__()) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L125"
                            continue;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L127"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference").value) : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>), _1 : false };
                        }, _x = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L128"
                            stdgo._internal.go.ast.Ast__filtercompositelit._filterCompositeLit(_x, _filter, _export);
                        };
                    };
                };
            };
            _list[(_j : stdgo.GoInt)] = _exp;
            //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L132"
            _j++;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L134"
        return (_list.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
    }
