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
@:structInit @:using(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8796_static_extension.T_testAnonymousFields___localname___S_8796_static_extension) class T_testAnonymousFields___localname___S_8796 {
    @:embedded
    public var _myInt : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___myInt_8782.T_testAnonymousFields___localname___myInt_8782 = ((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___myInt_8782.T_testAnonymousFields___localname___myInt_8782);
    public function new(?_myInt:stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___myInt_8782.T_testAnonymousFields___localname___myInt_8782) {
        if (_myInt != null) this._myInt = _myInt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields___localname___S_8796(_myInt);
    }
}
