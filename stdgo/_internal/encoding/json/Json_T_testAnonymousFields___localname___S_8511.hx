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
@:structInit @:using(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8511_static_extension.T_testAnonymousFields___localname___S_8511_static_extension) class T_testAnonymousFields___localname___S_8511 {
    @:embedded
    public var s1 : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S1_8459.T_testAnonymousFields___localname___S1_8459 = ({} : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S1_8459.T_testAnonymousFields___localname___S1_8459);
    @:embedded
    public var s2 : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_8485.T_testAnonymousFields___localname___S2_8485 = ({} : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_8485.T_testAnonymousFields___localname___S2_8485);
    public var _x : stdgo.GoInt = 0;
    public var x : stdgo.GoInt = 0;
    public function new(?s1:stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S1_8459.T_testAnonymousFields___localname___S1_8459, ?s2:stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_8485.T_testAnonymousFields___localname___S2_8485, ?_x:stdgo.GoInt, ?x:stdgo.GoInt) {
        if (s1 != null) this.s1 = s1;
        if (s2 != null) this.s2 = s2;
        if (_x != null) this._x = _x;
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields___localname___S_8511(s1, s2, _x, x);
    }
}
