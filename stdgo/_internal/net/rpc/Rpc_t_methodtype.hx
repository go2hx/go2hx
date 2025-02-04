package stdgo._internal.net.rpc;
@:structInit @:using(stdgo._internal.net.rpc.Rpc_t_methodtype_static_extension.T_methodType_static_extension) class T_methodType {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _method : stdgo._internal.reflect.Reflect_method.Method = ({} : stdgo._internal.reflect.Reflect_method.Method);
    public var argType : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public var replyType : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public var _numCalls : stdgo.GoUInt = 0;
    public function new(?mutex:stdgo._internal.sync.Sync_mutex.Mutex, ?_method:stdgo._internal.reflect.Reflect_method.Method, ?argType:stdgo._internal.reflect.Reflect_type_.Type_, ?replyType:stdgo._internal.reflect.Reflect_type_.Type_, ?_numCalls:stdgo.GoUInt) {
        if (mutex != null) this.mutex = mutex;
        if (_method != null) this._method = _method;
        if (argType != null) this.argType = argType;
        if (replyType != null) this.replyType = replyType;
        if (_numCalls != null) this._numCalls = _numCalls;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var lock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_lock():() -> Void return @:check32 this.mutex.lock;
    public var tryLock(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_tryLock():() -> Bool return @:check32 this.mutex.tryLock;
    public var unlock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_unlock():() -> Void return @:check32 this.mutex.unlock;
    public var _lockSlow(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__lockSlow():() -> Void return @:check32 this.mutex._lockSlow;
    public var _unlockSlow(get, never) : stdgo.GoInt32 -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__unlockSlow():stdgo.GoInt32 -> Void return @:check32 this.mutex._unlockSlow;
    public function __copy__() {
        return new T_methodType(mutex, _method, argType, replyType, _numCalls);
    }
}
