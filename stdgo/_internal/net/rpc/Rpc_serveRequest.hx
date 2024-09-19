package stdgo._internal.net.rpc;
function serveRequest(_codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_defaultServer.defaultServer.serveRequest(_codec);
    }
