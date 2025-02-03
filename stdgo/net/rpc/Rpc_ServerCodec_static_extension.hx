package stdgo.net.rpc;
class ServerCodec_static_extension {
    static public function close(t:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_ServerCodec_static_extension.ServerCodec_static_extension.close(t);
    }
    static public function writeResponse(t:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec, _0:Response, _1:stdgo.AnyInterface):stdgo.Error {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>);
        final _1 = (_1 : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_ServerCodec_static_extension.ServerCodec_static_extension.writeResponse(t, _0, _1);
    }
    static public function readRequestBody(t:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec, _0:stdgo.AnyInterface):stdgo.Error {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_ServerCodec_static_extension.ServerCodec_static_extension.readRequestBody(t, _0);
    }
    static public function readRequestHeader(t:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec, _0:Request):stdgo.Error {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>);
        return stdgo._internal.net.rpc.Rpc_ServerCodec_static_extension.ServerCodec_static_extension.readRequestHeader(t, _0);
    }
}
