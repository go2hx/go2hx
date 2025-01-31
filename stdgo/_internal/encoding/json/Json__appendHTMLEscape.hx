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
function _appendHTMLEscape(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _start = (0 : stdgo.GoInt);
        for (_i => _c in _src) {
            if (((_c == ((60 : stdgo.GoUInt8)) || _c == ((62 : stdgo.GoUInt8)) : Bool) || (_c == (38 : stdgo.GoUInt8)) : Bool)) {
                _dst = (_dst.__append__(...((_src.__slice__(_start, _i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                _dst = (_dst.__append__((92 : stdgo.GoUInt8), (117 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), stdgo._internal.encoding.json.Json__hex._hex[((_c >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)], stdgo._internal.encoding.json.Json__hex._hex[((_c & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]));
                _start = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
            if ((((_c == ((226 : stdgo.GoUInt8)) && ((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_src.length) : Bool) : Bool) && _src[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((128 : stdgo.GoUInt8)) : Bool) && ((_src[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] & (((1 : stdgo.GoUInt8) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8) == (168 : stdgo.GoUInt8)) : Bool)) {
                _dst = (_dst.__append__(...((_src.__slice__(_start, _i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                _dst = (_dst.__append__((92 : stdgo.GoUInt8), (117 : stdgo.GoUInt8), (50 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), (50 : stdgo.GoUInt8), stdgo._internal.encoding.json.Json__hex._hex[((_src[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]));
                _start = (_i + (("\u2029" : stdgo.GoString).length) : stdgo.GoInt);
            };
        };
        return (_dst.__append__(...((_src.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
    }
