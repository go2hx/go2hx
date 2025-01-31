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
function fuzzUnmarshalJSON(_f:stdgo.Ref<stdgo._internal.testing.Testing_F.F>):Void {
        @:check2r _f.add(stdgo.Go.toInterface((("{\n\"object\": {\n\t\"slice\": [\n\t\t1,\n\t\t2.0,\n\t\t\"3\",\n\t\t[4],\n\t\t{5: {}}\n\t]\n},\n\"slice\": [[]],\n\"string\": \":)\",\n\"int\": 1e5,\n\"float\": 3e-9\"\n}" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)));
        @:check2r _f.fuzz(stdgo.Go.toInterface(function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
            for (__20 => _typ in (new stdgo.Slice<() -> stdgo.AnyInterface>(3, 3, ...[function():stdgo.AnyInterface {
                return stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.AnyInterface)) : stdgo.Ref<stdgo.AnyInterface>));
            }, function():stdgo.AnyInterface {
                return stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>));
            }, function():stdgo.AnyInterface {
                return stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.AnyInterface>)) : stdgo.Ref<stdgo.Slice<stdgo.AnyInterface>>));
            }]) : stdgo.Slice<() -> stdgo.AnyInterface>)) {
                var _i = (_typ() : stdgo.AnyInterface);
                {
                    var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_b, _i) : stdgo.Error);
                    if (_err != null) {
                        return;
                    };
                };
                var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_i), _encoded:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _t.fatalf(("failed to marshal: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                {
                    var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_encoded, _i) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _t.fatalf(("failed to roundtrip: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                };
            };
        }));
    }
