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
@:local @:using(stdgo._internal.encoding.json.Json_T__struct_13_static_extension.T__struct_13_static_extension) @:using(stdgo._internal.encoding.json.Json_T__struct_13_static_extension.T__struct_13_static_extension) typedef T__struct_13 = {
    @:tag("`json:\",string\"`")
    public var t : stdgo._internal.time.Time_Time.Time;
    @:tag("`json:\",string\"`")
    public var m : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    @:tag("`json:\",string\"`")
    public var s : stdgo.Slice<stdgo.GoString>;
    @:tag("`json:\",string\"`")
    public var a : stdgo.GoArray<stdgo.GoString>;
    @:tag("`json:\",string\"`")
    public var i : stdgo.AnyInterface;
    @:tag("`json:\",string\"`")
    public var p : stdgo.Pointer<stdgo.GoInt>;
};
