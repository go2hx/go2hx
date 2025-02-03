package stdgo.net.rpc;
class T_gobServerCodec_static_extension {
    static public function close(_c:T_gobServerCodec):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobServerCodec.T_gobServerCodec>);
        return stdgo._internal.net.rpc.Rpc_T_gobServerCodec_static_extension.T_gobServerCodec_static_extension.close(_c);
    }
    static public function writeResponse(_c:T_gobServerCodec, _r:Response, _body:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobServerCodec.T_gobServerCodec>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>);
        final _body = (_body : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_T_gobServerCodec_static_extension.T_gobServerCodec_static_extension.writeResponse(_c, _r, _body);
    }
    static public function readRequestBody(_c:T_gobServerCodec, _body:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobServerCodec.T_gobServerCodec>);
        final _body = (_body : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_T_gobServerCodec_static_extension.T_gobServerCodec_static_extension.readRequestBody(_c, _body);
    }
    static public function readRequestHeader(_c:T_gobServerCodec, _r:Request):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobServerCodec.T_gobServerCodec>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>);
        return stdgo._internal.net.rpc.Rpc_T_gobServerCodec_static_extension.T_gobServerCodec_static_extension.readRequestHeader(_c, _r);
    }
}
