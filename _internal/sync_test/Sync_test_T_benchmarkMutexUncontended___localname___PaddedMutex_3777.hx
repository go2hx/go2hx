package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
@:structInit @:using(_internal.sync_test.Sync_test_T_benchmarkMutexUncontended___localname___PaddedMutex_3777_static_extension.T_benchmarkMutexUncontended___localname___PaddedMutex_3777_static_extension) class T_benchmarkMutexUncontended___localname___PaddedMutex_3777 {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _pad : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(128, 128, ...[for (i in 0 ... 128) (0 : stdgo.GoUInt8)]);
    public function new(?mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_pad:stdgo.GoArray<stdgo.GoUInt8>) {
        if (mutex != null) this.mutex = mutex;
        if (_pad != null) this._pad = _pad;
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
    public function _unlockSlow(_nameOff:stdgo.GoInt32) this.mutex._unlockSlow(_nameOff);
    public function __copy__() {
        return new T_benchmarkMutexUncontended___localname___PaddedMutex_3777(mutex, _pad);
    }
}
