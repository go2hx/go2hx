package stdgo._internal.net.rpc;
@:keep class ServerCodec_static_extension {
    @:interfacetypeffun
    static public function close(t:stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec):stdgo.Error return t.close();
    @:interfacetypeffun
    static public function writeResponse(t:stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec, _0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>, _1:stdgo.AnyInterface):stdgo.Error return t.writeResponse(_0, _1);
    @:interfacetypeffun
    static public function readRequestBody(t:stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec, _0:stdgo.AnyInterface):stdgo.Error return t.readRequestBody(_0);
    @:interfacetypeffun
    static public function readRequestHeader(t:stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec, _0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>):stdgo.Error return t.readRequestHeader(_0);
}
