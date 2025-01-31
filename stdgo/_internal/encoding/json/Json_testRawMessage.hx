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
function testRawMessage(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data:stdgo._internal.encoding.json.Json_T__struct_42.T__struct_42 = ({ x : (0 : stdgo.GoFloat64), id : new stdgo._internal.encoding.json.Json_RawMessage.RawMessage(0, 0), y : (0 : stdgo.GoFloat32) } : stdgo._internal.encoding.json.Json_T__struct_42.T__struct_42);
        {};
        {};
        var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((("{\"X\":0.1,\"Id\":[\"\\u0056\",null],\"Y\":0.2}" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_data) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_42.T__struct_42>)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (((_data.id : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != (("[\"\\u0056\",null]" : stdgo.GoString))) {
            @:check2r _t.fatalf(("Raw mismatch: have %#q want %#q" : stdgo.GoString), stdgo.Go.toInterface((_data.id : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(("[\"\\u0056\",null]" : stdgo.GoString)));
        };
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_data) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_42.T__struct_42>)))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("Marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_b : stdgo.GoString) != (("{\"X\":0.1,\"Id\":[\"\\u0056\",null],\"Y\":0.2}" : stdgo.GoString))) {
            @:check2r _t.fatalf(("Marshal: have %#q want %#q" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(("{\"X\":0.1,\"Id\":[\"\\u0056\",null],\"Y\":0.2}" : stdgo.GoString)));
        };
    }
