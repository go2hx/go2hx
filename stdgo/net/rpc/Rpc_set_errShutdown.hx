package stdgo.net.rpc;
private function set_errShutdown(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.rpc.Rpc_errShutdown.errShutdown = (v : stdgo.Error);
        return v;
    }
