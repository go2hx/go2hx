package stdgo._internal.encoding.gob;
function _validUserType(_rt:stdgo._internal.reflect.Reflect_type_.Type_):{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>; var _1 : stdgo.Error; } {
        {
            var __tmp__ = @:check2 stdgo._internal.encoding.gob.Gob__usertypecache._userTypeCache.load(stdgo.Go.toInterface(_rt)), _ui:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return { _0 : (stdgo.Go.typeAssert((_ui : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>), _1 : (null : stdgo.Error) };
            };
        };
        var _ut = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>);
        (@:checkr _ut ?? throw "null pointer dereference")._base = _rt;
        (@:checkr _ut ?? throw "null pointer dereference")._user = _rt;
        var _slowpoke = ((@:checkr _ut ?? throw "null pointer dereference")._base : stdgo._internal.reflect.Reflect_type_.Type_);
        while (true) {
            var _pt = ((@:checkr _ut ?? throw "null pointer dereference")._base : stdgo._internal.reflect.Reflect_type_.Type_);
            if (_pt.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                break;
            };
            (@:checkr _ut ?? throw "null pointer dereference")._base = _pt.elem();
            if (((@:checkr _ut ?? throw "null pointer dereference")._base.string() : String) == (_slowpoke.string() : String)) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((("can\'t represent recursive pointer type " : stdgo.GoString) + ((@:checkr _ut ?? throw "null pointer dereference")._base.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            if (((@:checkr _ut ?? throw "null pointer dereference")._indir % (2 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                _slowpoke = _slowpoke.elem();
            };
            (@:checkr _ut ?? throw "null pointer dereference")._indir++;
        };
        {
            var __tmp__ = stdgo._internal.encoding.gob.Gob__implementsinterface._implementsInterface((@:checkr _ut ?? throw "null pointer dereference")._user, stdgo._internal.encoding.gob.Gob__gobencoderinterfacetype._gobEncoderInterfaceType), _ok:Bool = __tmp__._0, _indir:stdgo.GoInt8 = __tmp__._1;
            if (_ok) {
                {
                    final __tmp__0 = (1 : stdgo.GoInt);
                    final __tmp__1 = _indir;
                    (@:checkr _ut ?? throw "null pointer dereference")._externalEnc = __tmp__0;
                    (@:checkr _ut ?? throw "null pointer dereference")._encIndir = __tmp__1;
                };
            } else {
                var __tmp__ = stdgo._internal.encoding.gob.Gob__implementsinterface._implementsInterface((@:checkr _ut ?? throw "null pointer dereference")._user, stdgo._internal.encoding.gob.Gob__binarymarshalerinterfacetype._binaryMarshalerInterfaceType), _ok:Bool = __tmp__._0, _indir:stdgo.GoInt8 = __tmp__._1;
                if (_ok) {
                    {
                        final __tmp__0 = (2 : stdgo.GoInt);
                        final __tmp__1 = _indir;
                        (@:checkr _ut ?? throw "null pointer dereference")._externalEnc = __tmp__0;
                        (@:checkr _ut ?? throw "null pointer dereference")._encIndir = __tmp__1;
                    };
                };
            };
        };
        {
            var __tmp__ = stdgo._internal.encoding.gob.Gob__implementsinterface._implementsInterface((@:checkr _ut ?? throw "null pointer dereference")._user, stdgo._internal.encoding.gob.Gob__gobdecoderinterfacetype._gobDecoderInterfaceType), _ok:Bool = __tmp__._0, _indir:stdgo.GoInt8 = __tmp__._1;
            if (_ok) {
                {
                    final __tmp__0 = (1 : stdgo.GoInt);
                    final __tmp__1 = _indir;
                    (@:checkr _ut ?? throw "null pointer dereference")._externalDec = __tmp__0;
                    (@:checkr _ut ?? throw "null pointer dereference")._decIndir = __tmp__1;
                };
            } else {
                var __tmp__ = stdgo._internal.encoding.gob.Gob__implementsinterface._implementsInterface((@:checkr _ut ?? throw "null pointer dereference")._user, stdgo._internal.encoding.gob.Gob__binaryunmarshalerinterfacetype._binaryUnmarshalerInterfaceType), _ok:Bool = __tmp__._0, _indir:stdgo.GoInt8 = __tmp__._1;
                if (_ok) {
                    {
                        final __tmp__0 = (2 : stdgo.GoInt);
                        final __tmp__1 = _indir;
                        (@:checkr _ut ?? throw "null pointer dereference")._externalDec = __tmp__0;
                        (@:checkr _ut ?? throw "null pointer dereference")._decIndir = __tmp__1;
                    };
                };
            };
        };
        var __tmp__ = @:check2 stdgo._internal.encoding.gob.Gob__usertypecache._userTypeCache.loadOrStore(stdgo.Go.toInterface(_rt), stdgo.Go.toInterface(stdgo.Go.asInterface(_ut))), _ui:stdgo.AnyInterface = __tmp__._0, __16:Bool = __tmp__._1;
        return { _0 : (stdgo.Go.typeAssert((_ui : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>), _1 : (null : stdgo.Error) };
    }
