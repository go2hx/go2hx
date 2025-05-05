package stdgo._internal.net.rpc;
function newClientWithCodec(_codec:stdgo._internal.net.rpc.Rpc_clientcodec.ClientCodec):stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client> {
        var _client = (stdgo.Go.setRef(({ _codec : _codec, _pending : (({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>) } : stdgo._internal.net.rpc.Rpc_client.Client)) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client>);
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L206"
        {
            {};
            stdgo.Go.routine(() -> _client._input());
        };
        //"file:///home/runner/.go/go1.21.3/src/net/rpc/client.go#L207"
        return _client;
    }
