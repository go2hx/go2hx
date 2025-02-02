package stdgo._internal.net.rpc;
function newServer():stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server> {
        return (stdgo.Go.setRef((new stdgo._internal.net.rpc.Rpc_Server.Server() : stdgo._internal.net.rpc.Rpc_Server.Server)) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
    }
