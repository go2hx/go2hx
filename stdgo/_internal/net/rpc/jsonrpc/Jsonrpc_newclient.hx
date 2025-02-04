package stdgo._internal.net.rpc.jsonrpc;
function newClient(_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client> {
        return stdgo._internal.net.rpc.Rpc_newclientwithcodec.newClientWithCodec(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_newclientcodec.newClientCodec(_conn));
    }
