package stdgo._internal.net.rpc;
function dialHTTP(_network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client>; var _1 : stdgo.Error; } {
        return stdgo._internal.net.rpc.Rpc_dialhttppath.dialHTTPPath(_network?.__copy__(), _address?.__copy__(), ("/_goRPC_" : stdgo.GoString));
    }
