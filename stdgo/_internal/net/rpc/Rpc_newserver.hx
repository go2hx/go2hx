package stdgo._internal.net.rpc;
function newServer():stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server> {
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/server.go#L198"
        return (stdgo.Go.setRef((new stdgo._internal.net.rpc.Rpc_server.Server() : stdgo._internal.net.rpc.Rpc_server.Server)) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
    }
