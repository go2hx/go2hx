package stdgo._internal.go.ast;
function _filterSpec(_spec:stdgo._internal.go.ast.Ast_spec.Spec, _f:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L183"
        {
            final __type__ = _spec;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value);
                (@:checkr _s ?? throw "null pointer dereference").names = stdgo._internal.go.ast.Ast__filteridentlist._filterIdentList((@:checkr _s ?? throw "null pointer dereference").names, _f);
                (@:checkr _s ?? throw "null pointer dereference").values = stdgo._internal.go.ast.Ast__filterexprlist._filterExprList((@:checkr _s ?? throw "null pointer dereference").values, _f, _export);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L187"
                if ((((@:checkr _s ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L188"
                    if (_export) {
                        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L189"
                        stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _s ?? throw "null pointer dereference").type, _f, _export);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L191"
                    return true;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L194"
                if (_f((@:checkr (@:checkr _s ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__())) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L195"
                    if (_export) {
                        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L196"
                        stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _s ?? throw "null pointer dereference").type, _f, _export);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L198"
                    return true;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L200"
                if (!_export) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L206"
                    return stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _s ?? throw "null pointer dereference").type, _f, _export);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L209"
        return false;
    }
