package stdgo._internal.net.rpc.jsonrpc;
function serveConn(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):Void {
        stdgo._internal.net.rpc.Rpc_serveCodec.serveCodec(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_newServerCodec.newServerCodec(_conn));
    }
