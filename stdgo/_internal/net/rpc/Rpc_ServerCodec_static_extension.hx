package stdgo._internal.net.rpc;
@:keep class ServerCodec_static_extension {
    static public function close(t:ServerCodec):stdgo.Error return t.close();
    static public function writeResponse(t:ServerCodec, _0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>, _1:stdgo.AnyInterface):stdgo.Error return t.writeResponse(_0, _1);
    static public function readRequestBody(t:ServerCodec, _0:stdgo.AnyInterface):stdgo.Error return t.readRequestBody(_0);
    static public function readRequestHeader(t:ServerCodec, _0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>):stdgo.Error return t.readRequestHeader(_0);
}