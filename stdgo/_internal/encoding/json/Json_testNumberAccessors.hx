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
function testNumberAccessors(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__4 => _tt in stdgo._internal.encoding.json.Json__numberTests._numberTests) {
            var _n = (_tt._in : stdgo._internal.encoding.json.Json_Number.Number);
            {
                var _s = ((_n.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_tt._in)) {
                    @:check2r _t.errorf(("Number(%q).String() is %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_s));
                };
            };
            {
                var __tmp__ = _n.int64(), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null && _tt._intErr == (stdgo.Go.str()) : Bool) && (_i != _tt._i) : Bool)) {
                    @:check2r _t.errorf(("Number(%q).Int64() is %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_i));
                } else if (((((_err == null) && (_tt._intErr != stdgo.Go.str()) : Bool)) || (((_err != null) && (_err.error() != _tt._intErr) : Bool)) : Bool)) {
                    @:check2r _t.errorf(("Number(%q).Int64() wanted error %q but got: %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._intErr), stdgo.Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = _n.float64(), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null && _tt._floatErr == (stdgo.Go.str()) : Bool) && (_f != _tt._f) : Bool)) {
                    @:check2r _t.errorf(("Number(%q).Float64() is %g" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_f));
                } else if (((((_err == null) && (_tt._floatErr != stdgo.Go.str()) : Bool)) || (((_err != null) && (_err.error() != _tt._floatErr) : Bool)) : Bool)) {
                    @:check2r _t.errorf(("Number(%q).Float64() wanted error %q but got: %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._floatErr), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
