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
@:structInit @:using(stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S1_54465_static_extension.T_testUnmarshalEmbeddedUnexported___localname___S1_54465_static_extension) class T_testUnmarshalEmbeddedUnexported___localname___S1_54465 {
    @:embedded
    public var _embed1 : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365>);
    public var r : stdgo.GoInt = 0;
    public function new(?_embed1:stdgo.Ref<stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365>, ?r:stdgo.GoInt) {
        if (_embed1 != null) this._embed1 = _embed1;
        if (r != null) this.r = r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported___localname___S1_54465(_embed1, r);
    }
}
