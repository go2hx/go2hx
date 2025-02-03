package stdgo.net.rpc;
private function set_defaultServer(v:Server):Server {
        stdgo._internal.net.rpc.Rpc_defaultServer.defaultServer = (v : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
        return v;
    }
