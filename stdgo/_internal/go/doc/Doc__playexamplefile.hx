package stdgo._internal.go.doc;
function _playExampleFile(_file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> {
        var _comments = (@:checkr _file ?? throw "null pointer dereference").comments;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L546"
        if ((((_comments.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.strings.Strings_hasprefix.hasPrefix(_comments[(0 : stdgo.GoInt)].text()?.__copy__(), ("Copyright" : stdgo.GoString)) : Bool)) {
            _comments = (_comments.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        };
        var _decls:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L552"
        for (__0 => _d in (@:checkr _file ?? throw "null pointer dereference").decls) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L553"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_d) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>), _1 : false };
                }, _f = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && stdgo._internal.go.doc.Doc__istest._isTest((@:checkr (@:checkr _f ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__(), ("Example" : stdgo.GoString)) : Bool)) {
                    var _newF = ((_f : stdgo._internal.go.ast.Ast_funcdecl.FuncDecl)?.__copy__() : stdgo._internal.go.ast.Ast_funcdecl.FuncDecl);
                    _newF.name = stdgo._internal.go.ast.Ast_newident.newIdent(("main" : stdgo.GoString));
                    {
                        var __tmp__ = stdgo._internal.go.doc.Doc__stripoutputcomment._stripOutputComment((@:checkr _f ?? throw "null pointer dereference").body, _comments);
                        _newF.body = @:tmpset0 __tmp__._0;
                        _comments = @:tmpset0 __tmp__._1;
                    };
                    _d = stdgo.Go.asInterface((stdgo.Go.setRef(_newF) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>));
                };
            };
            _decls = (_decls.__append__(_d) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
        };
        var _f = ((_file : stdgo._internal.go.ast.Ast_file.File)?.__copy__() : stdgo._internal.go.ast.Ast_file.File);
        _f.name = stdgo._internal.go.ast.Ast_newident.newIdent(("main" : stdgo.GoString));
        _f.decls = _decls;
        _f.comments = _comments;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L568"
        return (stdgo.Go.setRef(_f) : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
    }
