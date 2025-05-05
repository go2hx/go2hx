package stdgo._internal.encoding.gob;
function _validUserType(_rt:stdgo._internal.reflect.Reflect_type_.Type_):{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L45"
        {
            var __tmp__ = stdgo._internal.encoding.gob.Gob__usertypecache._userTypeCache.load(stdgo.Go.toInterface(_rt)), _ui:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L46"
                return { _0 : (stdgo.Go.typeAssert((_ui : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>), _1 : (null : stdgo.Error) };
            };
        };
        var _ut = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>);
        (@:checkr _ut ?? throw "null pointer dereference")._base = _rt;
        (@:checkr _ut ?? throw "null pointer dereference")._user = _rt;
        var _slowpoke = ((@:checkr _ut ?? throw "null pointer dereference")._base : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L62"
        while (true) {
            var _pt = ((@:checkr _ut ?? throw "null pointer dereference")._base : stdgo._internal.reflect.Reflect_type_.Type_);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L64"
            if (_pt.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L65"
                break;
            };
            (@:checkr _ut ?? throw "null pointer dereference")._base = _pt.elem();
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L68"
            if (((@:checkr _ut ?? throw "null pointer dereference")._base.string() : String) == (_slowpoke.string() : String)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L70"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((("can\'t represent recursive pointer type " : stdgo.GoString) + ((@:checkr _ut ?? throw "null pointer dereference")._base.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L72"
            if (((@:checkr _ut ?? throw "null pointer dereference")._indir % (2 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                _slowpoke = _slowpoke.elem();
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L75"
            (@:checkr _ut ?? throw "null pointer dereference")._indir++;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L78"
        {
            var __tmp__ = stdgo._internal.encoding.gob.Gob__implementsinterface._implementsInterface((@:checkr _ut ?? throw "null pointer dereference")._user, stdgo._internal.encoding.gob.Gob__gobencoderinterfacetype._gobEncoderInterfaceType), _ok:Bool = __tmp__._0, _indir:stdgo.GoInt8 = __tmp__._1;
            if (_ok) {
                {
                    final __tmp__0 = (1 : stdgo.GoInt);
                    final __tmp__1 = _indir;
                    (@:checkr _ut ?? throw "null pointer dereference")._externalEnc = @:binopAssign __tmp__0;
                    (@:checkr _ut ?? throw "null pointer dereference")._encIndir = @:binopAssign __tmp__1;
                };
            } else {
                var __tmp__ = stdgo._internal.encoding.gob.Gob__implementsinterface._implementsInterface((@:checkr _ut ?? throw "null pointer dereference")._user, stdgo._internal.encoding.gob.Gob__binarymarshalerinterfacetype._binaryMarshalerInterfaceType), _ok:Bool = __tmp__._0, _indir:stdgo.GoInt8 = __tmp__._1;
                if (_ok) {
                    {
                        final __tmp__0 = (2 : stdgo.GoInt);
                        final __tmp__1 = _indir;
                        (@:checkr _ut ?? throw "null pointer dereference")._externalEnc = @:binopAssign __tmp__0;
                        (@:checkr _ut ?? throw "null pointer dereference")._encIndir = @:binopAssign __tmp__1;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L90"
        {
            var __tmp__ = stdgo._internal.encoding.gob.Gob__implementsinterface._implementsInterface((@:checkr _ut ?? throw "null pointer dereference")._user, stdgo._internal.encoding.gob.Gob__gobdecoderinterfacetype._gobDecoderInterfaceType), _ok:Bool = __tmp__._0, _indir:stdgo.GoInt8 = __tmp__._1;
            if (_ok) {
                {
                    final __tmp__0 = (1 : stdgo.GoInt);
                    final __tmp__1 = _indir;
                    (@:checkr _ut ?? throw "null pointer dereference")._externalDec = @:binopAssign __tmp__0;
                    (@:checkr _ut ?? throw "null pointer dereference")._decIndir = @:binopAssign __tmp__1;
                };
            } else {
                var __tmp__ = stdgo._internal.encoding.gob.Gob__implementsinterface._implementsInterface((@:checkr _ut ?? throw "null pointer dereference")._user, stdgo._internal.encoding.gob.Gob__binaryunmarshalerinterfacetype._binaryUnmarshalerInterfaceType), _ok:Bool = __tmp__._0, _indir:stdgo.GoInt8 = __tmp__._1;
                if (_ok) {
                    {
                        final __tmp__0 = (2 : stdgo.GoInt);
                        final __tmp__1 = _indir;
                        (@:checkr _ut ?? throw "null pointer dereference")._externalDec = @:binopAssign __tmp__0;
                        (@:checkr _ut ?? throw "null pointer dereference")._decIndir = @:binopAssign __tmp__1;
                    };
                };
            };
        };
        var __tmp__ = stdgo._internal.encoding.gob.Gob__usertypecache._userTypeCache.loadOrStore(stdgo.Go.toInterface(_rt), stdgo.Go.toInterface(stdgo.Go.asInterface(_ut))), _ui:stdgo.AnyInterface = __tmp__._0, __16:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L102"
        return { _0 : (stdgo.Go.typeAssert((_ui : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>), _1 : (null : stdgo.Error) };
    }
