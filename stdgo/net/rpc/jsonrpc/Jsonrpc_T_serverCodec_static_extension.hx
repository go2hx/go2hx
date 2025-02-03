package stdgo.net.rpc.jsonrpc;
class T_serverCodec_static_extension {
    static public function close(_c:T_serverCodec):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec>);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec_static_extension.T_serverCodec_static_extension.close(_c);
    }
    static public function writeResponse(_c:T_serverCodec, _r:stdgo._internal.net.rpc.Rpc_Response.Response, _x:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>);
        final _x = (_x : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec_static_extension.T_serverCodec_static_extension.writeResponse(_c, _r, _x);
    }
    static public function readRequestBody(_c:T_serverCodec, _x:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec>);
        final _x = (_x : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec_static_extension.T_serverCodec_static_extension.readRequestBody(_c, _x);
    }
    static public function readRequestHeader(_c:T_serverCodec, _r:stdgo._internal.net.rpc.Rpc_Request.Request):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec.T_serverCodec>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverCodec_static_extension.T_serverCodec_static_extension.readRequestHeader(_c, _r);
    }
}
