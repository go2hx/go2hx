package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
function _validUserType(_rt:stdgo._internal.reflect.Reflect_Type_.Type_):{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>; var _1 : stdgo.Error; } {
        {
            var __tmp__ = @:check2 stdgo._internal.encoding.gob.Gob__userTypeCache._userTypeCache.load(stdgo.Go.toInterface(_rt)), _ui:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return { _0 : (stdgo.Go.typeAssert((_ui : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>), _1 : (null : stdgo.Error) };
            };
        };
        var _ut = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>);
        (@:checkr _ut ?? throw "null pointer dereference")._base = _rt;
        (@:checkr _ut ?? throw "null pointer dereference")._user = _rt;
        var _slowpoke = ((@:checkr _ut ?? throw "null pointer dereference")._base : stdgo._internal.reflect.Reflect_Type_.Type_);
        while (true) {
            var _pt = ((@:checkr _ut ?? throw "null pointer dereference")._base : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (_pt.kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
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
            var __tmp__ = stdgo._internal.encoding.gob.Gob__implementsInterface._implementsInterface((@:checkr _ut ?? throw "null pointer dereference")._user, stdgo._internal.encoding.gob.Gob__gobEncoderInterfaceType._gobEncoderInterfaceType), _ok:Bool = __tmp__._0, _indir:stdgo.GoInt8 = __tmp__._1;
            if (_ok) {
                {
                    final __tmp__0 = (1 : stdgo.GoInt);
                    final __tmp__1 = _indir;
                    (@:checkr _ut ?? throw "null pointer dereference")._externalEnc = __tmp__0;
                    (@:checkr _ut ?? throw "null pointer dereference")._encIndir = __tmp__1;
                };
            } else {
                var __tmp__ = stdgo._internal.encoding.gob.Gob__implementsInterface._implementsInterface((@:checkr _ut ?? throw "null pointer dereference")._user, stdgo._internal.encoding.gob.Gob__binaryMarshalerInterfaceType._binaryMarshalerInterfaceType), _ok:Bool = __tmp__._0, _indir:stdgo.GoInt8 = __tmp__._1;
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
            var __tmp__ = stdgo._internal.encoding.gob.Gob__implementsInterface._implementsInterface((@:checkr _ut ?? throw "null pointer dereference")._user, stdgo._internal.encoding.gob.Gob__gobDecoderInterfaceType._gobDecoderInterfaceType), _ok:Bool = __tmp__._0, _indir:stdgo.GoInt8 = __tmp__._1;
            if (_ok) {
                {
                    final __tmp__0 = (1 : stdgo.GoInt);
                    final __tmp__1 = _indir;
                    (@:checkr _ut ?? throw "null pointer dereference")._externalDec = __tmp__0;
                    (@:checkr _ut ?? throw "null pointer dereference")._decIndir = __tmp__1;
                };
            } else {
                var __tmp__ = stdgo._internal.encoding.gob.Gob__implementsInterface._implementsInterface((@:checkr _ut ?? throw "null pointer dereference")._user, stdgo._internal.encoding.gob.Gob__binaryUnmarshalerInterfaceType._binaryUnmarshalerInterfaceType), _ok:Bool = __tmp__._0, _indir:stdgo.GoInt8 = __tmp__._1;
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
        var __tmp__ = @:check2 stdgo._internal.encoding.gob.Gob__userTypeCache._userTypeCache.loadOrStore(stdgo.Go.toInterface(_rt), stdgo.Go.toInterface(stdgo.Go.asInterface(_ut))), _ui:stdgo.AnyInterface = __tmp__._0, __16:Bool = __tmp__._1;
        return { _0 : (stdgo.Go.typeAssert((_ui : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>), _1 : (null : stdgo.Error) };
    }
