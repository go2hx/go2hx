package stdgo._internal.net.rpc.jsonrpc;
@:keep @:allow(stdgo._internal.net.rpc.jsonrpc.Jsonrpc.T_clientResponse_asInterface) class T_clientResponse_static_extension {
    @:keep
    static public function _reset( _r:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientResponse.T_clientResponse>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientResponse.T_clientResponse> = _r;
        _r.id = (0i64 : stdgo.GoUInt64);
        _r.result = null;
        _r.error = (null : stdgo.AnyInterface);
    }
}
