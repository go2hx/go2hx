package stdgo._internal.net.rpc;
function serveConn(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):Void {
        stdgo._internal.net.rpc.Rpc_defaultServer.defaultServer.serveConn(_conn);
    }
