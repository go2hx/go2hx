package stdgo._internal.net.rpc;
function register(_rcvr:stdgo.AnyInterface):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L640"
        return stdgo._internal.net.rpc.Rpc_defaultserver.defaultServer.register(_rcvr);
    }
