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
@:structInit @:using(stdgo._internal.encoding.json.Json_StringTag_static_extension.StringTag_static_extension) class StringTag {
    @:tag("`json:\",string\"`")
    public var boolStr : Bool = false;
    @:tag("`json:\",string\"`")
    public var intStr : stdgo.GoInt64 = 0;
    @:tag("`json:\",string\"`")
    public var uintptrStr : stdgo.GoUIntptr = 0;
    @:tag("`json:\",string\"`")
    public var strStr : stdgo.GoString = "";
    @:tag("`json:\",string\"`")
    public var numberStr : stdgo._internal.encoding.json.Json_Number.Number = (("" : stdgo.GoString) : stdgo._internal.encoding.json.Json_Number.Number);
    public function new(?boolStr:Bool, ?intStr:stdgo.GoInt64, ?uintptrStr:stdgo.GoUIntptr, ?strStr:stdgo.GoString, ?numberStr:stdgo._internal.encoding.json.Json_Number.Number) {
        if (boolStr != null) this.boolStr = boolStr;
        if (intStr != null) this.intStr = intStr;
        if (uintptrStr != null) this.uintptrStr = uintptrStr;
        if (strStr != null) this.strStr = strStr;
        if (numberStr != null) this.numberStr = numberStr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StringTag(boolStr, intStr, uintptrStr, strStr, numberStr);
    }
}
