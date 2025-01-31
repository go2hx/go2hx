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
@:keep @:allow(stdgo._internal.encoding.json.Json.T_byteWithMarshalText_asInterface) class T_byteWithMarshalText_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function unmarshalText( _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_T_byteWithMarshalText.T_byteWithMarshalText>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        if (((_data.length != (3 : stdgo.GoInt)) || (_data[(0 : stdgo.GoInt)] != (90 : stdgo.GoUInt8)) : Bool)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("bad quoted string" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(((_data.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), (16 : stdgo.GoInt), (8 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("bad hex" : stdgo.GoString));
        };
        _b.value = (_i : stdgo._internal.encoding.json.Json_T_byteWithMarshalText.T_byteWithMarshalText);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalText( _b:stdgo._internal.encoding.json.Json_T_byteWithMarshalText.T_byteWithMarshalText):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo._internal.encoding.json.Json_T_byteWithMarshalText.T_byteWithMarshalText = _b;
        return { _0 : (stdgo._internal.fmt.Fmt_sprintf.sprintf(("Z%.2x" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.GoUInt8))) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}
