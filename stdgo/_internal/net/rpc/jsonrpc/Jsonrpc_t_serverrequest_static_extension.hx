package stdgo._internal.net.rpc.jsonrpc;
@:keep @:allow(stdgo._internal.net.rpc.jsonrpc.Jsonrpc.T_serverRequest_asInterface) class T_serverRequest_static_extension {
    @:keep
    @:tdfield
    static public function _reset( _r:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverrequest.T_serverRequest>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverrequest.T_serverRequest> = _r;
        (@:checkr _r ?? throw "null pointer dereference").method = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        (@:checkr _r ?? throw "null pointer dereference").params = null;
        (@:checkr _r ?? throw "null pointer dereference").id = null;
    }
}
