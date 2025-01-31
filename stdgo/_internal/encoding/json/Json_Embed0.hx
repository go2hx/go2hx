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
@:structInit @:using(stdgo._internal.encoding.json.Json_Embed0_static_extension.Embed0_static_extension) class Embed0 {
    public var level1a : stdgo.GoInt = 0;
    public var level1b : stdgo.GoInt = 0;
    public var level1c : stdgo.GoInt = 0;
    public var level1d : stdgo.GoInt = 0;
    @:tag("`json:\"x\"`")
    public var level1e : stdgo.GoInt = 0;
    public function new(?level1a:stdgo.GoInt, ?level1b:stdgo.GoInt, ?level1c:stdgo.GoInt, ?level1d:stdgo.GoInt, ?level1e:stdgo.GoInt) {
        if (level1a != null) this.level1a = level1a;
        if (level1b != null) this.level1b = level1b;
        if (level1c != null) this.level1c = level1c;
        if (level1d != null) this.level1d = level1d;
        if (level1e != null) this.level1e = level1e;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Embed0(level1a, level1b, level1c, level1d, level1e);
    }
}
