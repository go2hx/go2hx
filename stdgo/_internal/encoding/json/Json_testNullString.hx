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
function testNullString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _data = (("{\"A\": \"1\", \"B\": null, \"C\": null}" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _s:stdgo._internal.encoding.json.Json_T_testNullString___localname___T_41259.T_testNullString___localname___T_41259 = ({} : stdgo._internal.encoding.json.Json_T_testNullString___localname___T_41259.T_testNullString___localname___T_41259);
        _s.b = (1 : stdgo.GoInt);
        _s.c = stdgo.Go.pointer((0 : stdgo.GoInt));
        _s.c.value = (2 : stdgo.GoInt);
        var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testNullString___localname___T_41259.T_testNullString___localname___T_41259>)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (((_s.b != (1 : stdgo.GoInt)) || (_s.c != null) : Bool)) {
            @:check2r _t.fatalf(("after Unmarshal, s.B=%d, s.C=%p, want 1, nil" : stdgo.GoString), stdgo.Go.toInterface(_s.b), stdgo.Go.toInterface(_s.c));
        };
    }
