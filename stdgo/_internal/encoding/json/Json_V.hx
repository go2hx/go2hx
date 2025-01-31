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
@:structInit @:using(stdgo._internal.encoding.json.Json_V_static_extension.V_static_extension) class V {
    public var f1 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var f2 : stdgo.GoInt32 = 0;
    public var f3 : stdgo._internal.encoding.json.Json_Number.Number = (("" : stdgo.GoString) : stdgo._internal.encoding.json.Json_Number.Number);
    public var f4 : stdgo.Ref<stdgo._internal.encoding.json.Json_VOuter.VOuter> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_VOuter.VOuter>);
    public function new(?f1:stdgo.AnyInterface, ?f2:stdgo.GoInt32, ?f3:stdgo._internal.encoding.json.Json_Number.Number, ?f4:stdgo.Ref<stdgo._internal.encoding.json.Json_VOuter.VOuter>) {
        if (f1 != null) this.f1 = f1;
        if (f2 != null) this.f2 = f2;
        if (f3 != null) this.f3 = f3;
        if (f4 != null) this.f4 = f4;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new V(f1, f2, f3, f4);
    }
}
