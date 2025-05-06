package stdgo._internal.go.internal.gcimporter;
@:keep @:allow(stdgo._internal.go.internal.gcimporter.Gcimporter.T_reader_asInterface) class T_reader_static_extension {
    @:keep
    @:tdfield
    static public function _ident( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>, _marker:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.GoString; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L644"
        _r.sync(_marker);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L645"
        return { _0 : _r._pkg(), _1 : (_r.string() : stdgo.GoString)?.__copy__() };
    }
    @:keep
    @:tdfield
    static public function _selector( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.GoString; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L641"
        return _r._ident((28 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
    }
    @:keep
    @:tdfield
    static public function _localIdent( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.GoString; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L640"
        return _r._ident((27 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
    }
    @:keep
    @:tdfield
    static public function _qualifiedIdent( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.GoString; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L639"
        return _r._ident((26 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
    }
    @:keep
    @:tdfield
    static public function _method( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L628"
        _r.sync((18 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        var _pos = (_r._pos() : stdgo._internal.go.token.Token_pos.Pos);
        var __tmp__ = _r._selector(), _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
        var _rparams = _r._typeParamNames();
        var _sig = _r._signature(_r._param(), _rparams, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>));
        _r._pos();
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L636"
        return stdgo._internal.go.types.Types_newfunc.newFunc(_pos, _pkg, _name?.__copy__(), _sig);
    }
    @:keep
    @:tdfield
    static public function _typeParamNames( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L575"
        _r.sync((21 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L582"
        if (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._dict ?? throw "null pointer dereference")._bounds.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L583"
            return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        };
        (@:checkr (@:checkr _r ?? throw "null pointer dereference")._dict ?? throw "null pointer dereference")._tparams = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>(((@:checkr (@:checkr _r ?? throw "null pointer dereference")._dict ?? throw "null pointer dereference")._bounds.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L592"
        for (_i => _ in (@:checkr (@:checkr _r ?? throw "null pointer dereference")._dict ?? throw "null pointer dereference")._bounds) {
            var _pos = (_r._pos() : stdgo._internal.go.token.Token_pos.Pos);
            var __tmp__ = _r._localIdent(), _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
            var _tname = stdgo._internal.go.types.Types_newtypename.newTypeName(_pos, _pkg, _name?.__copy__(), (null : stdgo._internal.go.types.Types_type_.Type_));
            (@:checkr (@:checkr _r ?? throw "null pointer dereference")._dict ?? throw "null pointer dereference")._tparams[(_i : stdgo.GoInt)] = stdgo._internal.go.types.Types_newtypeparam.newTypeParam(_tname, (null : stdgo._internal.go.types.Types_type_.Type_));
        };
        var _typs = (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>(((@:checkr (@:checkr _r ?? throw "null pointer dereference")._dict ?? throw "null pointer dereference")._bounds.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L601"
        for (_i => _bound in (@:checkr (@:checkr _r ?? throw "null pointer dereference")._dict ?? throw "null pointer dereference")._bounds) {
            _typs[(_i : stdgo.GoInt)] = (@:checkr _r ?? throw "null pointer dereference")._p._typIdx(_bound?.__copy__(), (@:checkr _r ?? throw "null pointer dereference")._dict);
        };
        var _tparams = (@:checkr (@:checkr _r ?? throw "null pointer dereference")._dict ?? throw "null pointer dereference")._tparams;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L618"
        (@:checkr _r ?? throw "null pointer dereference")._p._later(function():Void {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L619"
            for (_i => _typ in _typs) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L620"
                _tparams[(_i : stdgo.GoInt)].setConstraint(_typ);
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L624"
        return (@:checkr (@:checkr _r ?? throw "null pointer dereference")._dict ?? throw "null pointer dereference")._tparams;
    }
    @:keep
    @:tdfield
    static public function _obj( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):{ var _0 : stdgo._internal.go.types.Types_object.Object; var _1 : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L425"
        _r.sync((14 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L427"
        stdgo._internal.go.internal.gcimporter.Gcimporter__assert._assert(!_r.bool_());
        var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._p._objIdx(_r.reloc((6 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind))), _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
        var _obj = (stdgo._internal.go.internal.gcimporter.Gcimporter__pkgscope._pkgScope(_pkg).lookup(_name?.__copy__()) : stdgo._internal.go.types.Types_object.Object);
        var _targs = (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>((_r.len() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L433"
        for (_i => _ in _targs) {
            _targs[(_i : stdgo.GoInt)] = _r._typ();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L437"
        return { _0 : _obj, _1 : _targs };
    }
    @:keep
    @:tdfield
    static public function _param( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo.Ref<stdgo._internal.go.types.Types_var.Var> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L413"
        _r.sync((24 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        var _pos = (_r._pos() : stdgo._internal.go.token.Token_pos.Pos);
        var __tmp__ = _r._localIdent(), _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
        var _typ = (_r._typ() : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L419"
        return stdgo._internal.go.types.Types_newparam.newParam(_pos, _pkg, _name?.__copy__(), _typ);
    }
    @:keep
    @:tdfield
    static public function _params( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L402"
        _r.sync((23 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        var _params = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>((_r.len() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L405"
        for (_i => _ in _params) {
            _params[(_i : stdgo.GoInt)] = _r._param();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L409"
        return stdgo._internal.go.types.Types_newtuple.newTuple(...(_params : Array<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>));
    }
    @:keep
    @:tdfield
    static public function _signature( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>, _recv:stdgo.Ref<stdgo._internal.go.types.Types_var.Var>, _rtparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>):stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L392"
        _r.sync((22 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        var _params = _r._params();
        var _results = _r._params();
        var _variadic = (_r.bool_() : Bool);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L398"
        return stdgo._internal.go.types.Types_newsignaturetype.newSignatureType(_recv, _rtparams, _tparams, _params, _results, _variadic);
    }
    @:keep
    @:tdfield
    static public function _interfaceType( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        var _methods = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>((_r.len() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
        var _embeddeds = (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>((_r.len() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        var _implicit = (((_methods.length) == ((0 : stdgo.GoInt)) && (_embeddeds.length) == ((1 : stdgo.GoInt)) : Bool) && _r.bool_() : Bool);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L363"
        for (_i => _ in _methods) {
            var _pos = (_r._pos() : stdgo._internal.go.token.Token_pos.Pos);
            var __tmp__ = _r._selector(), _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
            var _mtyp = _r._signature(null, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>));
            _methods[(_i : stdgo.GoInt)] = stdgo._internal.go.types.Types_newfunc.newFunc(_pos, _pkg, _name?.__copy__(), _mtyp);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L370"
        for (_i => _ in _embeddeds) {
            _embeddeds[(_i : stdgo.GoInt)] = _r._typ();
        };
        var _iface = stdgo._internal.go.types.Types_newinterfacetype.newInterfaceType(_methods, _embeddeds);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L375"
        if (_implicit) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L376"
            _iface.markImplicit();
        };
        (@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._ifaces = ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._ifaces.__append__(_iface) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L388"
        return _iface;
    }
    @:keep
    @:tdfield
    static public function _unionType( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo.Ref<stdgo._internal.go.types.Types_union.Union> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        var _terms = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>((_r.len() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L352"
        for (_i => _ in _terms) {
            _terms[(_i : stdgo.GoInt)] = stdgo._internal.go.types.Types_newterm.newTerm(_r.bool_(), _r._typ());
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L355"
        return stdgo._internal.go.types.Types_newunion.newUnion(_terms);
    }
    @:keep
    @:tdfield
    static public function _structType( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        var _fields = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>((_r.len() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        var _tags:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L332"
        for (_i => _ in _fields) {
            var _pos = (_r._pos() : stdgo._internal.go.token.Token_pos.Pos);
            var __tmp__ = _r._selector(), _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
            var _ftyp = (_r._typ() : stdgo._internal.go.types.Types_type_.Type_);
            var _tag = ((_r.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _embedded = (_r.bool_() : Bool);
            _fields[(_i : stdgo.GoInt)] = stdgo._internal.go.types.Types_newfield.newField(_pos, _pkg, _name?.__copy__(), _ftyp, _embedded);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L340"
            if (_tag != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L341"
                while (((_tags.length) < _i : Bool)) {
                    _tags = (_tags.__append__((stdgo.Go.str() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                };
                _tags = (_tags.__append__(_tag?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L347"
        return stdgo._internal.go.types.Types_newstruct.newStruct(_fields, _tags);
    }
    @:keep
    @:tdfield
    static public function _doTyp( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        var _res = (null : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L286"
        {
            var _tag = (_r.code((19 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker)) : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType);
            {
                final __value__ = _tag;
                if (__value__ == ((0 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L292"
                    return _res = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[(_r.len() : stdgo.GoInt)]);
                } else if (__value__ == ((1 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    var __tmp__ = _r._obj(), _obj:stdgo._internal.go.types.Types_object.Object = __tmp__._0, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> = __tmp__._1;
                    var _name = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj) : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>)) : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L297"
                    if ((_targs.length) != ((0 : stdgo.GoInt))) {
                        var __tmp__ = stdgo._internal.go.types.Types_instantiate.instantiate((@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._ctxt, _name.type(), _targs, false), _t:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, __32:stdgo.Error = __tmp__._1;
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L299"
                        return _res = _t;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L301"
                    return _res = _name.type();
                } else if (__value__ == ((11 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L304"
                    return _res = stdgo.Go.asInterface((@:checkr (@:checkr _r ?? throw "null pointer dereference")._dict ?? throw "null pointer dereference")._tparams[(_r.len() : stdgo.GoInt)]);
                } else if (__value__ == ((4 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    var _len = (_r.uint64() : stdgo.GoInt64);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L308"
                    return _res = stdgo.Go.asInterface(stdgo._internal.go.types.Types_newarray.newArray(_r._typ(), _len));
                } else if (__value__ == ((5 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    var _dir = (_r.len() : stdgo._internal.go.types.Types_chandir.ChanDir);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L311"
                    return _res = stdgo.Go.asInterface(stdgo._internal.go.types.Types_newchan.newChan(_dir, _r._typ()));
                } else if (__value__ == ((6 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L313"
                    return _res = stdgo.Go.asInterface(stdgo._internal.go.types.Types_newmap.newMap(_r._typ(), _r._typ()));
                } else if (__value__ == ((2 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L315"
                    return _res = stdgo.Go.asInterface(stdgo._internal.go.types.Types_newpointer.newPointer(_r._typ()));
                } else if (__value__ == ((7 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L317"
                    return _res = stdgo.Go.asInterface(_r._signature(null, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>)));
                } else if (__value__ == ((3 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L319"
                    return _res = stdgo.Go.asInterface(stdgo._internal.go.types.Types_newslice.newSlice(_r._typ()));
                } else if (__value__ == ((8 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L321"
                    return _res = stdgo.Go.asInterface(_r._structType());
                } else if (__value__ == ((9 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L323"
                    return _res = stdgo.Go.asInterface(_r._interfaceType());
                } else if (__value__ == ((10 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L325"
                    return _res = stdgo.Go.asInterface(_r._unionType());
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L288"
                    stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("unhandled type tag: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tag)));
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L289"
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _typInfo( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L246"
        _r.sync((19 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L247"
        if (_r.bool_()) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L248"
            return ({ _idx : (_r.len() : stdgo._internal.internal.pkgbits.Pkgbits_index.Index), _derived : true } : stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L250"
        return ({ _idx : _r.reloc((5 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind)), _derived : false } : stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo);
    }
    @:keep
    @:tdfield
    static public function _typ( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L242"
        return (@:checkr _r ?? throw "null pointer dereference")._p._typIdx(_r._typInfo()?.__copy__(), (@:checkr _r ?? throw "null pointer dereference")._dict);
    }
    @:keep
    @:tdfield
    static public function _doPkg( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        var _path = ((_r.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L218"
        {
            final __value__ = _path;
            if (__value__ == ((stdgo.Go.str() : stdgo.GoString))) {
                _path = (@:checkr _r ?? throw "null pointer dereference")._p.pkgPath()?.__copy__();
            } else if (__value__ == (("builtin" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L222"
                return null;
            } else if (__value__ == (("unsafe" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L224"
                return stdgo._internal.go.types.Types_unsafe.unsafe;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L227"
        {
            var _pkg = ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._imports[_path] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>));
            if (({
                final value = _pkg;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L228"
                return _pkg;
            };
        };
        var _name = ((_r.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _pkg = stdgo._internal.go.types.Types_newpackage.newPackage(_path?.__copy__(), _name?.__copy__());
        (@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._imports[_path] = _pkg;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L236"
        return _pkg;
    }
    @:keep
    @:tdfield
    static public function _pkg( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L200"
        _r.sync((16 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L201"
        return (@:checkr _r ?? throw "null pointer dereference")._p._pkgIdx(_r.reloc((3 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind)));
    }
    @:keep
    @:tdfield
    static public function _posBase( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L161"
        return (@:checkr _r ?? throw "null pointer dereference")._p._posBaseIdx(_r.reloc((2 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind)))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _pos( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L148"
        _r.sync((12 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L149"
        if (!_r.bool_()) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L150"
            return (0 : stdgo._internal.go.token.Token_pos.Pos);
        };
        var _posBase = (_r._posBase()?.__copy__() : stdgo.GoString);
        var _line = (_r.uint() : stdgo.GoUInt);
        var _col = (_r.uint() : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L157"
        return (@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._fake._pos(_posBase?.__copy__(), (_line : stdgo.GoInt), (_col : stdgo.GoInt));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _scalar( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo._internal.go.constant.Constant_value.Value return @:_5 __self__._scalar();
    @:embedded
    @:embeddededffieldsffun
    public static function _rawVarint( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.GoInt64 return @:_5 __self__._rawVarint();
    @:embedded
    @:embeddededffieldsffun
    public static function _rawUvarint( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.GoUInt64 return @:_5 __self__._rawUvarint();
    @:embedded
    @:embeddededffieldsffun
    public static function _rawReloc( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader, _0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo.GoInt):stdgo._internal.internal.pkgbits.Pkgbits_index.Index return @:_5 __self__._rawReloc(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _checkErr( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader, _0:stdgo.Error):Void return @:_5 __self__._checkErr(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _bigInt( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_5 __self__._bigInt();
    @:embedded
    @:embeddededffieldsffun
    public static function _bigFloat( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> return @:_5 __self__._bigFloat();
    @:embedded
    @:embeddededffieldsffun
    public static function value( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo._internal.go.constant.Constant_value.Value return @:_5 __self__.value();
    @:embedded
    @:embeddededffieldsffun
    public static function uint64( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.GoUInt64 return @:_5 __self__.uint64();
    @:embedded
    @:embeddededffieldsffun
    public static function uint( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.GoUInt return @:_5 __self__.uint();
    @:embedded
    @:embeddededffieldsffun
    public static function sync( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader, _0:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):Void return @:_5 __self__.sync(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function strings( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.Slice<stdgo.GoString> return @:_5 __self__.strings();
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function reloc( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader, _0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind):stdgo._internal.internal.pkgbits.Pkgbits_index.Index return @:_5 __self__.reloc(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function len( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.GoInt return @:_5 __self__.len();
    @:embedded
    @:embeddededffieldsffun
    public static function int64( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.GoInt64 return @:_5 __self__.int64();
    @:embedded
    @:embeddededffieldsffun
    public static function int_( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.GoInt return @:_5 __self__.int_();
    @:embedded
    @:embeddededffieldsffun
    public static function code( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader, _0:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo.GoInt return @:_5 __self__.code(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function bool_( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):Bool return @:_5 __self__.bool_();
}
