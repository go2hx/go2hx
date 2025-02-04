package stdgo._internal.net.rpc.jsonrpc;
function serveConn(_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):Void {
        stdgo._internal.net.rpc.Rpc_servecodec.serveCodec(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_newservercodec.newServerCodec(_conn));
    }
