package stdgo._internal.net.rpc.jsonrpc;
function newClient(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client> {
        return stdgo._internal.net.rpc.Rpc_newClientWithCodec.newClientWithCodec(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_newClientCodec.newClientCodec(_conn));
    }
