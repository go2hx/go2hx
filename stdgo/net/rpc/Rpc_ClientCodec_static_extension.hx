package stdgo.net.rpc;
class ClientCodec_static_extension {
    static public function close(t:stdgo._internal.net.rpc.Rpc_ClientCodec.ClientCodec):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_ClientCodec_static_extension.ClientCodec_static_extension.close(t);
    }
    static public function readResponseBody(t:stdgo._internal.net.rpc.Rpc_ClientCodec.ClientCodec, _0:stdgo.AnyInterface):stdgo.Error {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_ClientCodec_static_extension.ClientCodec_static_extension.readResponseBody(t, _0);
    }
    static public function readResponseHeader(t:stdgo._internal.net.rpc.Rpc_ClientCodec.ClientCodec, _0:Response):stdgo.Error {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>);
        return stdgo._internal.net.rpc.Rpc_ClientCodec_static_extension.ClientCodec_static_extension.readResponseHeader(t, _0);
    }
    static public function writeRequest(t:stdgo._internal.net.rpc.Rpc_ClientCodec.ClientCodec, _0:Request, _1:stdgo.AnyInterface):stdgo.Error {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>);
        final _1 = (_1 : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_ClientCodec_static_extension.ClientCodec_static_extension.writeRequest(t, _0, _1);
    }
}
