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
function testEncoderIndent(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var _enc = stdgo._internal.encoding.json.Json_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)));
        @:check2r _enc.setIndent((">" : stdgo.GoString), ("." : stdgo.GoString));
        for (__4 => _v in stdgo._internal.encoding.json.Json__streamTest._streamTest) {
            @:check2r _enc.encode(_v);
        };
        {
            var __0 = ((@:check2 _buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = (stdgo._internal.encoding.json.Json__streamEncodedIndent._streamEncodedIndent?.__copy__() : stdgo.GoString);
var _want = __1, _have = __0;
            if (_have != (_want)) {
                @:check2r _t.error(stdgo.Go.toInterface(("indented encoding mismatch" : stdgo.GoString)));
                stdgo._internal.encoding.json.Json__diff._diff(_t, (_have : stdgo.Slice<stdgo.GoUInt8>), (_want : stdgo.Slice<stdgo.GoUInt8>));
            };
        };
    }
