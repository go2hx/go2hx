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
@:keep @:allow(stdgo._internal.encoding.json.Json.T_u8marshal_asInterface) class T_u8marshal_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function unmarshalText( _u8:stdgo.Pointer<stdgo._internal.encoding.json.Json_T_u8marshal.T_u8marshal>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        if (!stdgo._internal.bytes.Bytes_hasPrefix.hasPrefix(_b, (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(117 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))) {
            return stdgo._internal.encoding.json.Json__errMissingU8Prefix._errMissingU8Prefix;
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(((_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _u8.value = (_n : stdgo._internal.encoding.json.Json_T_u8marshal.T_u8marshal);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalText( _u8:stdgo._internal.encoding.json.Json_T_u8marshal.T_u8marshal):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _u8:stdgo._internal.encoding.json.Json_T_u8marshal.T_u8marshal = _u8;
        return { _0 : (stdgo._internal.fmt.Fmt_sprintf.sprintf(("u%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_u8))) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}
