package stdgo._internal.net.rpc;
function newServer():stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server> {
        return (stdgo.Go.setRef((new stdgo._internal.net.rpc.Rpc_server.Server() : stdgo._internal.net.rpc.Rpc_server.Server)) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_server.Server>);
    }
