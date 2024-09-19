package stdgo._internal.net.rpc;
@:structInit @:using(stdgo._internal.net.rpc.Rpc_T_methodType_static_extension.T_methodType_static_extension) class T_methodType {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _method : stdgo._internal.reflect.Reflect_Method.Method = ({} : stdgo._internal.reflect.Reflect_Method.Method);
    public var argType : stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
    public var replyType : stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
    public var _numCalls : stdgo.GoUInt = 0;
    public function new(?mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_method:stdgo._internal.reflect.Reflect_Method.Method, ?argType:stdgo._internal.reflect.Reflect_Type_.Type_, ?replyType:stdgo._internal.reflect.Reflect_Type_.Type_, ?_numCalls:stdgo.GoUInt) {
        if (mutex != null) this.mutex = mutex;
        if (_method != null) this._method = _method;
        if (argType != null) this.argType = argType;
        if (replyType != null) this.replyType = replyType;
        if (_numCalls != null) this._numCalls = _numCalls;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function lock() this.mutex.lock();
    @:embedded
    public function tryLock():Bool return this.mutex.tryLock();
    @:embedded
    public function unlock() this.mutex.unlock();
    @:embedded
    public function _lockSlow() this.mutex._lockSlow();
    @:embedded
    public function _unlockSlow(_new:stdgo.GoInt32) this.mutex._unlockSlow(_new);
    public function __copy__() {
        return new T_methodType(mutex, _method, argType, replyType, _numCalls);
    }
}
