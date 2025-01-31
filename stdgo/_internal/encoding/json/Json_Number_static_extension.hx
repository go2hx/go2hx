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
@:keep @:allow(stdgo._internal.encoding.json.Json.Number_asInterface) class Number_static_extension {
    @:keep
    @:tdfield
    static public function int64( _n:stdgo._internal.encoding.json.Json_Number.Number):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo._internal.encoding.json.Json_Number.Number = _n;
        return stdgo._internal.strconv.Strconv_parseInt.parseInt((_n : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function float64( _n:stdgo._internal.encoding.json.Json_Number.Number):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo._internal.encoding.json.Json_Number.Number = _n;
        return stdgo._internal.strconv.Strconv_parseFloat.parseFloat((_n : stdgo.GoString)?.__copy__(), (64 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function string( _n:stdgo._internal.encoding.json.Json_Number.Number):stdgo.GoString {
        @:recv var _n:stdgo._internal.encoding.json.Json_Number.Number = _n;
        return (_n : stdgo.GoString)?.__copy__();
    }
}
