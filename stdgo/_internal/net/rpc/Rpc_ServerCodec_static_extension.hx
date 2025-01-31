package stdgo._internal.net.rpc;
import stdgo._internal.errors.Errors;
import stdgo._internal.html.template.Template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.net.Net;
import stdgo._internal.io.Io;
import stdgo._internal.net.http.Http;
import stdgo._internal.go.token.Token;
import stdgo._internal.log.Log;
import stdgo._internal.sort.Sort;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
@:keep class ServerCodec_static_extension {
    @:interfacetypeffun
    static public function close(t:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):stdgo.Error return t.close();
    @:interfacetypeffun
    static public function writeResponse(t:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec, _0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>, _1:stdgo.AnyInterface):stdgo.Error return t.writeResponse(_0, _1);
    @:interfacetypeffun
    static public function readRequestBody(t:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec, _0:stdgo.AnyInterface):stdgo.Error return t.readRequestBody(_0);
    @:interfacetypeffun
    static public function readRequestHeader(t:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec, _0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>):stdgo.Error return t.readRequestHeader(_0);
}
