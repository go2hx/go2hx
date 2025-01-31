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
function _stateInStringEsc(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        {
            final __value__ = _c;
            if (__value__ == ((98 : stdgo.GoUInt8)) || __value__ == ((102 : stdgo.GoUInt8)) || __value__ == ((110 : stdgo.GoUInt8)) || __value__ == ((114 : stdgo.GoUInt8)) || __value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((92 : stdgo.GoUInt8)) || __value__ == ((47 : stdgo.GoUInt8)) || __value__ == ((34 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateInString._stateInString;
                return (0 : stdgo.GoInt);
            } else if (__value__ == ((117 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateInStringEscU._stateInStringEscU;
                return (0 : stdgo.GoInt);
            };
        };
        return @:check2r _s._error(_c, ("in string escape code" : stdgo.GoString));
    }
