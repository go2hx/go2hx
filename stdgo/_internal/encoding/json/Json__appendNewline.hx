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
function _appendNewline(_dst:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.GoString, _indent:stdgo.GoString, _depth:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        _dst = (_dst.__append__((10 : stdgo.GoUInt8)));
        _dst = (_dst.__append__(...(_prefix : Array<stdgo.GoUInt8>)));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _depth : Bool)) {
                _dst = (_dst.__append__(...(_indent : Array<stdgo.GoUInt8>)));
                _i++;
            };
        };
        return _dst;
    }
