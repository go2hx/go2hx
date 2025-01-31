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
function testUnmarshalSyntax(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        for (__4 => _src in stdgo._internal.encoding.json.Json__unmarshalSyntaxTests._unmarshalSyntaxTests) {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_src : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>)) : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>), _1 : false };
                }, __5 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    @:check2r _t.errorf(("expected syntax error for Unmarshal(%q): got %T" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
