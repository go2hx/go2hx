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
function _genString(_stddev:stdgo.GoFloat64):stdgo.GoString {
        var _n = (stdgo._internal.math.Math_abs.abs(((stdgo._internal.math.rand.Rand_normFloat64.normFloat64() * _stddev : stdgo.GoFloat64) + (_stddev / (2 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoInt);
        var _c = (new stdgo.Slice<stdgo.GoInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        for (_i => _ in _c) {
            var _f = (stdgo._internal.math.Math_abs.abs(((stdgo._internal.math.rand.Rand_normFloat64.normFloat64() * (64 : stdgo.GoFloat64) : stdgo.GoFloat64) + (32 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
            if ((_f > (1.114111e+06 : stdgo.GoFloat64) : Bool)) {
                _f = (1.114111e+06 : stdgo.GoFloat64);
            };
            _c[(_i : stdgo.GoInt)] = (_f : stdgo.GoInt32);
        };
        return (_c : stdgo.GoString)?.__copy__();
    }
