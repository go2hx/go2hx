package stdgo._internal.net.rpc.jsonrpc;
@:keep @:allow(stdgo._internal.net.rpc.jsonrpc.Jsonrpc.T_serverRequest_asInterface) class T_serverRequest_static_extension {
    @:keep
    static public function _reset( _r:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverRequest.T_serverRequest>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverRequest.T_serverRequest> = _r;
        _r.method = stdgo.Go.str()?.__copy__();
        _r.params = null;
        _r.id = null;
    }
}
