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
function testStringKind(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var __0:stdgo.GoMap<stdgo._internal.encoding.json.Json_T_testStringKind___localname___stringKind_47067.T_testStringKind___localname___stringKind_47067, stdgo.GoInt> = (null : stdgo.GoMap<stdgo._internal.encoding.json.Json_T_testStringKind___localname___stringKind_47067.T_testStringKind___localname___stringKind_47067, stdgo.GoInt>), __1:stdgo.GoMap<stdgo._internal.encoding.json.Json_T_testStringKind___localname___stringKind_47067.T_testStringKind___localname___stringKind_47067, stdgo.GoInt> = (null : stdgo.GoMap<stdgo._internal.encoding.json.Json_T_testStringKind___localname___stringKind_47067.T_testStringKind___localname___stringKind_47067, stdgo.GoInt>);
var _m2 = __1, _m1 = __0;
        _m1 = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set((("foo" : stdgo.GoString) : stdgo._internal.encoding.json.Json_T_testStringKind___localname___stringKind_47067.T_testStringKind___localname___stringKind_47067), (42 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.json.Json_T_testStringKind___localname___stringKind_47067.T_testStringKind___localname___stringKind_47067, stdgo.GoInt>);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_m1)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.errorf(("Unexpected error marshaling: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _err = stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, stdgo.Go.toInterface((stdgo.Go.setRef(_m2) : stdgo.Ref<stdgo.GoMap<stdgo._internal.encoding.json.Json_T_testStringKind___localname___stringKind_47067.T_testStringKind___localname___stringKind_47067, stdgo.GoInt>>)));
        if (_err != null) {
            @:check2r _t.errorf(("Unexpected error unmarshaling: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_m1), stdgo.Go.toInterface(_m2))) {
            @:check2r _t.error(stdgo.Go.toInterface(("Items should be equal after encoding and then decoding" : stdgo.GoString)));
        };
    }
