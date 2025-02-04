package stdgo._internal.net.rpc;
@:keep class ClientCodec_static_extension {
    @:interfacetypeffun
    static public function close(t:stdgo._internal.net.rpc.Rpc_clientcodec.ClientCodec):stdgo.Error return t.close();
    @:interfacetypeffun
    static public function readResponseBody(t:stdgo._internal.net.rpc.Rpc_clientcodec.ClientCodec, _0:stdgo.AnyInterface):stdgo.Error return t.readResponseBody(_0);
    @:interfacetypeffun
    static public function readResponseHeader(t:stdgo._internal.net.rpc.Rpc_clientcodec.ClientCodec, _0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>):stdgo.Error return t.readResponseHeader(_0);
    @:interfacetypeffun
    static public function writeRequest(t:stdgo._internal.net.rpc.Rpc_clientcodec.ClientCodec, _0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>, _1:stdgo.AnyInterface):stdgo.Error return t.writeRequest(_0, _1);
}
