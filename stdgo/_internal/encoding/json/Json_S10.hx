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
@:structInit @:using(stdgo._internal.encoding.json.Json_S10_static_extension.S10_static_extension) class S10 {
    @:embedded
    public var s11 : stdgo._internal.encoding.json.Json_S11.S11 = ({} : stdgo._internal.encoding.json.Json_S11.S11);
    @:embedded
    public var s12 : stdgo._internal.encoding.json.Json_S12.S12 = ({} : stdgo._internal.encoding.json.Json_S12.S12);
    @:embedded
    public var s13 : stdgo._internal.encoding.json.Json_S13.S13 = ({} : stdgo._internal.encoding.json.Json_S13.S13);
    public function new(?s11:stdgo._internal.encoding.json.Json_S11.S11, ?s12:stdgo._internal.encoding.json.Json_S12.S12, ?s13:stdgo._internal.encoding.json.Json_S13.S13) {
        if (s11 != null) this.s11 = s11;
        if (s12 != null) this.s12 = s12;
        if (s13 != null) this.s13 = s13;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S10(s11, s12, s13);
    }
}
