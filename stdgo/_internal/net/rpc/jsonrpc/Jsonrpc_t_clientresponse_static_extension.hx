package stdgo._internal.net.rpc.jsonrpc;
@:keep @:allow(stdgo._internal.net.rpc.jsonrpc.Jsonrpc.T_clientResponse_asInterface) class T_clientResponse_static_extension {
    @:keep
    @:tdfield
    static public function _reset( _r:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientresponse.T_clientResponse>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientresponse.T_clientResponse> = _r;
        (@:checkr _r ?? throw "null pointer dereference").id = (0i64 : stdgo.GoUInt64);
        (@:checkr _r ?? throw "null pointer dereference").result = null;
        (@:checkr _r ?? throw "null pointer dereference").error = (null : stdgo.AnyInterface);
    }
}
