package stdgo._internal.net.rpc;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.ServerError_asInterface) class ServerError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.net.rpc.Rpc_servererror.ServerError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.rpc.Rpc_servererror.ServerError = _e;
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L23"
        return (_e : stdgo.GoString)?.__copy__();
    }
}
