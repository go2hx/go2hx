package stdgo._internal.net.rpc;
@:keep class ClientCodec_static_extension {
    static public function close(t:ClientCodec):stdgo.Error return t.close();
    static public function readResponseBody(t:ClientCodec, _0:stdgo.AnyInterface):stdgo.Error return t.readResponseBody(_0);
    static public function readResponseHeader(t:ClientCodec, _0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>):stdgo.Error return t.readResponseHeader(_0);
    static public function writeRequest(t:ClientCodec, _0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>, _1:stdgo.AnyInterface):stdgo.Error return t.writeRequest(_0, _1);
}
