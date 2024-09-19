package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
@:structInit @:using(_internal.sync_test.Sync_test_T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090_static_extension.T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090_static_extension) class T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090 {
    @:embedded
    public var rwmutex : stdgo._internal.sync.Sync_RWMutex.RWMutex = ({} : stdgo._internal.sync.Sync_RWMutex.RWMutex);
    public var _pad : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt32)]);
    public function new(?rwmutex:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_pad:stdgo.GoArray<stdgo.GoUInt32>) {
        if (rwmutex != null) this.rwmutex = rwmutex;
        if (_pad != null) this._pad = _pad;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function lock() this.rwmutex.lock();
    @:embedded
    public function rlock() this.rwmutex.rlock();
    @:embedded
    public function rlocker():stdgo._internal.sync.Sync_Locker.Locker return this.rwmutex.rlocker();
    @:embedded
    public function runlock() this.rwmutex.runlock();
    @:embedded
    public function tryLock():Bool return this.rwmutex.tryLock();
    @:embedded
    public function tryRLock():Bool return this.rwmutex.tryRLock();
    @:embedded
    public function unlock() this.rwmutex.unlock();
    @:embedded
    public function _rUnlockSlow(_nameOff:stdgo.GoInt32) this.rwmutex._rUnlockSlow(_nameOff);
    public function __copy__() {
        return new T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090(rwmutex, _pad);
    }
}
