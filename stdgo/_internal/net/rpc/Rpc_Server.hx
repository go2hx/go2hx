package stdgo._internal.net.rpc;
@:structInit @:using(stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension) class Server {
    public var _serviceMap : stdgo._internal.sync.Sync_Map_.Map_ = ({} : stdgo._internal.sync.Sync_Map_.Map_);
    public var _reqLock : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _freeReq : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request> = (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>);
    public var _respLock : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _freeResp : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response> = (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>);
    public function new(?_serviceMap:stdgo._internal.sync.Sync_Map_.Map_, ?_reqLock:stdgo._internal.sync.Sync_Mutex.Mutex, ?_freeReq:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>, ?_respLock:stdgo._internal.sync.Sync_Mutex.Mutex, ?_freeResp:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>) {
        if (_serviceMap != null) this._serviceMap = _serviceMap;
        if (_reqLock != null) this._reqLock = _reqLock;
        if (_freeReq != null) this._freeReq = _freeReq;
        if (_respLock != null) this._respLock = _respLock;
        if (_freeResp != null) this._freeResp = _freeResp;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Server(_serviceMap, _reqLock, _freeReq, _respLock, _freeResp);
    }
}
