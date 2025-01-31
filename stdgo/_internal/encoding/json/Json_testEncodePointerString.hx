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
function testEncodePointerString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _n:stdgo.GoInt64 = (42i64 : stdgo.GoInt64);
        var _n__pointer__ = stdgo.Go.pointer(_n);
        var _n__pointer__ = stdgo.Go.pointer(_n);
        var _n__pointer__ = stdgo.Go.pointer(_n);
        var _n__pointer__ = stdgo.Go.pointer(_n);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(({ n : _n__pointer__ } : stdgo._internal.encoding.json.Json_T_testEncodePointerString___localname___stringPointer_16452.T_testEncodePointerString___localname___stringPointer_16452)))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("Marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __0 = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ("{\"n\":\"42\"}" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                @:check2r _t.errorf(("Marshal = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        var _back:stdgo._internal.encoding.json.Json_T_testEncodePointerString___localname___stringPointer_16452.T_testEncodePointerString___localname___stringPointer_16452 = ({} : stdgo._internal.encoding.json.Json_T_testEncodePointerString___localname___stringPointer_16452.T_testEncodePointerString___localname___stringPointer_16452);
        _err = stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_b, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_back) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testEncodePointerString___localname___stringPointer_16452.T_testEncodePointerString___localname___stringPointer_16452>))));
        if (_err != null) {
            @:check2r _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_back.n == null) {
            @:check2r _t.fatalf(("Unmarshaled nil N field" : stdgo.GoString));
        };
        if (_back.n.value != ((42i64 : stdgo.GoInt64))) {
            @:check2r _t.fatalf(("*N = %d; want 42" : stdgo.GoString), stdgo.Go.toInterface(_back.n.value));
        };
    }
