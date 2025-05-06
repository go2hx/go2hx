package stdgo._internal.go.doc;
@:keep @:allow(stdgo._internal.go.doc.Doc.T_reader_asInterface) class T_reader_static_extension {
    @:keep
    @:tdfield
    static public function _cleanupTypes( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L781"
        for (__0 => _t in (@:checkr _r ?? throw "null pointer dereference")._types) {
            var _visible = (_r._isVisible((@:checkr _t ?? throw "null pointer dereference")._name?.__copy__()) : Bool);
            var _predeclared = (stdgo._internal.go.doc.Doc__predeclaredtypes._predeclaredTypes[(@:checkr _t ?? throw "null pointer dereference")._name] ?? false : Bool);
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L785"
            if ((({
                final value = (@:checkr _t ?? throw "null pointer dereference")._decl;
                (value == null || (value : Dynamic).__nil__);
            }) && ((_predeclared || (_visible && (((@:checkr _t ?? throw "null pointer dereference")._isEmbedded || (@:checkr _r ?? throw "null pointer dereference")._hasDotImp : Bool)) : Bool) : Bool)) : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference")._values = ((@:checkr _r ?? throw "null pointer dereference")._values.__append__(...((@:checkr _t ?? throw "null pointer dereference")._values : Array<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L794"
                for (_name => _f in (@:checkr _t ?? throw "null pointer dereference")._funcs) {
                    (@:checkr _r ?? throw "null pointer dereference")._funcs[_name] = _f;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L800"
                if (!_predeclared) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L801"
                    for (_name => _m in (@:checkr _t ?? throw "null pointer dereference")._methods) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L803"
                        {
                            var __tmp__ = ((@:checkr _r ?? throw "null pointer dereference")._funcs != null && (@:checkr _r ?? throw "null pointer dereference")._funcs.__exists__(_name?.__copy__()) ? { _0 : (@:checkr _r ?? throw "null pointer dereference")._funcs[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>), _1 : false }), __1:stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func> = __tmp__._0, _found:Bool = __tmp__._1;
                            if (!_found) {
                                (@:checkr _r ?? throw "null pointer dereference")._funcs[_name] = _m;
                            };
                        };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L810"
            if ((({
                final value = (@:checkr _t ?? throw "null pointer dereference")._decl;
                (value == null || (value : Dynamic).__nil__);
            }) || !_visible : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L811"
                if ((@:checkr _r ?? throw "null pointer dereference")._types != null) (@:checkr _r ?? throw "null pointer dereference")._types.__remove__((@:checkr _t ?? throw "null pointer dereference")._name);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _computeMethodSets( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L756"
        for (__0 => _t in (@:checkr _r ?? throw "null pointer dereference")._types) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L758"
            if ((@:checkr _t ?? throw "null pointer dereference")._isStruct) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L760"
                _r._collectEmbeddedMethods((@:checkr _t ?? throw "null pointer dereference")._methods, _t, (@:checkr _t ?? throw "null pointer dereference")._name?.__copy__(), false, (1 : stdgo.GoInt), (({
                    final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>, Bool>();
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>, Bool>) : stdgo._internal.go.doc.Doc_t_embeddedset.T_embeddedSet));
            } else {};
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L769"
        for (_predecl => _ in (@:checkr _r ?? throw "null pointer dereference")._shadowedPredecl) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L770"
            for (__1 => _ityp in ((@:checkr _r ?? throw "null pointer dereference")._fixmap[_predecl] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>))) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L771"
                stdgo._internal.go.doc.Doc__removeanonymousfield._removeAnonymousField(_predecl?.__copy__(), _ityp);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _collectEmbeddedMethods( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _mset:stdgo._internal.go.doc.Doc_t_methodset.T_methodSet, _typ:stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>, _recvTypeName:stdgo.GoString, _embeddedIsPtr:Bool, _level:stdgo.GoInt, _visited:stdgo._internal.go.doc.Doc_t_embeddedset.T_embeddedSet):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        _visited[_typ] = true;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L734"
        for (_embedded => _isPtr in (@:checkr _typ ?? throw "null pointer dereference")._embedded) {
            var _thisEmbeddedIsPtr = (_embeddedIsPtr || _isPtr : Bool);
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L741"
            for (__0 => _m in (@:checkr _embedded ?? throw "null pointer dereference")._methods) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L743"
                if ((@:checkr _m ?? throw "null pointer dereference").level == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L744"
                    _mset._add(stdgo._internal.go.doc.Doc__customizerecv._customizeRecv(_m, _recvTypeName?.__copy__(), _thisEmbeddedIsPtr, _level));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L747"
            if (!(_visited[_embedded] ?? false)) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L748"
                _r._collectEmbeddedMethods(_mset, _embedded, _recvTypeName?.__copy__(), _thisEmbeddedIsPtr, (_level + (1 : stdgo.GoInt) : stdgo.GoInt), _visited);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L751"
        if (_visited != null) _visited.__remove__(_typ);
    }
    @:keep
    @:tdfield
    static public function _readPackage( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>, _mode:stdgo._internal.go.doc.Doc_mode.Mode):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._filenames = (new stdgo.Slice<stdgo.GoString>(((@:checkr _pkg ?? throw "null pointer dereference").files.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        (@:checkr _r ?? throw "null pointer dereference")._imports = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        (@:checkr _r ?? throw "null pointer dereference")._mode = _mode;
        (@:checkr _r ?? throw "null pointer dereference")._types = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>>);
        (@:checkr _r ?? throw "null pointer dereference")._funcs = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>) : stdgo._internal.go.doc.Doc_t_methodset.T_methodSet);
        (@:checkr _r ?? throw "null pointer dereference")._notes = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>>);
        (@:checkr _r ?? throw "null pointer dereference")._importByName = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L662"
        for (_filename => _ in (@:checkr _pkg ?? throw "null pointer dereference").files) {
            (@:checkr _r ?? throw "null pointer dereference")._filenames[(_i : stdgo.GoInt)] = _filename?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L664"
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L666"
        stdgo._internal.sort.Sort_strings.strings((@:checkr _r ?? throw "null pointer dereference")._filenames);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L669"
        for (__0 => _filename in (@:checkr _r ?? throw "null pointer dereference")._filenames) {
            var _f = ((@:checkr _pkg ?? throw "null pointer dereference").files[_filename] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>));
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L671"
            if ((_mode & (1 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) == ((0 : stdgo._internal.go.doc.Doc_mode.Mode))) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L672"
                _r._fileExports(_f);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L674"
            _r._readFile(_f);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L677"
        for (_name => _path in (@:checkr _r ?? throw "null pointer dereference")._importByName) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L678"
            if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L679"
                if ((@:checkr _r ?? throw "null pointer dereference")._importByName != null) (@:checkr _r ?? throw "null pointer dereference")._importByName.__remove__(_name);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L684"
        for (__1 => _f in (@:checkr _pkg ?? throw "null pointer dereference").files) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L685"
            for (__2 => _decl in (@:checkr _f ?? throw "null pointer dereference").decls) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L686"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_decl) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>), _1 : false };
                    }, _d = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L687"
                        _r._readFunc(_d);
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readFile( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _src:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L563"
        if (({
            final value = (@:checkr _src ?? throw "null pointer dereference").doc;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L564"
            _r._readDoc((@:checkr _src ?? throw "null pointer dereference").doc);
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L565"
            if (((@:checkr _r ?? throw "null pointer dereference")._mode & (4 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) == ((0 : stdgo._internal.go.doc.Doc_mode.Mode))) {
                (@:checkr _src ?? throw "null pointer dereference").doc = null;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L571"
        for (__0 => _decl in (@:checkr _src ?? throw "null pointer dereference").decls) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L572"
            {
                final __type__ = _decl;
                {
                    var __bool__ = true;
                    while (__bool__) {
                        __bool__ = false;
                        if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                            var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value);
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L574"
                            {
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = (@:checkr _d ?? throw "null pointer dereference").tok;
                                        if (__value__ == ((75 : stdgo._internal.go.token.Token_token.Token))) {
                                            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L577"
                                            for (__1 => _spec in (@:checkr _d ?? throw "null pointer dereference").specs) {
                                                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L578"
                                                {
                                                    var __tmp__ = try {
                                                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_spec) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>), _1 : true };
                                                    } catch(_) {
                                                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>), _1 : false };
                                                    }, _s = __tmp__._0, _ok = __tmp__._1;
                                                    if (_ok) {
                                                        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L579"
                                                        {
                                                            var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote((@:checkr (@:checkr _s ?? throw "null pointer dereference").path ?? throw "null pointer dereference").value?.__copy__()), _import_:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                                            if (_err == null) {
                                                                (@:checkr _r ?? throw "null pointer dereference")._imports[_import_] = (1 : stdgo.GoInt);
                                                                var _name:stdgo.GoString = ("" : stdgo.GoString);
                                                                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L582"
                                                                if (({
                                                                    final value = (@:checkr _s ?? throw "null pointer dereference").name;
                                                                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                                                })) {
                                                                    _name = (@:checkr (@:checkr _s ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__();
                                                                    //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L584"
                                                                    if (_name == (("." : stdgo.GoString))) {
                                                                        (@:checkr _r ?? throw "null pointer dereference")._hasDotImp = true;
                                                                    };
                                                                };
                                                                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L588"
                                                                if (_name != (("." : stdgo.GoString))) {
                                                                    //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L589"
                                                                    if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
                                                                        _name = stdgo._internal.go.doc.Doc__assumedpackagename._assumedPackageName(_import_?.__copy__())?.__copy__();
                                                                    };
                                                                    var __tmp__ = ((@:checkr _r ?? throw "null pointer dereference")._importByName != null && (@:checkr _r ?? throw "null pointer dereference")._importByName.__exists__(_name?.__copy__()) ? { _0 : (@:checkr _r ?? throw "null pointer dereference")._importByName[_name?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _old:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                                                                    //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L593"
                                                                    if (!_ok) {
                                                                        (@:checkr _r ?? throw "null pointer dereference")._importByName[_name] = _import_?.__copy__();
                                                                    } else if (((_old != _import_) && (_old != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                                                                        (@:checkr _r ?? throw "null pointer dereference")._importByName[_name] = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                                                                    };
                                                                };
                                                            };
                                                        };
                                                    };
                                                };
                                            };
                                            break;
                                        } else if (__value__ == ((64 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((85 : stdgo._internal.go.token.Token_token.Token))) {
                                            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L604"
                                            _r._readValue(_d);
                                            break;
                                        } else if (__value__ == ((84 : stdgo._internal.go.token.Token_token.Token))) {
                                            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L607"
                                            if ((((@:checkr _d ?? throw "null pointer dereference").specs.length == (1 : stdgo.GoInt)) && !(@:checkr _d ?? throw "null pointer dereference").lparen.isValid() : Bool)) {
                                                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L613"
                                                {
                                                    var __tmp__ = try {
                                                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference").specs[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>), _1 : true };
                                                    } catch(_) {
                                                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>), _1 : false };
                                                    }, _s = __tmp__._0, _ok = __tmp__._1;
                                                    if (_ok) {
                                                        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L614"
                                                        _r._readType(_d, _s);
                                                    };
                                                };
                                                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L616"
                                                break;
                                            };
                                            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L618"
                                            for (__1 => _spec in (@:checkr _d ?? throw "null pointer dereference").specs) {
                                                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L619"
                                                {
                                                    var __tmp__ = try {
                                                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_spec) : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>), _1 : true };
                                                    } catch(_) {
                                                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>), _1 : false };
                                                    }, _s = __tmp__._0, _ok = __tmp__._1;
                                                    if (_ok) {
                                                        var _fake = (stdgo.Go.setRef(({ doc : (@:checkr _d ?? throw "null pointer dereference").doc, tokPos : _s.pos(), tok : (84 : stdgo._internal.go.token.Token_token.Token), specs : (new stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>(1, 1, ...[stdgo.Go.asInterface(_s)]) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>) } : stdgo._internal.go.ast.Ast_gendecl.GenDecl)) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
                                                        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L635"
                                                        _r._readType(_fake, _s);
                                                    };
                                                };
                                            };
                                            break;
                                        };
                                    };
                                    break;
                                };
                            };
                        };
                        break;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L643"
        _r._readNotes((@:checkr _src ?? throw "null pointer dereference").comments);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L644"
        if (((@:checkr _r ?? throw "null pointer dereference")._mode & (4 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) == ((0 : stdgo._internal.go.doc.Doc_mode.Mode))) {
            (@:checkr _src ?? throw "null pointer dereference").comments = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        };
    }
    @:keep
    @:tdfield
    static public function _readNotes( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L543"
        for (__0 => _group in _comments) {
            var _i = (-1 : stdgo.GoInt);
            var _list = (@:checkr _group ?? throw "null pointer dereference").list;
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L546"
            for (_j => _c in _list) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L547"
                if (stdgo._internal.go.doc.Doc__notecommentrx._noteCommentRx.matchString((@:checkr _c ?? throw "null pointer dereference").text?.__copy__())) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L548"
                    if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L549"
                        _r._readNote((_list.__slice__(_i, _j) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>));
                    };
                    _i = _j;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L554"
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L555"
                _r._readNote((_list.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readNote( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        var _text = ((stdgo.Go.setRef(({ list : _list } : stdgo._internal.go.ast.Ast_commentgroup.CommentGroup)) : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>).text()?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L519"
        {
            var _m = stdgo._internal.go.doc.Doc__notemarkerrx._noteMarkerRx.findStringSubmatchIndex(_text?.__copy__());
            if (_m != null) {
                var _body = (stdgo._internal.go.doc.Doc__clean._clean((_text.__slice__(_m[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L525"
                if (_body != ((stdgo.Go.str() : stdgo.GoString))) {
                    var _marker = ((_text.__slice__(_m[(2 : stdgo.GoInt)], _m[(3 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    (@:checkr _r ?? throw "null pointer dereference")._notes[_marker] = (((@:checkr _r ?? throw "null pointer dereference")._notes[_marker] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>)).__append__((stdgo.Go.setRef(({ pos : _list[(0 : stdgo.GoInt)].pos(), end : _list[((_list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end(), uID : (_text.__slice__(_m[(4 : stdgo.GoInt)], _m[(5 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__(), body : _body?.__copy__() } : stdgo._internal.go.doc.Doc_note.Note)) : stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>);
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readFunc( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _fun:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L404"
        if (((@:checkr _r ?? throw "null pointer dereference")._mode & (4 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) == ((0 : stdgo._internal.go.doc.Doc_mode.Mode))) {
            (@:checkr _fun ?? throw "null pointer dereference").body = null;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L409"
        if (({
            final value = (@:checkr _fun ?? throw "null pointer dereference").recv;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L411"
            if (((@:checkr (@:checkr _fun ?? throw "null pointer dereference").recv ?? throw "null pointer dereference").list.length) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L414"
                return;
            };
            var __tmp__ = stdgo._internal.go.doc.Doc__basetypename._baseTypeName((@:checkr (@:checkr (@:checkr _fun ?? throw "null pointer dereference").recv ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").type), _recvTypeName:stdgo.GoString = __tmp__._0, _imp:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L417"
            if (_imp) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L420"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L422"
            {
                var _typ = _r._lookupType(_recvTypeName?.__copy__());
                if (({
                    final value = _typ;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L423"
                    (@:checkr _typ ?? throw "null pointer dereference")._methods._set(_fun, ((@:checkr _r ?? throw "null pointer dereference")._mode & (4 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) != ((0 : stdgo._internal.go.doc.Doc_mode.Mode)));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L430"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L435"
        if (((@:checkr (@:checkr _fun ?? throw "null pointer dereference").type ?? throw "null pointer dereference").results.numFields() >= (1 : stdgo.GoInt) : Bool)) {
            var _typ:stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType> = (null : stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>);
            var _numResultTypes = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L438"
            for (__0 => _res in (@:checkr (@:checkr (@:checkr _fun ?? throw "null pointer dereference").type ?? throw "null pointer dereference").results ?? throw "null pointer dereference").list) {
                var _factoryType = ((@:checkr _res ?? throw "null pointer dereference").type : stdgo._internal.go.ast.Ast_expr.Expr);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L440"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_factoryType) : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>), _1 : false };
                    }, _t = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _factoryType = (@:checkr _t ?? throw "null pointer dereference").elt;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L445"
                {
                    var __tmp__ = stdgo._internal.go.doc.Doc__basetypename._baseTypeName(_factoryType), _n:stdgo.GoString = __tmp__._0, _imp:Bool = __tmp__._1;
                    if (((!_imp && _r._isVisible(_n?.__copy__()) : Bool) && !_r._isPredeclared(_n?.__copy__()) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L446"
                        if (({
                            final value = stdgo._internal.go.doc.Doc__lookuptypeparam._lookupTypeParam(_n?.__copy__(), (@:checkr (@:checkr _fun ?? throw "null pointer dereference").type ?? throw "null pointer dereference").typeParams);
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L449"
                            continue;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L451"
                        {
                            var _t = _r._lookupType(_n?.__copy__());
                            if (({
                                final value = _t;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                _typ = _t;
                                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L453"
                                _numResultTypes++;
                                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L454"
                                if ((_numResultTypes > (1 : stdgo.GoInt) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L455"
                                    break;
                                };
                            };
                        };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L462"
            if (_numResultTypes == ((1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L463"
                (@:checkr _typ ?? throw "null pointer dereference")._funcs._set(_fun, ((@:checkr _r ?? throw "null pointer dereference")._mode & (4 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) != ((0 : stdgo._internal.go.doc.Doc_mode.Mode)));
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L464"
                return;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L469"
        (@:checkr _r ?? throw "null pointer dereference")._funcs._set(_fun, ((@:checkr _r ?? throw "null pointer dereference")._mode & (4 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) != ((0 : stdgo._internal.go.doc.Doc_mode.Mode)));
    }
    @:keep
    @:tdfield
    static public function _isPredeclared( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _n:stdgo.GoString):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L398"
        return ((stdgo._internal.go.doc.Doc__predeclaredtypes._predeclaredTypes[_n] ?? false) && ({
            final value = ((@:checkr _r ?? throw "null pointer dereference")._types[_n] ?? (null : stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>));
            (value == null || (value : Dynamic).__nil__);
        }) : Bool);
    }
    @:keep
    @:tdfield
    static public function _readType( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _decl:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>, _spec:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        var _typ = _r._lookupType((@:checkr (@:checkr _spec ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L364"
        if (({
            final value = _typ;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L365"
            return;
        };
        (@:checkr _typ ?? throw "null pointer dereference")._decl = _decl;
        var _doc = (@:checkr _spec ?? throw "null pointer dereference").doc;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L374"
        if (({
            final value = _doc;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _doc = (@:checkr _decl ?? throw "null pointer dereference").doc;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L378"
        if (((@:checkr _r ?? throw "null pointer dereference")._mode & (4 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) == ((0 : stdgo._internal.go.doc.Doc_mode.Mode))) {
            (@:checkr _spec ?? throw "null pointer dereference").doc = null;
            (@:checkr _decl ?? throw "null pointer dereference").doc = null;
        };
        (@:checkr _typ ?? throw "null pointer dereference")._doc = _doc.text()?.__copy__();
        var _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
        {
            var __tmp__ = stdgo._internal.go.doc.Doc__fields._fields((@:checkr _spec ?? throw "null pointer dereference").type);
            _list = @:tmpset0 __tmp__._0;
            (@:checkr _typ ?? throw "null pointer dereference")._isStruct = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L389"
        for (__0 => _field in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L390"
            if (((@:checkr _field ?? throw "null pointer dereference").names.length) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L391"
                _r._recordAnonymousField(_typ, (@:checkr _field ?? throw "null pointer dereference").type);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readValue( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _decl:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        var _domName = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _domFreq = (0 : stdgo.GoInt);
        var _prev = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L282"
        for (__0 => _spec in (@:checkr _decl ?? throw "null pointer dereference").specs) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_spec) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>), _1 : false };
            }, _s = __tmp__._0, _ok = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L284"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L285"
                continue;
            };
            var _name = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L288"
            if ((@:checkr _s ?? throw "null pointer dereference").type != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L291"
                {
                    var __tmp__ = stdgo._internal.go.doc.Doc__basetypename._baseTypeName((@:checkr _s ?? throw "null pointer dereference").type), _n:stdgo.GoString = __tmp__._0, _imp:Bool = __tmp__._1;
                    if (!_imp) {
                        _name = _n?.__copy__();
                    };
                };
            } else if ((((@:checkr _decl ?? throw "null pointer dereference").tok == (64 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _s ?? throw "null pointer dereference").values.length == (0 : stdgo.GoInt)) : Bool)) {
                _name = _prev?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L299"
            if (_name != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L301"
                if (((_domName != (stdgo.Go.str() : stdgo.GoString)) && (_domName != _name) : Bool)) {
                    _domName = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L305"
                    break;
                };
                _domName = _name?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L308"
                _domFreq++;
            };
            _prev = _name?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L311"
            _n++;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L315"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L316"
            return;
        };
        var _values = (stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._values) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>>);
        {};
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L322"
        if (((_domName != ((stdgo.Go.str() : stdgo.GoString)) && _r._isVisible(_domName?.__copy__()) : Bool) && (_domFreq >= ((((@:checkr _decl ?? throw "null pointer dereference").specs.length : stdgo.GoFloat64) * (0.75 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L324"
            {
                var _typ = _r._lookupType(_domName?.__copy__());
                if (({
                    final value = _typ;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    _values = (stdgo.Go.setRef((@:checkr _typ ?? throw "null pointer dereference")._values) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>>);
                };
            };
        };
        (_values : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>).__setData__(((_values : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>).__append__((stdgo.Go.setRef(({ doc : (@:checkr _decl ?? throw "null pointer dereference").doc.text()?.__copy__(), names : stdgo._internal.go.doc.Doc__specnames._specNames((@:checkr _decl ?? throw "null pointer dereference").specs), decl : _decl, _order : (@:checkr _r ?? throw "null pointer dereference")._order } : stdgo._internal.go.doc.Doc_value.Value)) : stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>));
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L335"
        if (((@:checkr _r ?? throw "null pointer dereference")._mode & (4 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) == ((0 : stdgo._internal.go.doc.Doc_mode.Mode))) {
            (@:checkr _decl ?? throw "null pointer dereference").doc = null;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L342"
        (@:checkr _r ?? throw "null pointer dereference")._order++;
    }
    @:keep
    @:tdfield
    static public function _remember( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _predecl:stdgo.GoString, _typ:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L255"
        if ((@:checkr _r ?? throw "null pointer dereference")._fixmap == null) {
            (@:checkr _r ?? throw "null pointer dereference")._fixmap = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>>);
        };
        (@:checkr _r ?? throw "null pointer dereference")._fixmap[_predecl] = (((@:checkr _r ?? throw "null pointer dereference")._fixmap[_predecl] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>)).__append__(_typ) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>);
    }
    @:keep
    @:tdfield
    static public function _readDoc( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _comment:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        var _text = (_comment.text()?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L247"
        if ((@:checkr _r ?? throw "null pointer dereference")._doc == ((stdgo.Go.str() : stdgo.GoString))) {
            (@:checkr _r ?? throw "null pointer dereference")._doc = _text?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L249"
            return;
        };
        (@:checkr _r ?? throw "null pointer dereference")._doc = ((@:checkr _r ?? throw "null pointer dereference")._doc + ((("\n" : stdgo.GoString) + _text?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function _recordAnonymousField( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _parent:stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>, _fieldType:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        var _fname = ("" : stdgo.GoString);
        var __tmp__ = stdgo._internal.go.doc.Doc__basetypename._baseTypeName(_fieldType), _fname:stdgo.GoString = __tmp__._0, _imp:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L232"
        if ((({
            final value = _parent;
            (value == null || (value : Dynamic).__nil__);
        }) || _imp : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L233"
            return _fname;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L235"
        {
            var _ftype = _r._lookupType(_fname?.__copy__());
            if (({
                final value = _ftype;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                (@:checkr _ftype ?? throw "null pointer dereference")._isEmbedded = true;
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fieldType) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>), _1 : false };
                }, __0 = __tmp__._0, _ptr = __tmp__._1;
                (@:checkr _parent ?? throw "null pointer dereference")._embedded[_ftype] = _ptr;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L240"
        return _fname;
    }
    @:keep
    @:tdfield
    static public function _lookupType( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L209"
        if (((_name == (stdgo.Go.str() : stdgo.GoString)) || (_name == ("_" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L210"
            return null;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L212"
        {
            var __tmp__ = ((@:checkr _r ?? throw "null pointer dereference")._types != null && (@:checkr _r ?? throw "null pointer dereference")._types.__exists__(_name?.__copy__()) ? { _0 : (@:checkr _r ?? throw "null pointer dereference")._types[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>), _1 : false }), _typ:stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType> = __tmp__._0, _found:Bool = __tmp__._1;
            if (_found) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L213"
                return _typ;
            };
        };
        var _typ = (stdgo.Go.setRef(({ _name : _name?.__copy__(), _embedded : (({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>, Bool>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>, Bool>) : stdgo._internal.go.doc.Doc_t_embeddedset.T_embeddedSet), _funcs : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>) : stdgo._internal.go.doc.Doc_t_methodset.T_methodSet), _methods : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>) : stdgo._internal.go.doc.Doc_t_methodset.T_methodSet) } : stdgo._internal.go.doc.Doc_t_namedtype.T_namedType)) : stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>);
        (@:checkr _r ?? throw "null pointer dereference")._types[_name] = _typ;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L223"
        return _typ;
    }
    @:keep
    @:tdfield
    static public function _isVisible( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _name:stdgo.GoString):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L201"
        return ((((@:checkr _r ?? throw "null pointer dereference")._mode & (1 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) != (0 : stdgo._internal.go.doc.Doc_mode.Mode)) || stdgo._internal.go.token.Token_isexported.isExported(_name?.__copy__()) : Bool);
    }
    @:keep
    @:tdfield
    static public function _fileExports( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _src:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        var _j = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L317"
        for (__0 => _d in (@:checkr _src ?? throw "null pointer dereference").decls) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L318"
            if (_r._filterDecl(_d)) {
                (@:checkr _src ?? throw "null pointer dereference").decls[(_j : stdgo.GoInt)] = _d;
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L320"
                _j++;
            };
        };
        (@:checkr _src ?? throw "null pointer dereference").decls = ((@:checkr _src ?? throw "null pointer dereference").decls.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
    }
    @:keep
    @:tdfield
    static public function _filterDecl( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _decl:stdgo._internal.go.ast.Ast_decl.Decl):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L300"
        {
            final __type__ = _decl;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value);
                (@:checkr _d ?? throw "null pointer dereference").specs = _r._filterSpecList((@:checkr _d ?? throw "null pointer dereference").specs, (@:checkr _d ?? throw "null pointer dereference").tok);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L303"
                return (((@:checkr _d ?? throw "null pointer dereference").specs.length) > (0 : stdgo.GoInt) : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L309"
                return stdgo._internal.go.token.Token_isexported.isExported((@:checkr (@:checkr _d ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L311"
        return false;
    }
    @:keep
    @:tdfield
    static public function _filterSpecList( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>, _tok:stdgo._internal.go.token.Token_token.Token):stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L270"
        if (_tok == ((64 : stdgo._internal.go.token.Token_token.Token))) {
            var _prevType:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
            //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L274"
            for (__0 => _spec in _list) {
                var _spec = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_spec) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L276"
                if ((((@:checkr _spec ?? throw "null pointer dereference").type == null && ((@:checkr _spec ?? throw "null pointer dereference").values.length) == ((0 : stdgo.GoInt)) : Bool) && (_prevType != null) : Bool)) {
                    (@:checkr _spec ?? throw "null pointer dereference").type = stdgo._internal.go.doc.Doc__copyconsttype._copyConstType(_prevType, _spec.pos());
                };
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L280"
                if (stdgo._internal.go.doc.Doc__hasexportedname._hasExportedName((@:checkr _spec ?? throw "null pointer dereference").names)) {
                    _prevType = (null : stdgo._internal.go.ast.Ast_expr.Expr);
                } else {
                    _prevType = (@:checkr _spec ?? throw "null pointer dereference").type;
                };
            };
        };
        var _j = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L290"
        for (__0 => _s in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L291"
            if (_r._filterSpec(_s)) {
                _list[(_j : stdgo.GoInt)] = _s;
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L293"
                _j++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L296"
        return (_list.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
    }
    @:keep
    @:tdfield
    static public function _filterSpec( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _spec:stdgo._internal.go.ast.Ast_spec.Spec):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L210"
        {
            final __type__ = _spec;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L213"
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value);
                (@:checkr _s ?? throw "null pointer dereference").values = stdgo._internal.go.doc.Doc__filterexprlist._filterExprList((@:checkr _s ?? throw "null pointer dereference").values, stdgo._internal.go.token.Token_isexported.isExported, true);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L216"
                if (((((@:checkr _s ?? throw "null pointer dereference").values.length) > (0 : stdgo.GoInt) : Bool) || ((@:checkr _s ?? throw "null pointer dereference").type == null && ((@:checkr _s ?? throw "null pointer dereference").values.length) == ((0 : stdgo.GoInt)) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L223"
                    if (stdgo._internal.go.doc.Doc__updateidentlist._updateIdentList((@:checkr _s ?? throw "null pointer dereference").names)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L224"
                        _r._filterType(null, (@:checkr _s ?? throw "null pointer dereference").type);
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L225"
                        return true;
                    };
                } else {
                    (@:checkr _s ?? throw "null pointer dereference").names = stdgo._internal.go.doc.Doc__filteridentlist._filterIdentList((@:checkr _s ?? throw "null pointer dereference").names);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L229"
                    if ((((@:checkr _s ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L230"
                        _r._filterType(null, (@:checkr _s ?? throw "null pointer dereference").type);
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L231"
                        return true;
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L237"
                {
                    var _name = ((@:checkr (@:checkr _s ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString);
                    if (stdgo._internal.go.token.Token_isexported.isExported(_name?.__copy__())) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L238"
                        _r._filterType(_r._lookupType((@:checkr (@:checkr _s ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__()), (@:checkr _s ?? throw "null pointer dereference").type);
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L239"
                        return true;
                    } else if (stdgo._internal.go.doc.Doc_ispredeclared.isPredeclared(_name?.__copy__())) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L241"
                        if ((@:checkr _r ?? throw "null pointer dereference")._shadowedPredecl == null) {
                            (@:checkr _r ?? throw "null pointer dereference")._shadowedPredecl = (({
                                final x = new stdgo.GoMap.GoStringMap<Bool>();
                                x.__defaultValue__ = () -> false;
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
                        };
                        (@:checkr _r ?? throw "null pointer dereference")._shadowedPredecl[_name] = true;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L247"
        return false;
    }
    @:keep
    @:tdfield
    static public function _filterType( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _parent:stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>, _typ:stdgo._internal.go.ast.Ast_expr.Expr):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L171"
        {
            final __type__ = _typ;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L175"
                _r._filterType(null, (@:checkr _t ?? throw "null pointer dereference").x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L177"
                _r._filterType(null, (@:checkr _t ?? throw "null pointer dereference").x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L179"
                if ((@:checkr _t ?? throw "null pointer dereference").op == ((88 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L180"
                    _r._filterType(null, (@:checkr _t ?? throw "null pointer dereference").x);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L183"
                if ((@:checkr _t ?? throw "null pointer dereference").op == ((18 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L184"
                    _r._filterType(null, (@:checkr _t ?? throw "null pointer dereference").x);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L185"
                    _r._filterType(null, (@:checkr _t ?? throw "null pointer dereference").y);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L188"
                _r._filterType(null, (@:checkr _t ?? throw "null pointer dereference").elt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L190"
                if (_r._filterFieldList(_parent, (@:checkr _t ?? throw "null pointer dereference").fields, null)) {
                    (@:checkr _t ?? throw "null pointer dereference").incomplete = true;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L194"
                _r._filterParamList((@:checkr _t ?? throw "null pointer dereference").typeParams);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L195"
                _r._filterParamList((@:checkr _t ?? throw "null pointer dereference").params);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L196"
                _r._filterParamList((@:checkr _t ?? throw "null pointer dereference").results);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L198"
                if (_r._filterFieldList(_parent, (@:checkr _t ?? throw "null pointer dereference").methods, _t)) {
                    (@:checkr _t ?? throw "null pointer dereference").incomplete = true;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L202"
                _r._filterType(null, (@:checkr _t ?? throw "null pointer dereference").key);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L203"
                _r._filterType(null, (@:checkr _t ?? throw "null pointer dereference").value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L205"
                _r._filterType(null, (@:checkr _t ?? throw "null pointer dereference").value);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _filterParamList( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L160"
        if (({
            final value = _fields;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L161"
            for (__0 => _f in (@:checkr _fields ?? throw "null pointer dereference").list) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L162"
                _r._filterType(null, (@:checkr _f ?? throw "null pointer dereference").type);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _filterFieldList( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _parent:stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>, _fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _ityp:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        var _removedFields = false;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L108"
        if (({
            final value = _fields;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L109"
            return _removedFields;
        };
        var _list = (@:checkr _fields ?? throw "null pointer dereference").list;
        var _j = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L113"
        for (__0 => _field in _list) {
            var _keepField = (false : Bool);
            //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L115"
            {
                var _n = ((@:checkr _field ?? throw "null pointer dereference").names.length : stdgo.GoInt);
                if (_n == ((0 : stdgo.GoInt))) {
                    var _fname = (_r._recordAnonymousField(_parent, (@:checkr _field ?? throw "null pointer dereference").type)?.__copy__() : stdgo.GoString);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L118"
                    if (_fname != ((stdgo.Go.str() : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L119"
                        if (stdgo._internal.go.token.Token_isexported.isExported(_fname?.__copy__())) {
                            _keepField = true;
                        } else if ((({
                            final value = _ityp;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        }) && (stdgo._internal.go.doc.Doc__predeclaredtypes._predeclaredTypes[_fname] ?? false) : Bool)) {
                            _keepField = true;
                            //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L126"
                            _r._remember(_fname?.__copy__(), _ityp);
                        };
                    } else {
                        _keepField = ({
                            final value = _ityp;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        });
                    };
                } else {
                    (@:checkr _field ?? throw "null pointer dereference").names = stdgo._internal.go.doc.Doc__filteridentlist._filterIdentList((@:checkr _field ?? throw "null pointer dereference").names);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L138"
                    if ((((@:checkr _field ?? throw "null pointer dereference").names.length) < _n : Bool)) {
                        _removedFields = true;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L141"
                    if ((((@:checkr _field ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
                        _keepField = true;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L145"
            if (_keepField) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L146"
                _r._filterType(null, (@:checkr _field ?? throw "null pointer dereference").type);
                _list[(_j : stdgo.GoInt)] = _field;
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L148"
                _j++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L151"
        if ((_j < (_list.length) : Bool)) {
            _removedFields = true;
        };
        (@:checkr _fields ?? throw "null pointer dereference").list = (_list.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L155"
        return _removedFields;
    }
}
