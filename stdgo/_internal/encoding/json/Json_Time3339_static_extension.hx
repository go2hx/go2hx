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
@:keep @:allow(stdgo._internal.encoding.json.Json.Time3339_asInterface) class Time3339_static_extension {
    @:keep
    @:tdfield
    static public function unmarshalJSON( _t:stdgo.Ref<stdgo._internal.encoding.json.Json_Time3339.Time3339>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.encoding.json.Json_Time3339.Time3339> = _t;
        if (((((_b.length) < (2 : stdgo.GoInt) : Bool) || _b[(0 : stdgo.GoInt)] != ((34 : stdgo.GoUInt8)) : Bool) || (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != (34 : stdgo.GoUInt8)) : Bool)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("types: failed to unmarshal non-string value %q as an RFC 3339 time" : stdgo.GoString), stdgo.Go.toInterface(_b));
        };
        var __tmp__ = stdgo._internal.time.Time_parse.parse(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ((_b.__slice__((1 : stdgo.GoInt), ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__()), _tm:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = (({
                final e = _tm;
                ({ _wall : e._wall, _ext : e._ext, _loc : e._loc } : stdgo._internal.encoding.json.Json_Time3339.Time3339);
            }));
            var x = (_t : stdgo._internal.encoding.json.Json_Time3339.Time3339);
            x._wall = __tmp__?._wall;
            x._ext = __tmp__?._ext;
            x._loc = __tmp__?._loc;
        };
        return (null : stdgo.Error);
    }
}
