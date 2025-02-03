package stdgo.net.rpc;
@:structInit @:using(stdgo.net.rpc.Rpc.Server_static_extension) abstract Server(stdgo._internal.net.rpc.Rpc_Server.Server) from stdgo._internal.net.rpc.Rpc_Server.Server to stdgo._internal.net.rpc.Rpc_Server.Server {
    public var _serviceMap(get, set) : stdgo._internal.sync.Sync_Map_.Map_;
    function get__serviceMap():stdgo._internal.sync.Sync_Map_.Map_ return this._serviceMap;
    function set__serviceMap(v:stdgo._internal.sync.Sync_Map_.Map_):stdgo._internal.sync.Sync_Map_.Map_ {
        this._serviceMap = v;
        return v;
    }
    public var _reqLock(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__reqLock():stdgo._internal.sync.Sync_Mutex.Mutex return this._reqLock;
    function set__reqLock(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._reqLock = v;
        return v;
    }
    public var _freeReq(get, set) : Request;
    function get__freeReq():Request return this._freeReq;
    function set__freeReq(v:Request):Request {
        this._freeReq = (v : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>);
        return v;
    }
    public var _respLock(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__respLock():stdgo._internal.sync.Sync_Mutex.Mutex return this._respLock;
    function set__respLock(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._respLock = v;
        return v;
    }
    public var _freeResp(get, set) : Response;
    function get__freeResp():Response return this._freeResp;
    function set__freeResp(v:Response):Response {
        this._freeResp = (v : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>);
        return v;
    }
    public function new(?_serviceMap:stdgo._internal.sync.Sync_Map_.Map_, ?_reqLock:stdgo._internal.sync.Sync_Mutex.Mutex, ?_freeReq:Request, ?_respLock:stdgo._internal.sync.Sync_Mutex.Mutex, ?_freeResp:Response) this = new stdgo._internal.net.rpc.Rpc_Server.Server(_serviceMap, _reqLock, (_freeReq : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>), _respLock, (_freeResp : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
