package stdgo._internal.go.printer;
function _declToken(_decl:stdgo._internal.go.ast.Ast_decl.Decl):stdgo._internal.go.token.Token_token.Token {
        var _tok = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token);
        _tok = (0 : stdgo._internal.go.token.Token_token.Token);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1958"
        {
            final __type__ = _decl;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value);
                _tok = (@:checkr _d ?? throw "null pointer dereference").tok;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value);
                _tok = (71 : stdgo._internal.go.token.Token_token.Token);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1964"
        return _tok;
    }
