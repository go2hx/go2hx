package stdgo.net.rpc;
class T_gobClientCodec_static_extension {
    static public function close(_c:T_gobClientCodec):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec>);
        return stdgo._internal.net.rpc.Rpc_T_gobClientCodec_static_extension.T_gobClientCodec_static_extension.close(_c);
    }
    static public function readResponseBody(_c:T_gobClientCodec, _body:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec>);
        final _body = (_body : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_T_gobClientCodec_static_extension.T_gobClientCodec_static_extension.readResponseBody(_c, _body);
    }
    static public function readResponseHeader(_c:T_gobClientCodec, _r:Response):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>);
        return stdgo._internal.net.rpc.Rpc_T_gobClientCodec_static_extension.T_gobClientCodec_static_extension.readResponseHeader(_c, _r);
    }
    static public function writeRequest(_c:T_gobClientCodec, _r:Request, _body:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>);
        final _body = (_body : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_T_gobClientCodec_static_extension.T_gobClientCodec_static_extension.writeRequest(_c, _r, _body);
    }
}
