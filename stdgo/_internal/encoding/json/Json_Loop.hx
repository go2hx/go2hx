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
@:structInit @:using(stdgo._internal.encoding.json.Json_Loop_static_extension.Loop_static_extension) class Loop {
    @:tag("`json:\",omitempty\"`")
    public var loop1 : stdgo.GoInt = 0;
    @:tag("`json:\",omitempty\"`")
    public var loop2 : stdgo.GoInt = 0;
    @:embedded
    public var loop : stdgo.Ref<stdgo._internal.encoding.json.Json_Loop.Loop> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_Loop.Loop>);
    public function new(?loop1:stdgo.GoInt, ?loop2:stdgo.GoInt, ?loop:stdgo.Ref<stdgo._internal.encoding.json.Json_Loop.Loop>) {
        if (loop1 != null) this.loop1 = loop1;
        if (loop2 != null) this.loop2 = loop2;
        if (loop != null) this.loop = loop;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Loop(loop1, loop2, loop);
    }
}
