package stdgo._internal.net.rpc.jsonrpc;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.net.rpc.Rpc;
import stdgo._internal.net.Net;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.net.rpc.jsonrpc.Jsonrpc.T_serverRequest_asInterface) class T_serverRequest_static_extension {
    @:keep
    @:tdfield
    static public function _reset( _r:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverRequest.T_serverRequest>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverRequest.T_serverRequest> = _r;
        (@:checkr _r ?? throw "null pointer dereference").method = stdgo.Go.str()?.__copy__();
        (@:checkr _r ?? throw "null pointer dereference").params = null;
        (@:checkr _r ?? throw "null pointer dereference").id = null;
    }
}
