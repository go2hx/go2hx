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
function testSliceOfCustomByte(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _a = (("hello" : stdgo.GoString) : stdgo.Slice<stdgo._internal.encoding.json.Json_T_testSliceOfCustomByte___localname___Uint8_47988.T_testSliceOfCustomByte___localname___Uint8_47988>);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_a)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _b:stdgo.Slice<stdgo._internal.encoding.json.Json_T_testSliceOfCustomByte___localname___Uint8_47988.T_testSliceOfCustomByte___localname___Uint8_47988> = (null : stdgo.Slice<stdgo._internal.encoding.json.Json_T_testSliceOfCustomByte___localname___Uint8_47988.T_testSliceOfCustomByte___localname___Uint8_47988>);
        _err = stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, stdgo.Go.toInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.json.Json_T_testSliceOfCustomByte___localname___Uint8_47988.T_testSliceOfCustomByte___localname___Uint8_47988>>)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))) {
            @:check2r _t.fatalf(("expected %v == %v" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b));
        };
    }
