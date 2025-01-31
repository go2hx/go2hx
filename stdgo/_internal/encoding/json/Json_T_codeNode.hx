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
@:structInit @:using(stdgo._internal.encoding.json.Json_T_codeNode_static_extension.T_codeNode_static_extension) class T_codeNode {
    @:tag("`json:\"name\"`")
    public var name : stdgo.GoString = "";
    @:tag("`json:\"kids\"`")
    public var kids : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode>>);
    @:tag("`json:\"cl_weight\"`")
    public var cLWeight : stdgo.GoFloat64 = 0;
    @:tag("`json:\"touches\"`")
    public var touches : stdgo.GoInt = 0;
    @:tag("`json:\"min_t\"`")
    public var minT : stdgo.GoInt64 = 0;
    @:tag("`json:\"max_t\"`")
    public var maxT : stdgo.GoInt64 = 0;
    @:tag("`json:\"mean_t\"`")
    public var meanT : stdgo.GoInt64 = 0;
    public function new(?name:stdgo.GoString, ?kids:stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode>>, ?cLWeight:stdgo.GoFloat64, ?touches:stdgo.GoInt, ?minT:stdgo.GoInt64, ?maxT:stdgo.GoInt64, ?meanT:stdgo.GoInt64) {
        if (name != null) this.name = name;
        if (kids != null) this.kids = kids;
        if (cLWeight != null) this.cLWeight = cLWeight;
        if (touches != null) this.touches = touches;
        if (minT != null) this.minT = minT;
        if (maxT != null) this.maxT = maxT;
        if (meanT != null) this.meanT = meanT;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_codeNode(name, kids, cLWeight, touches, minT, maxT, meanT);
    }
}
