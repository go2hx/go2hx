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
function testUnmarshalInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _xint:stdgo._internal.encoding.json.Json_Xint.Xint = ({} : stdgo._internal.encoding.json.Json_Xint.Xint);
        var _i:stdgo.AnyInterface = stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_xint) : stdgo.Ref<stdgo._internal.encoding.json.Json_Xint.Xint>)));
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((("{\"X\":1}" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface((stdgo.Go.setRef(_i) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if (_xint.x != ((1 : stdgo.GoInt))) {
            @:check2r _t.fatalf(("Did not write to xint" : stdgo.GoString));
        };
    }
