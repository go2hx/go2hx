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
@:structInit @:using(stdgo._internal.encoding.json.Json_T_codeResponse_static_extension.T_codeResponse_static_extension) class T_codeResponse {
    @:tag("`json:\"tree\"`")
    public var tree : stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode>);
    @:tag("`json:\"username\"`")
    public var username : stdgo.GoString = "";
    public function new(?tree:stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode>, ?username:stdgo.GoString) {
        if (tree != null) this.tree = tree;
        if (username != null) this.username = username;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_codeResponse(tree, username);
    }
}
