package stdgo._internal.go.doc;
function _playExample(_file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>, _f:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>):stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> {
        var _body = (@:checkr _f ?? throw "null pointer dereference").body;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L155"
        if (!stdgo._internal.strings.Strings_hassuffix.hasSuffix((@:checkr (@:checkr _file ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__(), ("_test" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L158"
            return null;
        };
        var _topDecls = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>, stdgo._internal.go.ast.Ast_decl.Decl>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>, stdgo._internal.go.ast.Ast_decl.Decl>);
        var _typMethods = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L165"
        for (__0 => _decl in (@:checkr _file ?? throw "null pointer dereference").decls) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L166"
            {
                final __type__ = _decl;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))) {
                    var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L168"
                    if (({
                        final value = (@:checkr _d ?? throw "null pointer dereference").recv;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        _topDecls[(@:checkr (@:checkr _d ?? throw "null pointer dereference").name ?? throw "null pointer dereference").obj] = stdgo.Go.asInterface(_d);
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L171"
                        if (((@:checkr (@:checkr _d ?? throw "null pointer dereference").recv ?? throw "null pointer dereference").list.length) == ((1 : stdgo.GoInt))) {
                            var _t = ((@:checkr (@:checkr (@:checkr _d ?? throw "null pointer dereference").recv ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").type : stdgo._internal.go.ast.Ast_expr.Expr);
                            var __tmp__ = stdgo._internal.go.doc.Doc__basetypename._baseTypeName(_t), _tname:stdgo.GoString = __tmp__._0, __1:Bool = __tmp__._1;
                            _typMethods[_tname] = ((_typMethods[_tname] ?? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>)).__append__(stdgo.Go.asInterface(_d)) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                    var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L178"
                    for (__1 => _spec in (@:checkr _d ?? throw "null pointer dereference").specs) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L179"
                        {
                            final __type__ = _spec;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>))) {
                                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value);
                                _topDecls[(@:checkr (@:checkr _s ?? throw "null pointer dereference").name ?? throw "null pointer dereference").obj] = stdgo.Go.asInterface(_d);
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))) {
                                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value);
                                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L183"
                                for (__2 => _name in (@:checkr _s ?? throw "null pointer dereference").names) {
                                    _topDecls[(@:checkr _name ?? throw "null pointer dereference").obj] = stdgo.Go.asInterface(_d);
                                };
                            };
                        };
                    };
                };
            };
        };
        var __tmp__ = stdgo._internal.go.doc.Doc__finddeclsandunresolved._findDeclsAndUnresolved(stdgo.Go.asInterface(_body), _topDecls, _typMethods), _depDecls:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl> = __tmp__._0, _unresolved:stdgo.GoMap<stdgo.GoString, Bool> = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L195"
        for (_n => _ in _unresolved) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L196"
            if ((((stdgo._internal.go.doc.Doc__predeclaredtypes._predeclaredTypes[_n] ?? false) || (stdgo._internal.go.doc.Doc__predeclaredconstants._predeclaredConstants[_n] ?? false) : Bool) || (stdgo._internal.go.doc.Doc__predeclaredfuncs._predeclaredFuncs[_n] ?? false) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L197"
                if (_unresolved != null) _unresolved.__remove__(_n);
            };
        };
        var _namedImports:stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
        var _blankImports:stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
        var _groupStarts = stdgo._internal.go.doc.Doc__findimportgroupstarts._findImportGroupStarts((@:checkr _file ?? throw "null pointer dereference").imports);
        var _groupStart = function(_s:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>):stdgo._internal.go.token.Token_pos.Pos {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L212"
            for (_i => _start in _groupStarts) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L213"
                if (((@:checkr (@:checkr _s ?? throw "null pointer dereference").path ?? throw "null pointer dereference").valuePos < _start : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L214"
                    return _groupStarts[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)];
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L217"
            return _groupStarts[((_groupStarts.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L220"
        for (__1 => _s in (@:checkr _file ?? throw "null pointer dereference").imports) {
            var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote((@:checkr (@:checkr _s ?? throw "null pointer dereference").path ?? throw "null pointer dereference").value?.__copy__()), _p:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L222"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L223"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L225"
            if (_p == (("syscall/js" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L228"
                return null;
            };
            var _n = (stdgo._internal.path.Path_base.base(_p?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L231"
            if (({
                final value = (@:checkr _s ?? throw "null pointer dereference").name;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _n = (@:checkr (@:checkr _s ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L233"
                {
                    final __value__ = _n;
                    if (__value__ == (("_" : stdgo.GoString))) {
                        _blankImports = (_blankImports.__append__(stdgo.Go.asInterface(_s)) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L236"
                        continue;
                    } else if (__value__ == (("." : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L239"
                        return null;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L242"
            if ((_unresolved[_n] ?? false)) {
                var _spec = ((_s : stdgo._internal.go.ast.Ast_importspec.ImportSpec)?.__copy__() : stdgo._internal.go.ast.Ast_importspec.ImportSpec);
                var _path = (((@:checkr _s ?? throw "null pointer dereference").path : stdgo._internal.go.ast.Ast_basiclit.BasicLit)?.__copy__() : stdgo._internal.go.ast.Ast_basiclit.BasicLit);
                _spec.path = (stdgo.Go.setRef(_path) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
                (@:checkr _spec.path ?? throw "null pointer dereference").valuePos = _groupStart((stdgo.Go.setRef(_spec) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>));
                _namedImports = (_namedImports.__append__(stdgo.Go.asInterface((stdgo.Go.setRef(_spec) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>))) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L249"
                if (_unresolved != null) _unresolved.__remove__(_n);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L255"
        if (((_unresolved.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L256"
            return null;
        };
        var _comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L261"
        for (__2 => _s in _blankImports) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L262"
            {
                var _c = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) ?? throw "null pointer dereference").doc;
                if (({
                    final value = _c;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    _comments = (_comments.__append__(_c) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L268"
        for (__3 => _c in (@:checkr _file ?? throw "null pointer dereference").comments) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L269"
            if (((_body.pos() <= _c.pos() : Bool) && (_c.end() <= _body.end() : Bool) : Bool)) {
                _comments = (_comments.__append__(_c) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
            };
        };
        {
            var __tmp__ = stdgo._internal.go.doc.Doc__stripoutputcomment._stripOutputComment(_body, _comments);
            _body = @:tmpset0 __tmp__._0;
            _comments = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L279"
        for (__4 => _d in _depDecls) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L280"
            {
                final __type__ = _d;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                    var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L282"
                    if (({
                        final value = (@:checkr _d ?? throw "null pointer dereference").doc;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        _comments = (_comments.__append__((@:checkr _d ?? throw "null pointer dereference").doc) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))) {
                    var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L286"
                    if (({
                        final value = (@:checkr _d ?? throw "null pointer dereference").doc;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        _comments = (_comments.__append__((@:checkr _d ?? throw "null pointer dereference").doc) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
                    };
                };
            };
        };
        var _importDecl = (stdgo.Go.setRef(({ tok : (75 : stdgo._internal.go.token.Token_token.Token), lparen : (1 : stdgo._internal.go.token.Token_pos.Pos), rparen : (1 : stdgo._internal.go.token.Token_pos.Pos) } : stdgo._internal.go.ast.Ast_gendecl.GenDecl)) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
        (@:checkr _importDecl ?? throw "null pointer dereference").specs = (_namedImports.__append__(...(_blankImports : Array<stdgo._internal.go.ast.Ast_spec.Spec>)) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
        var _funcDecl = (stdgo.Go.setRef(({ name : stdgo._internal.go.ast.Ast_newident.newIdent(("main" : stdgo.GoString)), type : (@:checkr _f ?? throw "null pointer dereference").type, body : _body } : stdgo._internal.go.ast.Ast_funcdecl.FuncDecl)) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
        var _decls = (new stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>((0 : stdgo.GoInt).toBasic(), ((2 : stdgo.GoInt) + (_depDecls.length) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
        _decls = (_decls.__append__(stdgo.Go.asInterface(_importDecl)) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
        _decls = (_decls.__append__(...(_depDecls : Array<stdgo._internal.go.ast.Ast_decl.Decl>)) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
        _decls = (_decls.__append__(stdgo.Go.asInterface(_funcDecl)) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L312"
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_decls), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L313"
            return (_decls[(_i : stdgo.GoInt)].pos() < _decls[(_j : stdgo.GoInt)].pos() : Bool);
        });
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L315"
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_comments), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L316"
            return (_comments[(_i : stdgo.GoInt)].pos() < _comments[(_j : stdgo.GoInt)].pos() : Bool);
        });
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L320"
        return (stdgo.Go.setRef(({ name : stdgo._internal.go.ast.Ast_newident.newIdent(("main" : stdgo.GoString)), decls : _decls, comments : _comments } : stdgo._internal.go.ast.Ast_file.File)) : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
    }
