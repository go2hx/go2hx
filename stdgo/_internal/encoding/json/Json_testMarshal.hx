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
function testMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.encoding.json.Json__allValue._allValue))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("Marshal allValue: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_b : stdgo.GoString) != (stdgo._internal.encoding.json.Json__allValueCompact._allValueCompact)) {
            @:check2r _t.errorf(("Marshal allValueCompact" : stdgo.GoString));
            stdgo._internal.encoding.json.Json__diff._diff(_t, _b, (stdgo._internal.encoding.json.Json__allValueCompact._allValueCompact : stdgo.Slice<stdgo.GoUInt8>));
            return;
        };
        {
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.encoding.json.Json__pallValue._pallValue)));
            _b = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _t.fatalf(("Marshal pallValue: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_b : stdgo.GoString) != (stdgo._internal.encoding.json.Json__pallValueCompact._pallValueCompact)) {
            @:check2r _t.errorf(("Marshal pallValueCompact" : stdgo.GoString));
            stdgo._internal.encoding.json.Json__diff._diff(_t, _b, (stdgo._internal.encoding.json.Json__pallValueCompact._pallValueCompact : stdgo.Slice<stdgo.GoUInt8>));
            return;
        };
    }
