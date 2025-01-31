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
@:keep @:allow(stdgo._internal.encoding.json.Json.T_unmarshaler_asInterface) class T_unmarshaler_static_extension {
    @:keep
    @:tdfield
    static public function unmarshalJSON( _u:stdgo.Ref<stdgo._internal.encoding.json.Json_T_unmarshaler.T_unmarshaler>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _u:stdgo.Ref<stdgo._internal.encoding.json.Json_T_unmarshaler.T_unmarshaler> = _u;
        {
            var __tmp__ = (new stdgo._internal.encoding.json.Json_T_unmarshaler.T_unmarshaler(true) : stdgo._internal.encoding.json.Json_T_unmarshaler.T_unmarshaler);
            var x = (_u : stdgo._internal.encoding.json.Json_T_unmarshaler.T_unmarshaler);
            x.t = __tmp__?.t;
        };
        return (null : stdgo.Error);
    }
}
