package stdgo._internal.go.internal.gcimporter;
@:keep @:allow(stdgo._internal.go.internal.gcimporter.Gcimporter.T_importReader_asInterface) class T_importReader_static_extension {
    @:keep
    @:tdfield
    static public function _byte( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>):stdgo.GoUInt8 {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._declReader.readByte(), _x:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L785"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L786"
            stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("declReader.ReadByte: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L788"
        return _x;
    }
    @:keep
    @:tdfield
    static public function _uint64( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>):stdgo.GoUInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        var __tmp__ = stdgo._internal.encoding.binary.Binary_readuvarint.readUvarint(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._declReader) : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>))), _n:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L777"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L778"
            stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("readUvarint: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L780"
        return _n;
    }
    @:keep
    @:tdfield
    static public function _int64( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        var __tmp__ = stdgo._internal.encoding.binary.Binary_readvarint.readVarint(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._declReader) : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>))), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L769"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L770"
            stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("readVarint: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L772"
        return _n;
    }
    @:keep
    @:tdfield
    static public function _bool( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L764"
        return _r._uint64() != ((0i64 : stdgo.GoUInt64));
    }
    @:keep
    @:tdfield
    static public function _param( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>):stdgo.Ref<stdgo._internal.go.types.Types_var.Var> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        var _pos = (_r._pos() : stdgo._internal.go.token.Token_pos.Pos);
        var _name = (_r._ident()?.__copy__() : stdgo.GoString);
        var _typ = (_r._typ() : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L760"
        return stdgo._internal.go.types.Types_newparam.newParam(_pos, (@:checkr _r ?? throw "null pointer dereference")._currPkg, _name?.__copy__(), _typ);
    }
    @:keep
    @:tdfield
    static public function _paramList( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>):stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        var _xs = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>((_r._uint64() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L750"
        for (_i => _ in _xs) {
            _xs[(_i : stdgo.GoInt)] = _r._param();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L753"
        return stdgo._internal.go.types.Types_newtuple.newTuple(...(_xs : Array<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>));
    }
    @:keep
    @:tdfield
    static public function _tparamList( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        var _n = (_r._uint64() : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L738"
        if (_n == ((0i64 : stdgo.GoUInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L739"
            return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        };
        var _xs = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L742"
        for (_i => _ in _xs) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r._typ()) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
                };
                _xs[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L745"
        return _xs;
    }
    @:keep
    @:tdfield
    static public function _signature( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>, _recv:stdgo.Ref<stdgo._internal.go.types.Types_var.Var>, _rparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>):stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        var _params = _r._paramList();
        var _results = _r._paramList();
        var _variadic = ((_params.len() > (0 : stdgo.GoInt) : Bool) && _r._bool() : Bool);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L733"
        return stdgo._internal.go.types.Types_newsignaturetype.newSignatureType(_recv, _rparams, _tparams, _params, _results, _variadic);
    }
    @:keep
    @:tdfield
    static public function _kind( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>):stdgo._internal.go.internal.gcimporter.Gcimporter_t_itag.T_itag {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L726"
        return (_r._uint64() : stdgo._internal.go.internal.gcimporter.Gcimporter_t_itag.T_itag);
    }
    @:keep
    @:tdfield
    static public function _doType( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>, _base:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L609"
        {
            var _k = (_r._kind() : stdgo._internal.go.internal.gcimporter.Gcimporter_t_itag.T_itag);
            {
                final __value__ = _k;
                if (__value__ == ((0i64 : stdgo._internal.go.internal.gcimporter.Gcimporter_t_itag.T_itag))) {
                    var __tmp__ = _r._qualifiedIdent(), _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L616"
                    (@:checkr _r ?? throw "null pointer dereference")._p._doDecl(_pkg, _name?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L617"
                    return (stdgo.Go.typeAssert((stdgo.Go.toInterface(_pkg.scope().lookup(_name?.__copy__())) : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>)) : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>).type();
                } else if (__value__ == ((1i64 : stdgo._internal.go.internal.gcimporter.Gcimporter_t_itag.T_itag))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L619"
                    return stdgo.Go.asInterface(stdgo._internal.go.types.Types_newpointer.newPointer(_r._typ()));
                } else if (__value__ == ((2i64 : stdgo._internal.go.internal.gcimporter.Gcimporter_t_itag.T_itag))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L621"
                    return stdgo.Go.asInterface(stdgo._internal.go.types.Types_newslice.newSlice(_r._typ()));
                } else if (__value__ == ((3i64 : stdgo._internal.go.internal.gcimporter.Gcimporter_t_itag.T_itag))) {
                    var _n = (_r._uint64() : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L624"
                    return stdgo.Go.asInterface(stdgo._internal.go.types.Types_newarray.newArray(_r._typ(), (_n : stdgo.GoInt64)));
                } else if (__value__ == ((4i64 : stdgo._internal.go.internal.gcimporter.Gcimporter_t_itag.T_itag))) {
                    var _dir = (stdgo._internal.go.internal.gcimporter.Gcimporter__chandir._chanDir((_r._uint64() : stdgo.GoInt)) : stdgo._internal.go.types.Types_chandir.ChanDir);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L627"
                    return stdgo.Go.asInterface(stdgo._internal.go.types.Types_newchan.newChan(_dir, _r._typ()));
                } else if (__value__ == ((5i64 : stdgo._internal.go.internal.gcimporter.Gcimporter_t_itag.T_itag))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L629"
                    return stdgo.Go.asInterface(stdgo._internal.go.types.Types_newmap.newMap(_r._typ(), _r._typ()));
                } else if (__value__ == ((6i64 : stdgo._internal.go.internal.gcimporter.Gcimporter_t_itag.T_itag))) {
                    (@:checkr _r ?? throw "null pointer dereference")._currPkg = _r._pkg();
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L632"
                    return stdgo.Go.asInterface(_r._signature(null, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>)));
                } else if (__value__ == ((7i64 : stdgo._internal.go.internal.gcimporter.Gcimporter_t_itag.T_itag))) {
                    (@:checkr _r ?? throw "null pointer dereference")._currPkg = _r._pkg();
                    var _fields = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>((_r._uint64() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
                    var _tags = (new stdgo.Slice<stdgo.GoString>((_fields.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L639"
                    for (_i => _ in _fields) {
                        var _fpos = (_r._pos() : stdgo._internal.go.token.Token_pos.Pos);
                        var _fname = (_r._ident()?.__copy__() : stdgo.GoString);
                        var _ftyp = (_r._typ() : stdgo._internal.go.types.Types_type_.Type_);
                        var _emb = (_r._bool() : Bool);
                        var _tag = (_r._string()?.__copy__() : stdgo.GoString);
                        _fields[(_i : stdgo.GoInt)] = stdgo._internal.go.types.Types_newfield.newField(_fpos, (@:checkr _r ?? throw "null pointer dereference")._currPkg, _fname?.__copy__(), _ftyp, _emb);
                        _tags[(_i : stdgo.GoInt)] = _tag?.__copy__();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L649"
                    return stdgo.Go.asInterface(stdgo._internal.go.types.Types_newstruct.newStruct(_fields, _tags));
                } else if (__value__ == ((8i64 : stdgo._internal.go.internal.gcimporter.Gcimporter_t_itag.T_itag))) {
                    (@:checkr _r ?? throw "null pointer dereference")._currPkg = _r._pkg();
                    var _embeddeds = (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>((_r._uint64() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L655"
                    for (_i => _ in _embeddeds) {
                        _r._pos();
                        _embeddeds[(_i : stdgo.GoInt)] = _r._typ();
                    };
                    var _methods = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>((_r._uint64() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L661"
                    for (_i => _ in _methods) {
                        var _mpos = (_r._pos() : stdgo._internal.go.token.Token_pos.Pos);
                        var _mname = (_r._ident()?.__copy__() : stdgo.GoString);
                        var _recv:stdgo.Ref<stdgo._internal.go.types.Types_var.Var> = (null : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>);
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L668"
                        if (({
                            final value = _base;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            _recv = stdgo._internal.go.types.Types_newvar.newVar((0 : stdgo._internal.go.token.Token_pos.Pos), (@:checkr _r ?? throw "null pointer dereference")._currPkg, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.asInterface(_base));
                        };
                        var _msig = _r._signature(_recv, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>));
                        _methods[(_i : stdgo.GoInt)] = stdgo._internal.go.types.Types_newfunc.newFunc(_mpos, (@:checkr _r ?? throw "null pointer dereference")._currPkg, _mname?.__copy__(), _msig);
                    };
                    var _typ = stdgo._internal.go.types.Types_newinterfacetype.newInterfaceType(_methods, _embeddeds);
                    (@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._interfaceList = ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._interfaceList.__append__(_typ) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>>);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L678"
                    return stdgo.Go.asInterface(_typ);
                } else if (__value__ == ((9i64 : stdgo._internal.go.internal.gcimporter.Gcimporter_t_itag.T_itag))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L681"
                    if (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._exportVersion < (2i64 : stdgo.GoInt64) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L682"
                        stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("unexpected type param type" : stdgo.GoString));
                    };
                    var __tmp__ = _r._qualifiedIdent(), _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
                    var _id = (new stdgo._internal.go.internal.gcimporter.Gcimporter_t_ident.T_ident(_pkg, _name?.__copy__()) : stdgo._internal.go.internal.gcimporter.Gcimporter_t_ident.T_ident);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L686"
                    {
                        var __tmp__ = ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._tparamIndex != null && (@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._tparamIndex.__exists__(_id?.__copy__()) ? { _0 : (@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._tparamIndex[_id?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false }), _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L688"
                            return stdgo.Go.asInterface(_t);
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L691"
                    (@:checkr _r ?? throw "null pointer dereference")._p._doDecl(_pkg, _name?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L692"
                    return stdgo.Go.asInterface(((@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._tparamIndex[_id] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)));
                } else if (__value__ == ((10i64 : stdgo._internal.go.internal.gcimporter.Gcimporter_t_itag.T_itag))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L695"
                    if (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._exportVersion < (2i64 : stdgo.GoInt64) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L696"
                        stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("unexpected instantiation type" : stdgo.GoString));
                    };
                    _r._pos();
                    var _len = (_r._uint64() : stdgo.GoUInt64);
                    var _targs = (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>((_len : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L703"
                    for (_i => _ in _targs) {
                        _targs[(_i : stdgo.GoInt)] = _r._typ();
                    };
                    var _baseType = (_r._typ() : stdgo._internal.go.types.Types_type_.Type_);
                    var __tmp__ = stdgo._internal.go.types.Types_instantiate.instantiate(null, _baseType, _targs, false), _t:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, __48:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L711"
                    return _t;
                } else if (__value__ == ((11i64 : stdgo._internal.go.internal.gcimporter.Gcimporter_t_itag.T_itag))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L714"
                    if (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._exportVersion < (2i64 : stdgo.GoInt64) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L715"
                        stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("unexpected instantiation type" : stdgo.GoString));
                    };
                    var _terms = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>((_r._uint64() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L718"
                    for (_i => _ in _terms) {
                        _terms[(_i : stdgo.GoInt)] = stdgo._internal.go.types.Types_newterm.newTerm(_r._bool(), _r._typ());
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L721"
                    return stdgo.Go.asInterface(stdgo._internal.go.types.Types_newunion.newUnion(_terms));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L611"
                    stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("unexpected kind tag in %q: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._ipath), stdgo.Go.toInterface(_k));
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L612"
                    return (null : stdgo._internal.go.types.Types_type_.Type_);
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _string( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L606"
        return (@:checkr _r ?? throw "null pointer dereference")._p._stringAt(_r._uint64())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _pkg( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L605"
        return (@:checkr _r ?? throw "null pointer dereference")._p._pkgAt(_r._uint64());
    }
    @:keep
    @:tdfield
    static public function _typ( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L597"
        return (@:checkr _r ?? throw "null pointer dereference")._p._typAt(_r._uint64(), null);
    }
    @:keep
    @:tdfield
    static public function _posv1( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        var _delta = (_r._int64() : stdgo.GoInt64);
        (@:checkr _r ?? throw "null pointer dereference")._prevColumn = ((@:checkr _r ?? throw "null pointer dereference")._prevColumn + ((_delta >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L587"
        if ((_delta & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) != ((0i64 : stdgo.GoInt64))) {
            _delta = _r._int64();
            (@:checkr _r ?? throw "null pointer dereference")._prevLine = ((@:checkr _r ?? throw "null pointer dereference")._prevLine + ((_delta >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L590"
            if ((_delta & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) != ((0i64 : stdgo.GoInt64))) {
                (@:checkr _r ?? throw "null pointer dereference")._prevFile = _r._string()?.__copy__();
            };
        };
    }
    @:keep
    @:tdfield
    static public function _posv0( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        var _delta = (_r._int64() : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L574"
        if (_delta != ((-64i64 : stdgo.GoInt64))) {
            (@:checkr _r ?? throw "null pointer dereference")._prevLine = ((@:checkr _r ?? throw "null pointer dereference")._prevLine + (_delta) : stdgo.GoInt64);
        } else {
            var _l = (_r._int64() : stdgo.GoInt64);
            if (_l == ((-1i64 : stdgo.GoInt64))) {
                (@:checkr _r ?? throw "null pointer dereference")._prevLine = ((@:checkr _r ?? throw "null pointer dereference")._prevLine + ((-64i64 : stdgo.GoInt64)) : stdgo.GoInt64);
            } else {
                (@:checkr _r ?? throw "null pointer dereference")._prevFile = _r._string()?.__copy__();
                (@:checkr _r ?? throw "null pointer dereference")._prevLine = _l;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _pos( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L560"
        if (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._version >= (1 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L561"
            _r._posv1();
        } else {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L563"
            _r._posv0();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L566"
        if ((((@:checkr _r ?? throw "null pointer dereference")._prevFile == ((stdgo.Go.str() : stdgo.GoString)) && (@:checkr _r ?? throw "null pointer dereference")._prevLine == ((0i64 : stdgo.GoInt64)) : Bool) && ((@:checkr _r ?? throw "null pointer dereference")._prevColumn == (0i64 : stdgo.GoInt64)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L567"
            return (0 : stdgo._internal.go.token.Token_pos.Pos);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L569"
        return (@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._fake._pos((@:checkr _r ?? throw "null pointer dereference")._prevFile?.__copy__(), ((@:checkr _r ?? throw "null pointer dereference")._prevLine : stdgo.GoInt), ((@:checkr _r ?? throw "null pointer dereference")._prevColumn : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _qualifiedIdent( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.GoString; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        var _name = (_r._string()?.__copy__() : stdgo.GoString);
        var _pkg = _r._pkg();
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L556"
        return { _0 : _pkg, _1 : _name?.__copy__() };
    }
    @:keep
    @:tdfield
    static public function _ident( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L550"
        return _r._string()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _mpfloat( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>, _typ:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>):stdgo._internal.go.constant.Constant_value.Value {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        var _mant:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L540"
        _r._mpint((stdgo.Go.setRef(_mant) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _typ);
        var _f:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L542"
        _f.setInt((stdgo.Go.setRef(_mant) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L543"
        if (_f.sign() != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L544"
            _f.setMantExp((stdgo.Go.setRef(_f) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>), (_r._int64() : stdgo.GoInt));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L546"
        return stdgo._internal.go.constant.Constant_make.make(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_f) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>))));
    }
    @:keep
    @:tdfield
    static public function _mpint( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _typ:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        var __tmp__ = stdgo._internal.go.internal.gcimporter.Gcimporter__intsize._intSize(_typ), _signed:Bool = __tmp__._0, _maxBytes:stdgo.GoUInt = __tmp__._1;
        var _maxSmall = ((256u32 : stdgo.GoUInt) - _maxBytes : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L503"
        if (_signed) {
            _maxSmall = ((256u32 : stdgo.GoUInt) - ((2u32 : stdgo.GoUInt) * _maxBytes : stdgo.GoUInt) : stdgo.GoUInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L506"
        if (_maxBytes == ((1u32 : stdgo.GoUInt))) {
            _maxSmall = (256u32 : stdgo.GoUInt);
        };
        var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._declReader.readByte(), _n:stdgo.GoUInt8 = __tmp__._0, __8:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L511"
        if (((_n : stdgo.GoUInt) < _maxSmall : Bool)) {
            var _v = (_n : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L513"
            if (_signed) {
                _v = (_v >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L515"
                if ((_n & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                    _v = (-1 ^ _v);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L519"
            _x.setInt64(_v);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L520"
            return;
        };
        var _v = (-_n : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L524"
        if (_signed) {
            _v = (-((_n & (((1 : stdgo.GoUInt8) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt8)) : stdgo.GoUInt8)) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L527"
        if (((_v < (1 : stdgo.GoUInt8) : Bool) || ((_v : stdgo.GoUInt) > _maxBytes : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L528"
            stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("weird decoding: %v, %v => %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_signed), stdgo.Go.toInterface(_v));
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_v : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L531"
        stdgo._internal.io.Io_readfull.readFull(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._declReader) : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>)), _b);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L532"
        _x.setBytes(_b);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L533"
        if ((_signed && ((_n & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L534"
            _x.neg(_x);
        };
    }
    @:keep
    @:tdfield
    static public function _value( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>):{ var _0 : stdgo._internal.go.types.Types_type_.Type_; var _1 : stdgo._internal.go.constant.Constant_value.Value; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        var _typ = (null : stdgo._internal.go.types.Types_type_.Type_), _val = (null : stdgo._internal.go.constant.Constant_value.Value);
        _typ = _r._typ();
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L439"
        if (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._exportVersion >= (2i64 : stdgo.GoInt64) : Bool)) {
            (_r._int64() : stdgo._internal.go.constant.Constant_kind.Kind);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L444"
        {
            var _b = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ.underlying()) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>);
            {
                final __value__ = (_b.info() & (59 : stdgo._internal.go.types.Types_basicinfo.BasicInfo) : stdgo._internal.go.types.Types_basicinfo.BasicInfo);
                if (__value__ == ((1 : stdgo._internal.go.types.Types_basicinfo.BasicInfo))) {
                    _val = stdgo._internal.go.constant.Constant_makebool.makeBool(_r._bool());
                } else if (__value__ == ((32 : stdgo._internal.go.types.Types_basicinfo.BasicInfo))) {
                    _val = stdgo._internal.go.constant.Constant_makestring.makeString(_r._string()?.__copy__());
                } else if (__value__ == ((2 : stdgo._internal.go.types.Types_basicinfo.BasicInfo))) {
                    var _x:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L453"
                    _r._mpint((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _b);
                    _val = stdgo._internal.go.constant.Constant_make.make(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))));
                } else if (__value__ == ((8 : stdgo._internal.go.types.Types_basicinfo.BasicInfo))) {
                    _val = _r._mpfloat(_b);
                } else if (__value__ == ((16 : stdgo._internal.go.types.Types_basicinfo.BasicInfo))) {
                    var _re = (_r._mpfloat(_b) : stdgo._internal.go.constant.Constant_value.Value);
                    var _im = (_r._mpfloat(_b) : stdgo._internal.go.constant.Constant_value.Value);
                    _val = stdgo._internal.go.constant.Constant_binaryop.binaryOp(_re, (12 : stdgo._internal.go.token.Token_token.Token), stdgo._internal.go.constant.Constant_makeimag.makeImag(_im));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L465"
                    stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("unexpected type %v" : stdgo.GoString), stdgo.Go.toInterface(_typ));
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L466"
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L469"
        return { _0 : _typ, _1 : _val };
    }
    @:keep
    @:tdfield
    static public function _declare( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>, _obj:stdgo._internal.go.types.Types_object.Object):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L434"
        _obj.pkg().scope().insert(_obj);
    }
    @:keep
    @:tdfield
    static public function _obj( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>, _name:stdgo.GoString):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader> = _r;
        var _tag = (_r._byte() : stdgo.GoUInt8);
        var _pos = (_r._pos() : stdgo._internal.go.token.Token_pos.Pos);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L330"
        {
            final __value__ = _tag;
            if (__value__ == ((65 : stdgo.GoUInt8))) {
                var _typ = (_r._typ() : stdgo._internal.go.types.Types_type_.Type_);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L334"
                _r._declare(stdgo.Go.asInterface(stdgo._internal.go.types.Types_newtypename.newTypeName(_pos, (@:checkr _r ?? throw "null pointer dereference")._currPkg, _name?.__copy__(), _typ)));
            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                var __tmp__ = _r._value(), _typ:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, _val:stdgo._internal.go.constant.Constant_value.Value = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L339"
                _r._declare(stdgo.Go.asInterface(stdgo._internal.go.types.Types_newconst.newConst(_pos, (@:checkr _r ?? throw "null pointer dereference")._currPkg, _name?.__copy__(), _typ, _val)));
            } else if (__value__ == ((70 : stdgo.GoUInt8)) || __value__ == ((71 : stdgo.GoUInt8))) {
                var _tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L343"
                if (_tag == ((71 : stdgo.GoUInt8))) {
                    _tparams = _r._tparamList();
                };
                var _sig = _r._signature(null, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), _tparams);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L347"
                _r._declare(stdgo.Go.asInterface(stdgo._internal.go.types.Types_newfunc.newFunc(_pos, (@:checkr _r ?? throw "null pointer dereference")._currPkg, _name?.__copy__(), _sig)));
            } else if (__value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((85 : stdgo.GoUInt8))) {
                var _obj = stdgo._internal.go.types.Types_newtypename.newTypeName(_pos, (@:checkr _r ?? throw "null pointer dereference")._currPkg, _name?.__copy__(), (null : stdgo._internal.go.types.Types_type_.Type_));
                var _named = stdgo._internal.go.types.Types_newnamed.newNamed(_obj, (null : stdgo._internal.go.types.Types_type_.Type_), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>));
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L356"
                _r._declare(stdgo.Go.asInterface(_obj));
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L357"
                if (_tag == ((85 : stdgo.GoUInt8))) {
                    var _tparams = _r._tparamList();
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L359"
                    _named.setTypeParams(_tparams);
                };
                var _underlying = ((@:checkr _r ?? throw "null pointer dereference")._p._typAt(_r._uint64(), _named).underlying() : stdgo._internal.go.types.Types_type_.Type_);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L363"
                _named.setUnderlying(_underlying);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L365"
                if (!stdgo._internal.go.internal.gcimporter.Gcimporter__isinterface._isInterface(_underlying)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L366"
                    {
                        var _n = (_r._uint64() : stdgo.GoUInt64);
                        while ((_n > (0i64 : stdgo.GoUInt64) : Bool)) {
                            var _mpos = (_r._pos() : stdgo._internal.go.token.Token_pos.Pos);
var _mname = (_r._ident().__copy__() : stdgo.GoString);
var _recv = _r._param();
var _targs = stdgo._internal.go.internal.gcimporter.Gcimporter__basetype._baseType(_recv.type()).typeArgs();
var _rparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
//"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L376"
                            if ((_targs.len() > (0 : stdgo.GoInt) : Bool)) {
                                _rparams = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>((_targs.len() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
                                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L378"
                                for (_i => _ in _rparams) {
                                    {
                                        var __tmp__ = try {
                                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_targs.at(_i)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
                                        } catch(_) {
                                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
                                        };
                                        _rparams[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                                    };
                                };
                            };
var _msig = _r._signature(_recv, _rparams, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>));
//"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L384"
                            _named.addMethod(stdgo._internal.go.types.Types_newfunc.newFunc(_mpos, (@:checkr _r ?? throw "null pointer dereference")._currPkg, _mname.__copy__(), _msig));
                            _n--;
                        };
                    };
                };
            } else if (__value__ == ((80 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L392"
                if (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._exportVersion < (2i64 : stdgo.GoInt64) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L393"
                    stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("unexpected type param type" : stdgo.GoString));
                };
                var _name0 = (stdgo._internal.go.internal.gcimporter.Gcimporter__tparamname._tparamName(_name?.__copy__())?.__copy__() : stdgo.GoString);
                var _tn = stdgo._internal.go.types.Types_newtypename.newTypeName(_pos, (@:checkr _r ?? throw "null pointer dereference")._currPkg, _name0?.__copy__(), (null : stdgo._internal.go.types.Types_type_.Type_));
                var _t = stdgo._internal.go.types.Types_newtypeparam.newTypeParam(_tn, (null : stdgo._internal.go.types.Types_type_.Type_));
                var _id = (new stdgo._internal.go.internal.gcimporter.Gcimporter_t_ident.T_ident((@:checkr _r ?? throw "null pointer dereference")._currPkg, _name?.__copy__()) : stdgo._internal.go.internal.gcimporter.Gcimporter_t_ident.T_ident);
                (@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._tparamIndex[_id] = _t;
                var _implicit:Bool = false;
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L406"
                if (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._exportVersion >= (2i64 : stdgo.GoInt64) : Bool)) {
                    _implicit = _r._bool();
                };
                var _constraint = (_r._typ() : stdgo._internal.go.types.Types_type_.Type_);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L410"
                if (_implicit) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_constraint) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
                    }, _iface = __tmp__._0, __88 = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L412"
                    if (({
                        final value = _iface;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L413"
                        stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("non-interface constraint marked implicit" : stdgo.GoString));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L415"
                    _iface.markImplicit();
                };
                (@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._later = ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._later.__append__(({ _t : _t, _constraint : _constraint } : stdgo._internal.go.internal.gcimporter.Gcimporter_t_setconstraintargs.T_setConstraintArgs)) : stdgo.Slice<stdgo._internal.go.internal.gcimporter.Gcimporter_t_setconstraintargs.T_setConstraintArgs>);
            } else if (__value__ == ((86 : stdgo.GoUInt8))) {
                var _typ = (_r._typ() : stdgo._internal.go.types.Types_type_.Type_);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L426"
                _r._declare(stdgo.Go.asInterface(stdgo._internal.go.types.Types_newvar.newVar(_pos, (@:checkr _r ?? throw "null pointer dereference")._currPkg, _name?.__copy__(), _typ)));
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L429"
                stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("unexpected tag: %v" : stdgo.GoString), stdgo.Go.toInterface(_tag));
            };
        };
    }
}
