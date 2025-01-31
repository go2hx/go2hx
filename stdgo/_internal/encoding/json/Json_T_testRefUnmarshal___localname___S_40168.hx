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
@:structInit @:using(stdgo._internal.encoding.json.Json_T_testRefUnmarshal___localname___S_40168_static_extension.T_testRefUnmarshal___localname___S_40168_static_extension) class T_testRefUnmarshal___localname___S_40168 {
    public var r0 : stdgo._internal.encoding.json.Json_Ref.Ref = ((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_Ref.Ref);
    public var r1 : stdgo.Pointer<stdgo._internal.encoding.json.Json_Ref.Ref> = (null : stdgo.Pointer<stdgo._internal.encoding.json.Json_Ref.Ref>);
    public var r2 : stdgo._internal.encoding.json.Json_RefText.RefText = ((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_RefText.RefText);
    public var r3 : stdgo.Pointer<stdgo._internal.encoding.json.Json_RefText.RefText> = (null : stdgo.Pointer<stdgo._internal.encoding.json.Json_RefText.RefText>);
    public function new(?r0:stdgo._internal.encoding.json.Json_Ref.Ref, ?r1:stdgo.Pointer<stdgo._internal.encoding.json.Json_Ref.Ref>, ?r2:stdgo._internal.encoding.json.Json_RefText.RefText, ?r3:stdgo.Pointer<stdgo._internal.encoding.json.Json_RefText.RefText>) {
        if (r0 != null) this.r0 = r0;
        if (r1 != null) this.r1 = r1;
        if (r2 != null) this.r2 = r2;
        if (r3 != null) this.r3 = r3;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testRefUnmarshal___localname___S_40168(r0, r1, r2, r3);
    }
}
