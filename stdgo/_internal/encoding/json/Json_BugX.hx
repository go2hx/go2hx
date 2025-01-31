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
@:structInit @:using(stdgo._internal.encoding.json.Json_BugX_static_extension.BugX_static_extension) class BugX {
    public var a : stdgo.GoInt = 0;
    @:embedded
    public var bugA : stdgo._internal.encoding.json.Json_BugA.BugA = ({} : stdgo._internal.encoding.json.Json_BugA.BugA);
    @:embedded
    public var bugB : stdgo._internal.encoding.json.Json_BugB.BugB = ({} : stdgo._internal.encoding.json.Json_BugB.BugB);
    public function new(?a:stdgo.GoInt, ?bugA:stdgo._internal.encoding.json.Json_BugA.BugA, ?bugB:stdgo._internal.encoding.json.Json_BugB.BugB) {
        if (a != null) this.a = a;
        if (bugA != null) this.bugA = bugA;
        if (bugB != null) this.bugB = bugB;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BugX(a, bugA, bugB);
    }
}
