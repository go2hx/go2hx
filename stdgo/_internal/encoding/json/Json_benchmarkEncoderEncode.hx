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
function benchmarkEncoderEncode(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        @:check2r _b.reportAllocs();
        {};
        var _v = (stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_T_benchmarkEncoderEncode___localname___T_11092.T_benchmarkEncoderEncode___localname___T_11092(("foo" : stdgo.GoString), ("bar" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_T_benchmarkEncoderEncode___localname___T_11092.T_benchmarkEncoderEncode___localname___T_11092)) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_benchmarkEncoderEncode___localname___T_11092.T_benchmarkEncoderEncode___localname___T_11092>);
        @:check2r _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (@:check2r _pb.next()) {
                {
                    var _err = (@:check2r stdgo._internal.encoding.json.Json_newEncoder.newEncoder(stdgo._internal.io.Io_discard.discard).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_v))) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _b.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
