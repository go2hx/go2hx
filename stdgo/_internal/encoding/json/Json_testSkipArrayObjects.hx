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
function testSkipArrayObjects(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _json = ("[{}]" : stdgo.GoString);
        var _dest:stdgo.GoArray<stdgo.AnyInterface> = new stdgo.GoArray<stdgo.AnyInterface>(0, 0);
        var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_json : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface((stdgo.Go.setRef(_dest) : stdgo.Ref<stdgo.GoArray<stdgo.AnyInterface>>))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.errorf(("got error %q, want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
