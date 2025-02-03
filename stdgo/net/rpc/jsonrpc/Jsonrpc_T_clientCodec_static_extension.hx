package stdgo.net.rpc.jsonrpc;
class T_clientCodec_static_extension {
    static public function close(_c:T_clientCodec):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec>);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec_static_extension.T_clientCodec_static_extension.close(_c);
    }
    static public function readResponseBody(_c:T_clientCodec, _x:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec>);
        final _x = (_x : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec_static_extension.T_clientCodec_static_extension.readResponseBody(_c, _x);
    }
    static public function readResponseHeader(_c:T_clientCodec, _r:stdgo._internal.net.rpc.Rpc_Response.Response):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec_static_extension.T_clientCodec_static_extension.readResponseHeader(_c, _r);
    }
    static public function writeRequest(_c:T_clientCodec, _r:stdgo._internal.net.rpc.Rpc_Request.Request, _param:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec.T_clientCodec>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>);
        final _param = (_param : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientCodec_static_extension.T_clientCodec_static_extension.writeRequest(_c, _r, _param);
    }
}
