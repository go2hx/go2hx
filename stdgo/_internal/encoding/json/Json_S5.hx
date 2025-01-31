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
@:structInit @:using(stdgo._internal.encoding.json.Json_S5_static_extension.S5_static_extension) class S5 {
    @:embedded
    public var s6 : stdgo._internal.encoding.json.Json_S6.S6 = ({} : stdgo._internal.encoding.json.Json_S6.S6);
    @:embedded
    public var s7 : stdgo._internal.encoding.json.Json_S7.S7 = ({} : stdgo._internal.encoding.json.Json_S7.S7);
    @:embedded
    public var s8 : stdgo._internal.encoding.json.Json_S8.S8 = ({} : stdgo._internal.encoding.json.Json_S8.S8);
    public function new(?s6:stdgo._internal.encoding.json.Json_S6.S6, ?s7:stdgo._internal.encoding.json.Json_S7.S7, ?s8:stdgo._internal.encoding.json.Json_S8.S8) {
        if (s6 != null) this.s6 = s6;
        if (s7 != null) this.s7 = s7;
        if (s8 != null) this.s8 = s8;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S5(s6, s7, s8);
    }
}
