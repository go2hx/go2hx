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
function testRefUnmarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _want = ({ r0 : (12 : stdgo._internal.encoding.json.Json_Ref.Ref), r1 : stdgo.Go.pointer(((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_Ref.Ref)), r2 : (13 : stdgo._internal.encoding.json.Json_RefText.RefText), r3 : stdgo.Go.pointer(((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_RefText.RefText)) } : stdgo._internal.encoding.json.Json_T_testRefUnmarshal___localname___S_40168.T_testRefUnmarshal___localname___S_40168);
        _want.r1.value = (12 : stdgo._internal.encoding.json.Json_Ref.Ref);
        _want.r3.value = (13 : stdgo._internal.encoding.json.Json_RefText.RefText);
        var _got:stdgo._internal.encoding.json.Json_T_testRefUnmarshal___localname___S_40168.T_testRefUnmarshal___localname___S_40168 = ({} : stdgo._internal.encoding.json.Json_T_testRefUnmarshal___localname___S_40168.T_testRefUnmarshal___localname___S_40168);
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((("{\"R0\":\"ref\",\"R1\":\"ref\",\"R2\":\"ref\",\"R3\":\"ref\"}" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_got) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testRefUnmarshal___localname___S_40168.T_testRefUnmarshal___localname___S_40168>)))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))) {
            @:check2r _t.errorf(("got %+v, want %+v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
        };
    }
