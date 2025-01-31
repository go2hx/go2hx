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
function fuzzDecoderToken(_f:stdgo.Ref<stdgo._internal.testing.Testing_F.F>):Void {
        @:check2r _f.add(stdgo.Go.toInterface((("{\n\"object\": {\n\t\"slice\": [\n\t\t1,\n\t\t2.0,\n\t\t\"3\",\n\t\t[4],\n\t\t{5: {}}\n\t]\n},\n\"slice\": [[]],\n\"string\": \":)\",\n\"int\": 1e5,\n\"float\": 3e-9\"\n}" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)));
        @:check2r _f.fuzz(stdgo.Go.toInterface(function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
            var _r = stdgo._internal.bytes.Bytes_newReader.newReader(_b);
            var _d = stdgo._internal.encoding.json.Json_newDecoder.newDecoder(stdgo.Go.asInterface(_r));
            while (true) {
                var __tmp__ = @:check2r _d.token(), __20:stdgo._internal.encoding.json.Json_Token.Token = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                        break;
                    };
                    return;
                };
            };
        }));
    }
