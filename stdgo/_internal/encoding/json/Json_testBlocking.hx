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
function testBlocking(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__4 => _enc in stdgo._internal.encoding.json.Json__blockingTests._blockingTests) {
            var __tmp__ = stdgo._internal.net.Net_pipe.pipe(), _r:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _w:stdgo._internal.net.Net_Conn.Conn = __tmp__._1;
            stdgo.Go.routine(() -> _w.write((_enc : stdgo.Slice<stdgo.GoUInt8>)));
            var _val:stdgo.AnyInterface = (null : stdgo.AnyInterface);
            {
                var _err = (@:check2r stdgo._internal.encoding.json.Json_newDecoder.newDecoder(_r).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_val) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
                if (_err != null) {
                    @:check2r _t.errorf(("decoding %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_enc), stdgo.Go.toInterface(_err));
                };
            };
            _r.close();
            _w.close();
        };
    }
