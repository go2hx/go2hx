package stdgo._internal.go.internal.gcimporter;
@:keep @:allow(stdgo._internal.go.internal.gcimporter.Gcimporter.T_pkgReader_asInterface) class T_pkgReader_static_extension {
    @:keep
    @:tdfield
    static public function _objDictIdx( _pr:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerdict.T_readerDict> {
        @:recv var _pr:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader> = _pr;
        var _dict:stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerdict.T_readerDict = ({} : stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerdict.T_readerDict);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L550"
        {
            var _r = _pr._tempReader((8 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind), _idx, (15 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L552"
            {
                var _implicits = (_r.len() : stdgo.GoInt);
                if (_implicits != ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L553"
                    stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("unexpected object with %v implicit type parameter(s)" : stdgo.GoString), stdgo.Go.toInterface(_implicits));
                };
            };
            _dict._bounds = (new stdgo.Slice<stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo>((_r.len() : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_r.len() : stdgo.GoInt).toBasic() > 0 ? (_r.len() : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo)]) : stdgo.Slice<stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo>);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L557"
            for (_i => _ in _dict._bounds) {
                _dict._bounds[(_i : stdgo.GoInt)] = _r._typInfo()?.__copy__();
            };
            _dict._derived = (new stdgo.Slice<stdgo._internal.go.internal.gcimporter.Gcimporter_t_derivedinfo.T_derivedInfo>((_r.len() : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_r.len() : stdgo.GoInt).toBasic() > 0 ? (_r.len() : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.go.internal.gcimporter.Gcimporter_t_derivedinfo.T_derivedInfo)]) : stdgo.Slice<stdgo._internal.go.internal.gcimporter.Gcimporter_t_derivedinfo.T_derivedInfo>);
            _dict._derivedTypes = (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>((_dict._derived.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L563"
            for (_i => _ in _dict._derived) {
                _dict._derived[(_i : stdgo.GoInt)] = (new stdgo._internal.go.internal.gcimporter.Gcimporter_t_derivedinfo.T_derivedInfo(_r.reloc((5 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind)), _r.bool_()) : stdgo._internal.go.internal.gcimporter.Gcimporter_t_derivedinfo.T_derivedInfo);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L567"
            _pr._retireReader(_r);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L571"
        return (stdgo.Go.setRef(_dict) : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerdict.T_readerDict>);
    }
    @:keep
    @:tdfield
    static public function _objIdx( _pr:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.GoString; } {
        @:recv var _pr:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader> = _pr;
        var _objPkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        var _objName:stdgo.GoString = ("" : stdgo.GoString);
        var _tag:stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj = ((0 : stdgo.GoInt) : stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L445"
        {
            var _rname = _pr._tempReader((4 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind), _idx, (15 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
            {
                var __tmp__ = _rname._qualifiedIdent();
                _objPkg = @:tmpset0 __tmp__._0;
                _objName = @:tmpset0 __tmp__._1?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L449"
            stdgo._internal.go.internal.gcimporter.Gcimporter__assert._assert(_objName != ((stdgo.Go.str() : stdgo.GoString)));
            _tag = (_rname.code((25 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker)) : stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L452"
            _pr._retireReader(_rname);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L455"
        if (_tag == ((5 : stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L456"
            stdgo._internal.go.internal.gcimporter.Gcimporter__assert._assert((({
                final value = _objPkg;
                (value == null || (value : Dynamic).__nil__);
            }) || (_objPkg == stdgo._internal.go.types.Types_unsafe.unsafe) : Bool));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L457"
            return { _0 : _objPkg, _1 : _objName?.__copy__() };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L461"
        {
            var __tmp__ = stdgo._internal.go.internal.gcimporter.Gcimporter__splitvargensuffix._splitVargenSuffix(_objName?.__copy__()), __0:stdgo.GoString = __tmp__._0, _suffix:stdgo.GoString = __tmp__._1;
            if (_suffix != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L462"
                return { _0 : _objPkg, _1 : _objName?.__copy__() };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L465"
        if (_objPkg.scope().lookup(_objName?.__copy__()) == null) {
            var _dict = _pr._objDictIdx(_idx);
            var _r = _pr._newReader((6 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind), _idx, (15 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
            (@:checkr _r ?? throw "null pointer dereference")._dict = _dict;
            var _declare = (function(_obj:stdgo._internal.go.types.Types_object.Object):Void {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L472"
                _objPkg.scope().insert(_obj);
            } : stdgo._internal.go.types.Types_object.Object -> Void);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L475"
            {
                final __value__ = _tag;
                if (__value__ == ((0 : stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj))) {
                    var _pos = (_r._pos() : stdgo._internal.go.token.Token_pos.Pos);
                    var _typ = (_r._typ() : stdgo._internal.go.types.Types_type_.Type_);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L482"
                    _declare(stdgo.Go.asInterface(stdgo._internal.go.types.Types_newtypename.newTypeName(_pos, _objPkg, _objName?.__copy__(), _typ)));
                } else if (__value__ == ((1 : stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj))) {
                    var _pos = (_r._pos() : stdgo._internal.go.token.Token_pos.Pos);
                    var _typ = (_r._typ() : stdgo._internal.go.types.Types_type_.Type_);
                    var _val = (_r.value() : stdgo._internal.go.constant.Constant_value.Value);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L488"
                    _declare(stdgo.Go.asInterface(stdgo._internal.go.types.Types_newconst.newConst(_pos, _objPkg, _objName?.__copy__(), _typ, _val)));
                } else if (__value__ == ((3 : stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj))) {
                    var _pos = (_r._pos() : stdgo._internal.go.token.Token_pos.Pos);
                    var _tparams = _r._typeParamNames();
                    var _sig = _r._signature(null, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), _tparams);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L494"
                    _declare(stdgo.Go.asInterface(stdgo._internal.go.types.Types_newfunc.newFunc(_pos, _objPkg, _objName?.__copy__(), _sig)));
                } else if (__value__ == ((2 : stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj))) {
                    var _pos = (_r._pos() : stdgo._internal.go.token.Token_pos.Pos);
                    var _obj = stdgo._internal.go.types.Types_newtypename.newTypeName(_pos, _objPkg, _objName?.__copy__(), (null : stdgo._internal.go.types.Types_type_.Type_));
                    var _named = stdgo._internal.go.types.Types_newnamed.newNamed(_obj, (null : stdgo._internal.go.types.Types_type_.Type_), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>));
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L501"
                    _declare(stdgo.Go.asInterface(_obj));
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L503"
                    _named.setTypeParams(_r._typeParamNames());
                    var _underlying = (_r._typ().underlying() : stdgo._internal.go.types.Types_type_.Type_);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L510"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_underlying) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
                        }, _iface = __tmp__._0, _ok = __tmp__._1;
                        if ((_ok && (_iface.numExplicitMethods() != (0 : stdgo.GoInt)) : Bool)) {
                            var _methods = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>((_iface.numExplicitMethods() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
                            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L512"
                            for (_i => _ in _methods) {
                                var _fn = _iface.explicitMethod(_i);
                                var _sig = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fn.type()) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
                                var _recv = stdgo._internal.go.types.Types_newvar.newVar(_fn.pos(), _fn.pkg(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.asInterface(_named));
                                _methods[(_i : stdgo.GoInt)] = stdgo._internal.go.types.Types_newfunc.newFunc(_fn.pos(), _fn.pkg(), _fn.name()?.__copy__(), stdgo._internal.go.types.Types_newsignature.newSignature(_recv, _sig.params(), _sig.results(), _sig.variadic()));
                            };
                            var _embeds = (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>((_iface.numEmbeddeds() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
                            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L521"
                            for (_i => _ in _embeds) {
                                _embeds[(_i : stdgo.GoInt)] = _iface.embeddedType(_i);
                            };
                            var _newIface = stdgo._internal.go.types.Types_newinterfacetype.newInterfaceType(_methods, _embeds);
                            (@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._ifaces = ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._ifaces.__append__(_newIface) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>>);
                            _underlying = stdgo.Go.asInterface(_newIface);
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L530"
                    _named.setUnderlying(_underlying);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L532"
                    {
                        var __0 = (0 : stdgo.GoInt), __1 = (_r.len() : stdgo.GoInt);
var _n = __1, _i = __0;
                        while ((_i < _n : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L533"
                            _named.addMethod(_r._method());
                            _i++;
                        };
                    };
                } else if (__value__ == ((4 : stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj))) {
                    var _pos = (_r._pos() : stdgo._internal.go.token.Token_pos.Pos);
                    var _typ = (_r._typ() : stdgo._internal.go.types.Types_type_.Type_);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L539"
                    _declare(stdgo.Go.asInterface(stdgo._internal.go.types.Types_newvar.newVar(_pos, _objPkg, _objName?.__copy__(), _typ)));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L477"
                    throw stdgo.Go.toInterface(("weird" : stdgo.GoString));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L543"
        return { _0 : _objPkg, _1 : _objName?.__copy__() };
    }
    @:keep
    @:tdfield
    static public function _typIdx( _pr:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>, _info:stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo, _dict:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerdict.T_readerDict>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _pr:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader> = _pr;
        var _idx = (_info._idx : stdgo._internal.internal.pkgbits.Pkgbits_index.Index);
        var _where:stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_> = (null : stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L256"
        if (_info._derived) {
            _where = (stdgo.Go.setRef((@:checkr _dict ?? throw "null pointer dereference")._derivedTypes[(_idx : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>);
            _idx = (@:checkr _dict ?? throw "null pointer dereference")._derived[(_idx : stdgo.GoInt)]._idx;
        } else {
            _where = (stdgo.Go.setRef((@:checkr _pr ?? throw "null pointer dereference")._typs[(_idx : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L263"
        {
            var _typ = (_where : stdgo._internal.go.types.Types_type_.Type_);
            if (_typ != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L264"
                return _typ;
            };
        };
        var _typ:stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L268"
        {
            var _r = _pr._tempReader((5 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind), _idx, (20 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
            (@:checkr _r ?? throw "null pointer dereference")._dict = _dict;
            _typ = _r._doTyp();
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L273"
            stdgo._internal.go.internal.gcimporter.Gcimporter__assert._assert(_typ != null);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L274"
            _pr._retireReader(_r);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L277"
        {
            var _prev = (_where : stdgo._internal.go.types.Types_type_.Type_);
            if (_prev != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L278"
                return _prev;
            };
        };
        {
            var __tmp__ = _typ;
            var x = (_where : stdgo._internal.go.types.Types_type_.Type_);
            x.string = __tmp__.string;
            x.underlying = __tmp__.underlying;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L282"
        return _typ;
    }
    @:keep
    @:tdfield
    static public function _pkgIdx( _pr:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> {
        @:recv var _pr:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader> = _pr;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L207"
        {
            var _pkg = (@:checkr _pr ?? throw "null pointer dereference")._pkgs[(_idx : stdgo.GoInt)];
            if (({
                final value = _pkg;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L208"
                return _pkg;
            };
        };
        var _pkg = _pr._newReader((3 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind), _idx, (17 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker))._doPkg();
        (@:checkr _pr ?? throw "null pointer dereference")._pkgs[(_idx : stdgo.GoInt)] = _pkg;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L213"
        return _pkg;
    }
    @:keep
    @:tdfield
    static public function _posBaseIdx( _pr:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.GoString {
        @:recv var _pr:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader> = _pr;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L165"
        {
            var _b = ((@:checkr _pr ?? throw "null pointer dereference")._posBases[(_idx : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
            if (_b != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L166"
                return _b?.__copy__();
            };
        };
        var _filename:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L170"
        {
            var _r = _pr._tempReader((2 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind), _idx, (13 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
            _filename = (_r.string() : stdgo.GoString)?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L180"
            if (_r.bool_()) {} else {
                var _pos = (_r._pos() : stdgo._internal.go.token.Token_pos.Pos);
                var _line = (_r.uint() : stdgo.GoUInt);
                var _col = (_r.uint() : stdgo.GoUInt);
                {
                    _pos;
                    _line;
                    _col;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L190"
            _pr._retireReader(_r);
        };
        var _b = (_filename?.__copy__() : stdgo.GoString);
        (@:checkr _pr ?? throw "null pointer dereference")._posBases[(_idx : stdgo.GoInt)] = _b?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L194"
        return _b?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _retireReader( _pr:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>, _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):Void {
        @:recv var _pr:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader> = _pr;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L142"
        _pr.retireDecoder((stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference").decoder) : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>));
    }
    @:keep
    @:tdfield
    static public function _tempReader( _pr:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>, _k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index, _marker:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> {
        @:recv var _pr:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader> = _pr;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L135"
        return (stdgo.Go.setRef(({ decoder : _pr.tempDecoder(_k, _idx, _marker)?.__copy__(), _p : _pr } : stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader)) : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
    }
    @:keep
    @:tdfield
    static public function _newReader( _pr:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>, _k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index, _marker:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> {
        @:recv var _pr:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader> = _pr;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L128"
        return (stdgo.Go.setRef(({ decoder : _pr.newDecoder(_k, _idx, _marker)?.__copy__(), _p : _pr } : stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader)) : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
    }
    @:keep
    @:tdfield
    static public function _later( _pr:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>, _fn:() -> Void):Void {
        @:recv var _pr:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader> = _pr;
        (@:checkr _pr ?? throw "null pointer dereference")._laterFns = ((@:checkr _pr ?? throw "null pointer dereference")._laterFns.__append__(_fn) : stdgo.Slice<() -> Void>);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function totalElems( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader):stdgo.GoInt return @:_5 __self__.totalElems();
    @:embedded
    @:embeddededffieldsffun
    public static function tempDecoderRaw( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder return @:_5 __self__.tempDecoderRaw(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function tempDecoder( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo._internal.internal.pkgbits.Pkgbits_index.Index, _2:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder return @:_5 __self__.tempDecoder(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function syncMarkers( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader):Bool return @:_5 __self__.syncMarkers();
    @:embedded
    @:embeddededffieldsffun
    public static function stringIdx( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.GoString return @:_5 __self__.stringIdx(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function retireDecoder( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>):Void return @:_5 __self__.retireDecoder(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function pkgPath( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader):stdgo.GoString return @:_5 __self__.pkgPath();
    @:embedded
    @:embeddededffieldsffun
    public static function peekPkgPath( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.GoString return @:_5 __self__.peekPkgPath(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function peekObj( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj; } return @:_5 __self__.peekObj(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function numElems( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind):stdgo.GoInt return @:_5 __self__.numElems(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function newDecoderRaw( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder return @:_5 __self__.newDecoderRaw(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function newDecoder( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo._internal.internal.pkgbits.Pkgbits_index.Index, _2:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder return @:_5 __self__.newDecoder(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function fingerprint( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader):stdgo.GoArray<stdgo.GoUInt8> return @:_5 __self__.fingerprint();
    @:embedded
    @:embeddededffieldsffun
    public static function dataIdx( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.GoString return @:_5 __self__.dataIdx(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function absIdx( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.GoInt return @:_5 __self__.absIdx(_0, _1);
}
