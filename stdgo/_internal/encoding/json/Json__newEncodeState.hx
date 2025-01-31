package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.Math;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.os.Os;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.math.big.Big;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.testing.Testing;
import stdgo._internal.log.Log;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.net.Net;
import stdgo._internal.net.http.httptest.Httptest;
import stdgo._internal.net.http.Http;
function _newEncodeState():stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState> {
        {
            var _v = (@:check2 stdgo._internal.encoding.json.Json__encodeStatePool._encodeStatePool.get() : stdgo.AnyInterface);
            if (_v != null) {
                var _e = (stdgo.Go.typeAssert((_v : stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>)) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>);
                @:check2r _e.reset();
                if ((((@:checkr _e ?? throw "null pointer dereference")._ptrSeen.length) > (0 : stdgo.GoInt) : Bool)) {
                    throw stdgo.Go.toInterface(("ptrEncoder.encode should have emptied ptrSeen via defers" : stdgo.GoString));
                };
                (@:checkr _e ?? throw "null pointer dereference")._ptrLevel = (0u32 : stdgo.GoUInt);
                return _e;
            };
        };
        return (stdgo.Go.setRef(({ _ptrSeen : ({
            final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue);
            {};
            cast x;
        } : stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>) } : stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState)) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>);
    }
