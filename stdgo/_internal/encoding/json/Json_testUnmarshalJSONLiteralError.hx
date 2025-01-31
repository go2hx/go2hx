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
function testUnmarshalJSONLiteralError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _t3:stdgo._internal.encoding.json.Json_Time3339.Time3339 = ({} : stdgo._internal.encoding.json.Json_Time3339.Time3339);
        var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((("\"0000-00-00T00:00:00Z\"" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t3) : stdgo.Ref<stdgo._internal.encoding.json.Json_Time3339.Time3339>)))) : stdgo.Error);
        if (_err == null) {
            @:check2r _t.fatalf(("expected error; got time %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((({
                final e = _t3;
                ({ _wall : e._wall, _ext : e._ext, _loc : e._loc } : stdgo._internal.time.Time_Time.Time);
            })))));
        };
        if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("range" : stdgo.GoString))) {
            @:check2r _t.errorf(("got err = %v; want out of range error" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
