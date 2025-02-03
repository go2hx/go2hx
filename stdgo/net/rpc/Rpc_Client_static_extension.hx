package stdgo.net.rpc;
class Client_static_extension {
    static public function call(_client:Client, _serviceMethod:String, _args:stdgo.AnyInterface, _reply:stdgo.AnyInterface):stdgo.Error {
        final _client = (_client : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client>);
        final _serviceMethod = (_serviceMethod : stdgo.GoString);
        final _args = (_args : stdgo.AnyInterface);
        final _reply = (_reply : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_Client_static_extension.Client_static_extension.call(_client, _serviceMethod, _args, _reply);
    }
    static public function go(_client:Client, _serviceMethod:String, _args:stdgo.AnyInterface, _reply:stdgo.AnyInterface, _done:stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>):Call {
        final _client = (_client : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client>);
        final _serviceMethod = (_serviceMethod : stdgo.GoString);
        final _args = (_args : stdgo.AnyInterface);
        final _reply = (_reply : stdgo.AnyInterface);
        final _done = (_done : stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>);
        return stdgo._internal.net.rpc.Rpc_Client_static_extension.Client_static_extension.go(_client, _serviceMethod, _args, _reply, _done);
    }
    static public function close(_client:Client):stdgo.Error {
        final _client = (_client : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client>);
        return stdgo._internal.net.rpc.Rpc_Client_static_extension.Client_static_extension.close(_client);
    }
    static public function _input(_client:Client):Void {
        final _client = (_client : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client>);
        stdgo._internal.net.rpc.Rpc_Client_static_extension.Client_static_extension._input(_client);
    }
    static public function _send(_client:Client, _call:Call):Void {
        final _client = (_client : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client>);
        final _call = (_call : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>);
        stdgo._internal.net.rpc.Rpc_Client_static_extension.Client_static_extension._send(_client, _call);
    }
}
