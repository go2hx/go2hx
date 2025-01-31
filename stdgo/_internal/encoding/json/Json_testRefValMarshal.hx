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
function testRefValMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = ({ r0 : (12 : stdgo._internal.encoding.json.Json_Ref.Ref), r1 : stdgo.Go.pointer(((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_Ref.Ref)), r2 : (14 : stdgo._internal.encoding.json.Json_RefText.RefText), r3 : stdgo.Go.pointer(((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_RefText.RefText)), v0 : (13 : stdgo._internal.encoding.json.Json_Val.Val), v1 : stdgo.Go.pointer(((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_Val.Val)), v2 : (15 : stdgo._internal.encoding.json.Json_ValText.ValText), v3 : stdgo.Go.pointer(((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_ValText.ValText)) } : stdgo._internal.encoding.json.Json_T__struct_22.T__struct_22);
        {};
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_22.T__struct_22>)))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("Marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _got = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (("{\"R0\":\"ref\",\"R1\":\"ref\",\"R2\":\"\\\"ref\\\"\",\"R3\":\"\\\"ref\\\"\",\"V0\":\"val\",\"V1\":\"val\",\"V2\":\"\\\"val\\\"\",\"V3\":\"\\\"val\\\"\"}" : stdgo.GoString))) {
                @:check2r _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("{\"R0\":\"ref\",\"R1\":\"ref\",\"R2\":\"\\\"ref\\\"\",\"R3\":\"\\\"ref\\\"\",\"V0\":\"val\",\"V1\":\"val\",\"V2\":\"\\\"val\\\"\",\"V3\":\"\\\"val\\\"\"}" : stdgo.GoString)));
            };
        };
    }
