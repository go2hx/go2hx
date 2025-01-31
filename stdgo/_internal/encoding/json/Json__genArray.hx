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
function _genArray(_n:stdgo.GoInt):stdgo.Slice<stdgo.AnyInterface> {
        var _f = ((stdgo._internal.math.Math_abs.abs(stdgo._internal.math.rand.Rand_normFloat64.normFloat64()) * stdgo._internal.math.Math_min.min((10 : stdgo.GoFloat64), ((_n / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoInt);
        if ((_f > _n : Bool)) {
            _f = _n;
        };
        if ((_f < (1 : stdgo.GoInt) : Bool)) {
            _f = (1 : stdgo.GoInt);
        };
        var _x = (new stdgo.Slice<stdgo.AnyInterface>((_f : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
        for (_i => _ in _x) {
            _x[(_i : stdgo.GoInt)] = stdgo._internal.encoding.json.Json__genValue._genValue(((((((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) * _n : stdgo.GoInt)) / _f : stdgo.GoInt) - (((_i * _n : stdgo.GoInt)) / _f : stdgo.GoInt) : stdgo.GoInt));
        };
        return _x;
    }
