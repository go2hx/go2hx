package stdgo._internal.go.doc;
function _matchDecl(_d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>, _f:stdgo._internal.go.doc.Doc_filter.Filter):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L25"
        for (__0 => _d in (@:checkr _d ?? throw "null pointer dereference").specs) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L26"
            {
                final __type__ = _d;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))) {
                    var _v:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L28"
                    for (__1 => _name in (@:checkr _v ?? throw "null pointer dereference").names) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L29"
                        if (_f((@:checkr _name ?? throw "null pointer dereference").name?.__copy__())) {
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L30"
                            return true;
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>))) {
                    var _v:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L34"
                    if (_f((@:checkr (@:checkr _v ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__())) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L35"
                        return true;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L39"
                    {
                        final __type__ = (@:checkr _v ?? throw "null pointer dereference").type;
                        if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__().value);
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L41"
                            if (stdgo._internal.go.doc.Doc__matchfields._matchFields((@:checkr _t ?? throw "null pointer dereference").fields, _f)) {
                                //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L42"
                                return true;
                            };
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__().value);
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L45"
                            if (stdgo._internal.go.doc.Doc__matchfields._matchFields((@:checkr _t ?? throw "null pointer dereference").methods, _f)) {
                                //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L46"
                                return true;
                            };
                        };
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L51"
        return false;
    }
