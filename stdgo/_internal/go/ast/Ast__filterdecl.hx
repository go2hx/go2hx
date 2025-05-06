package stdgo._internal.go.ast;
function _filterDecl(_decl:stdgo._internal.go.ast.Ast_decl.Decl, _f:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L234"
        {
            final __type__ = _decl;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value);
                (@:checkr _d ?? throw "null pointer dereference").specs = stdgo._internal.go.ast.Ast__filterspeclist._filterSpecList((@:checkr _d ?? throw "null pointer dereference").specs, _f, _export);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L237"
                return (((@:checkr _d ?? throw "null pointer dereference").specs.length) > (0 : stdgo.GoInt) : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L239"
                return _f((@:checkr (@:checkr _d ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L241"
        return false;
    }
