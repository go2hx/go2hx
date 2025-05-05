package stdgo._internal.net.rpc;
function serveRequest(_codec:stdgo._internal.net.rpc.Rpc_servercodec.ServerCodec):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L684"
        return stdgo._internal.net.rpc.Rpc_defaultserver.defaultServer.serveRequest(_codec);
    }
