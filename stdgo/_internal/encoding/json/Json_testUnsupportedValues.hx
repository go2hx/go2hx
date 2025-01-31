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
function testUnsupportedValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__4 => _v in stdgo._internal.encoding.json.Json__unsupportedValues._unsupportedValues) {
            {
                var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_v), __5:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError>)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError>), _1 : false };
                        }, __6 = __tmp__._0, _ok = __tmp__._1;
                        if (!_ok) {
                            @:check2r _t.errorf(("for %v, got %T want UnsupportedValueError" : stdgo.GoString), _v, stdgo.Go.toInterface(_err));
                        };
                    };
                } else {
                    @:check2r _t.errorf(("for %v, expected error" : stdgo.GoString), _v);
                };
            };
        };
    }
