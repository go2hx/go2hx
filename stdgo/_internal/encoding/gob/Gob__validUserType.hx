package stdgo._internal.encoding.gob;
function _validUserType(_rt:stdgo._internal.reflect.Reflect_Type_.Type_):{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>; var _1 : stdgo.Error; } {
        {
            var __tmp__ = stdgo._internal.encoding.gob.Gob__userTypeCache._userTypeCache.load(stdgo.Go.toInterface(_rt)), _ui:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return { _0 : (stdgo.Go.typeAssert((_ui : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>), _1 : (null : stdgo.Error) };
            };
        };
        var _ut = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>);
        _ut._base = _rt;
        _ut._user = _rt;
        var _slowpoke = (_ut._base : stdgo._internal.reflect.Reflect_Type_.Type_);
        while (true) {
            var _pt = (_ut._base : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (_pt.kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                break;
            };
            _ut._base = _pt.elem();
            if ((_ut._base.string() : String) == (_slowpoke.string() : String)) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((("can\'t represent recursive pointer type " : stdgo.GoString) + (_ut._base.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            if ((_ut._indir % (2 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                _slowpoke = _slowpoke.elem();
            };
            _ut._indir++;
        };
        {
            var __tmp__ = stdgo._internal.encoding.gob.Gob__implementsInterface._implementsInterface(_ut._user, stdgo._internal.encoding.gob.Gob__gobEncoderInterfaceType._gobEncoderInterfaceType), _ok:Bool = __tmp__._0, _indir:stdgo.GoInt8 = __tmp__._1;
            if (_ok) {
                {
                    final __tmp__0 = (1 : stdgo.GoInt);
                    final __tmp__1 = _indir;
                    _ut._externalEnc = __tmp__0;
                    _ut._encIndir = __tmp__1;
                };
            } else {
                var __tmp__ = stdgo._internal.encoding.gob.Gob__implementsInterface._implementsInterface(_ut._user, stdgo._internal.encoding.gob.Gob__binaryMarshalerInterfaceType._binaryMarshalerInterfaceType), _ok:Bool = __tmp__._0, _indir:stdgo.GoInt8 = __tmp__._1;
                if (_ok) {
                    {
                        final __tmp__0 = (2 : stdgo.GoInt);
                        final __tmp__1 = _indir;
                        _ut._externalEnc = __tmp__0;
                        _ut._encIndir = __tmp__1;
                    };
                };
            };
        };
        {
            var __tmp__ = stdgo._internal.encoding.gob.Gob__implementsInterface._implementsInterface(_ut._user, stdgo._internal.encoding.gob.Gob__gobDecoderInterfaceType._gobDecoderInterfaceType), _ok:Bool = __tmp__._0, _indir:stdgo.GoInt8 = __tmp__._1;
            if (_ok) {
                {
                    final __tmp__0 = (1 : stdgo.GoInt);
                    final __tmp__1 = _indir;
                    _ut._externalDec = __tmp__0;
                    _ut._decIndir = __tmp__1;
                };
            } else {
                var __tmp__ = stdgo._internal.encoding.gob.Gob__implementsInterface._implementsInterface(_ut._user, stdgo._internal.encoding.gob.Gob__binaryUnmarshalerInterfaceType._binaryUnmarshalerInterfaceType), _ok:Bool = __tmp__._0, _indir:stdgo.GoInt8 = __tmp__._1;
                if (_ok) {
                    {
                        final __tmp__0 = (2 : stdgo.GoInt);
                        final __tmp__1 = _indir;
                        _ut._externalDec = __tmp__0;
                        _ut._decIndir = __tmp__1;
                    };
                };
            };
        };
        var __tmp__ = stdgo._internal.encoding.gob.Gob__userTypeCache._userTypeCache.loadOrStore(stdgo.Go.toInterface(_rt), stdgo.Go.toInterface(_ut)), _ui:stdgo.AnyInterface = __tmp__._0, __16:Bool = __tmp__._1;
        return { _0 : (stdgo.Go.typeAssert((_ui : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>), _1 : (null : stdgo.Error) };
    }
