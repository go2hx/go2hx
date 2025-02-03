package stdgo.net.rpc;
@:structInit @:using(stdgo.net.rpc.Rpc.T_debugHTTP_static_extension) abstract T_debugHTTP(stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP) from stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP to stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP {
    public var server(get, set) : Server;
    function get_server():Server return this.server;
    function set_server(v:Server):Server {
        this.server = (v : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
        return v;
    }
    public function new(?server:Server) this = new stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP((server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
