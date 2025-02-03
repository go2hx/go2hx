package stdgo.net.rpc;
class T_service_static_extension {
    static public function _call(_s:T_service, _server:Server, _sending:stdgo._internal.sync.Sync_Mutex.Mutex, _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup, _mtype:T_methodType, _req:Request, _argv:stdgo._internal.reflect.Reflect_Value.Value, _replyv:stdgo._internal.reflect.Reflect_Value.Value, _codec:ServerCodec):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>);
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
        final _sending = (_sending : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>);
        final _wg = (_wg : stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup>);
        final _mtype = (_mtype : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>);
        stdgo._internal.net.rpc.Rpc_T_service_static_extension.T_service_static_extension._call(_s, _server, _sending, _wg, _mtype, _req, _argv, _replyv, _codec);
    }
}
