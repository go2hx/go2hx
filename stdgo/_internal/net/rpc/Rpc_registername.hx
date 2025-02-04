package stdgo._internal.net.rpc;
function registerName(_name:stdgo.GoString, _rcvr:stdgo.AnyInterface):stdgo.Error {
        return @:check2r stdgo._internal.net.rpc.Rpc_defaultserver.defaultServer.registerName(_name?.__copy__(), _rcvr);
    }
