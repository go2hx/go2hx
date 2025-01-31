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
function testHTMLEscape(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer), __1:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
var _want = __1, _b = __0;
        var _m = ("{\"M\":\"<html>foo &\u2028 \u2029</html>\"}" : stdgo.GoString);
        @:check2 _want.write((("{\"M\":\"\\u003chtml\\u003efoo \\u0026\\u2028 \\u2029\\u003c/html\\u003e\"}" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        stdgo._internal.encoding.json.Json_hTMLEscape.hTMLEscape((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), (_m : stdgo.Slice<stdgo.GoUInt8>));
        if (!stdgo._internal.bytes.Bytes_equal.equal(@:check2 _b.bytes(), @:check2 _want.bytes())) {
            @:check2r _t.errorf(("HTMLEscape(&b, []byte(m)) = %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(@:check2 _b.bytes()), stdgo.Go.toInterface(@:check2 _want.bytes()));
        };
    }
