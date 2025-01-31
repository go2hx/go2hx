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
function testInvalidUnmarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf = (("{\"a\":\"1\"}" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        for (__4 => _tt in stdgo._internal.encoding.json.Json__invalidUnmarshalTests._invalidUnmarshalTests) {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_buf, _tt._v) : stdgo.Error);
            if (_err == null) {
                @:check2r _t.errorf(("Unmarshal expecting error, got nil" : stdgo.GoString));
                continue;
            };
            {
                var _got = (_err.error()?.__copy__() : stdgo.GoString);
                if (_got != (_tt._want)) {
                    @:check2r _t.errorf(("Unmarshal = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
