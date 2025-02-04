package stdgo._internal.io;
@:structInit @:using(stdgo._internal.io.Io_t_onceerror_static_extension.T_onceError_static_extension) class T_onceError {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?mutex:stdgo._internal.sync.Sync_mutex.Mutex, ?_err:stdgo.Error) {
        if (mutex != null) this.mutex = mutex;
        if (_err != null) this._err = _err;
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
        return new T_onceError(mutex, _err);
    }
}
