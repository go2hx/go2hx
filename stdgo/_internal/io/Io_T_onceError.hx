package stdgo._internal.io;
@:structInit @:using(stdgo._internal.io.Io_T_onceError_static_extension.T_onceError_static_extension) class T_onceError {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_err:stdgo.Error) {
        if (mutex != null) this.mutex = mutex;
        if (_err != null) this._err = _err;
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
        return new T_onceError(mutex, _err);
    }
}
