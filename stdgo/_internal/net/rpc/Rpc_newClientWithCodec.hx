package stdgo._internal.net.rpc;
function newClientWithCodec(_codec:stdgo._internal.net.rpc.Rpc_ClientCodec.ClientCodec):stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client> {
        var _client = (stdgo.Go.setRef(({ _codec : _codec, _pending : ({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>) } : stdgo._internal.net.rpc.Rpc_Client.Client)) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client>);
        stdgo.Go.routine(() -> _client._input());
        return _client;
    }
