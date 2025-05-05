package stdgo._internal.net.rpc;
function registerName(_name:stdgo.GoString, _rcvr:stdgo.AnyInterface):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L645"
        return stdgo._internal.net.rpc.Rpc_defaultserver.defaultServer.registerName(_name?.__copy__(), _rcvr);
    }
