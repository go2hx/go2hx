package stdgo.net.rpc;
@:structInit @:using(stdgo.net.rpc.Rpc.T_methodType_static_extension) abstract T_methodType(stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType) from stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType to stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType {
    public var mutex(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get_mutex():stdgo._internal.sync.Sync_Mutex.Mutex return this.mutex;
    function set_mutex(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this.mutex = v;
        return v;
    }
    public var _method(get, set) : stdgo._internal.reflect.Reflect_Method.Method;
    function get__method():stdgo._internal.reflect.Reflect_Method.Method return this._method;
    function set__method(v:stdgo._internal.reflect.Reflect_Method.Method):stdgo._internal.reflect.Reflect_Method.Method {
        this._method = v;
        return v;
    }
    public var argType(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get_argType():stdgo._internal.reflect.Reflect_Type_.Type_ return this.argType;
    function set_argType(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this.argType = v;
        return v;
    }
    public var replyType(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get_replyType():stdgo._internal.reflect.Reflect_Type_.Type_ return this.replyType;
    function set_replyType(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this.replyType = v;
        return v;
    }
    public var _numCalls(get, set) : std.UInt;
    function get__numCalls():std.UInt return this._numCalls;
    function set__numCalls(v:std.UInt):std.UInt {
        this._numCalls = (v : stdgo.GoUInt);
        return v;
    }
    public function new(?mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_method:stdgo._internal.reflect.Reflect_Method.Method, ?argType:stdgo._internal.reflect.Reflect_Type_.Type_, ?replyType:stdgo._internal.reflect.Reflect_Type_.Type_, ?_numCalls:std.UInt) this = new stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType(mutex, _method, argType, replyType, (_numCalls : stdgo.GoUInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
