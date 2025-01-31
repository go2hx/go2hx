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
function testStructTagObjectKey(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__4 => _tt in stdgo._internal.encoding.json.Json__structTagObjectKeyTests._structTagObjectKeyTests) {
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_tt._raw), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatalf(("Marshal(%#q) failed: %v" : stdgo.GoString), _tt._raw, stdgo.Go.toInterface(_err));
            };
            var _f:stdgo.AnyInterface = (null : stdgo.AnyInterface);
            _err = stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_b, stdgo.Go.toInterface((stdgo.Go.setRef(_f) : stdgo.Ref<stdgo.AnyInterface>)));
            if (_err != null) {
                @:check2r _t.fatalf(("Unmarshal(%#q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_err));
            };
            for (_i => _v in (stdgo.Go.typeAssert((_f : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)) {
                {
                    final __value__ = _i;
                    if (__value__ == (_tt._key)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_v : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            }, _s = __tmp__._0, _ok = __tmp__._1;
                            if ((!_ok || (_s != _tt._value) : Bool)) {
                                @:check2r _t.fatalf(("Unexpected value: %#q, want %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._value));
                            };
                        };
                    } else {
                        @:check2r _t.fatalf(("Unexpected key: %#q, from %#q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_b));
                    };
                };
            };
        };
    }
