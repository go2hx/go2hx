package stdgo._internal.net.rpc;
function dialHTTP(_network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client>; var _1 : stdgo.Error; } {
        return stdgo._internal.net.rpc.Rpc_dialHTTPPath.dialHTTPPath(_network?.__copy__(), _address?.__copy__(), ("/_goRPC_" : stdgo.GoString));
    }
