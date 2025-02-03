package stdgo.net.rpc;
@:structInit @:using(stdgo.net.rpc.Rpc.Client_static_extension) abstract Client(stdgo._internal.net.rpc.Rpc_Client.Client) from stdgo._internal.net.rpc.Rpc_Client.Client to stdgo._internal.net.rpc.Rpc_Client.Client {
    public var _codec(get, set) : ClientCodec;
    function get__codec():ClientCodec return this._codec;
    function set__codec(v:ClientCodec):ClientCodec {
        this._codec = v;
        return v;
    }
    public var _reqMutex(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__reqMutex():stdgo._internal.sync.Sync_Mutex.Mutex return this._reqMutex;
    function set__reqMutex(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._reqMutex = v;
        return v;
    }
    public var _request(get, set) : Request;
    function get__request():Request return this._request;
    function set__request(v:Request):Request {
        this._request = v;
        return v;
    }
    public var _mutex(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mutex():stdgo._internal.sync.Sync_Mutex.Mutex return this._mutex;
    function set__mutex(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mutex = v;
        return v;
    }
    public var _seq(get, set) : haxe.UInt64;
    function get__seq():haxe.UInt64 return this._seq;
    function set__seq(v:haxe.UInt64):haxe.UInt64 {
        this._seq = (v : stdgo.GoUInt64);
        return v;
    }
    public var _pending(get, set) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>;
    function get__pending():stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>> return this._pending;
    function set__pending(v:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>):stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>> {
        this._pending = (v : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>);
        return v;
    }
    public var _closing(get, set) : Bool;
    function get__closing():Bool return this._closing;
    function set__closing(v:Bool):Bool {
        this._closing = v;
        return v;
    }
    public var _shutdown(get, set) : Bool;
    function get__shutdown():Bool return this._shutdown;
    function set__shutdown(v:Bool):Bool {
        this._shutdown = v;
        return v;
    }
    public function new(?_codec:ClientCodec, ?_reqMutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_request:Request, ?_mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_seq:haxe.UInt64, ?_pending:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>, ?_closing:Bool, ?_shutdown:Bool) this = new stdgo._internal.net.rpc.Rpc_Client.Client(_codec, _reqMutex, _request, _mutex, (_seq : stdgo.GoUInt64), (_pending : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>), _closing, _shutdown);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
