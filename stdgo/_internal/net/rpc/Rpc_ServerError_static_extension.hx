package stdgo._internal.net.rpc;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.ServerError_asInterface) class ServerError_static_extension {
    @:keep
    static public function error( _e:stdgo._internal.net.rpc.Rpc_ServerError.ServerError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.rpc.Rpc_ServerError.ServerError = _e;
        return (_e : stdgo.GoString)?.__copy__();
    }
}