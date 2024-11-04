package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.RWMutex_asInterface) class RWMutex_static_extension {
    @:keep
    static public function rlocker( _rw:stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex>):stdgo._internal.sync.Sync_Locker.Locker {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex> = _rw;
        return stdgo.Go.asInterface((({
            final e = _rw;
            ({ _w : e._w, _writerSem : e._writerSem, _readerSem : e._readerSem, _readerCount : e._readerCount, _readerWait : e._readerWait } : stdgo._internal.sync.Sync_T_rlocker.T_rlocker);
        })));
    }
    @:keep
    static public function unlock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex>):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex> = _rw;
        if (false) {
            var __blank__ = _rw._w._state;
            stdgo._internal.internal.race.Race_release.release((stdgo.Go.toInterface(stdgo.Go.pointer(_rw._readerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
            stdgo._internal.internal.race.Race_disable.disable();
        };
        var _r = (_rw._readerCount.add((1073741824 : stdgo.GoInt32)) : stdgo.GoInt32);
        if ((_r >= (1073741824 : stdgo.GoInt32) : Bool)) {
            stdgo._internal.internal.race.Race_enable.enable();
            stdgo._internal.sync.Sync__fatal._fatal(("sync: Unlock of unlocked RWMutex" : stdgo.GoString));
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_r : stdgo.GoInt) : Bool)) {
                stdgo._internal.sync.Sync__runtime_Semrelease._runtime_Semrelease(stdgo.Go.pointer(_rw._readerSem), false, (0 : stdgo.GoInt));
                _i++;
            };
        };
        _rw._w.unlock();
        if (false) {
            stdgo._internal.internal.race.Race_enable.enable();
        };
    }
    @:keep
    static public function tryLock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex>):Bool {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex> = _rw;
        if (false) {
            var __blank__ = _rw._w._state;
            stdgo._internal.internal.race.Race_disable.disable();
        };
        if (!_rw._w.tryLock()) {
            if (false) {
                stdgo._internal.internal.race.Race_enable.enable();
            };
            return false;
        };
        if (!_rw._readerCount.compareAndSwap((0 : stdgo.GoInt32), (-1073741824 : stdgo.GoInt32))) {
            _rw._w.unlock();
            if (false) {
                stdgo._internal.internal.race.Race_enable.enable();
            };
            return false;
        };
        if (false) {
            stdgo._internal.internal.race.Race_enable.enable();
            stdgo._internal.internal.race.Race_acquire.acquire((stdgo.Go.toInterface(stdgo.Go.pointer(_rw._readerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
            stdgo._internal.internal.race.Race_acquire.acquire((stdgo.Go.toInterface(stdgo.Go.pointer(_rw._writerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
        };
        return true;
    }
    @:keep
    static public function lock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex>):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex> = _rw;
        if (false) {
            var __blank__ = _rw._w._state;
            stdgo._internal.internal.race.Race_disable.disable();
        };
        _rw._w.lock();
        var _r = (_rw._readerCount.add((-1073741824 : stdgo.GoInt32)) + (1073741824 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_r != (0 : stdgo.GoInt32)) && (_rw._readerWait.add(_r) != (0 : stdgo.GoInt32)) : Bool)) {
            stdgo._internal.sync.Sync__runtime_SemacquireRWMutex._runtime_SemacquireRWMutex(stdgo.Go.pointer(_rw._writerSem), false, (0 : stdgo.GoInt));
        };
        if (false) {
            stdgo._internal.internal.race.Race_enable.enable();
            stdgo._internal.internal.race.Race_acquire.acquire((stdgo.Go.toInterface(stdgo.Go.pointer(_rw._readerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
            stdgo._internal.internal.race.Race_acquire.acquire((stdgo.Go.toInterface(stdgo.Go.pointer(_rw._writerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
        };
    }
    @:keep
    static public function _rUnlockSlow( _rw:stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex>, _r:stdgo.GoInt32):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex> = _rw;
        if ((((_r + (1 : stdgo.GoInt32) : stdgo.GoInt32) == (0 : stdgo.GoInt32)) || ((_r + (1 : stdgo.GoInt32) : stdgo.GoInt32) == (-1073741824 : stdgo.GoInt32)) : Bool)) {
            stdgo._internal.internal.race.Race_enable.enable();
            stdgo._internal.sync.Sync__fatal._fatal(("sync: RUnlock of unlocked RWMutex" : stdgo.GoString));
        };
        if (_rw._readerWait.add((-1 : stdgo.GoInt32)) == ((0 : stdgo.GoInt32))) {
            stdgo._internal.sync.Sync__runtime_Semrelease._runtime_Semrelease(stdgo.Go.pointer(_rw._writerSem), false, (1 : stdgo.GoInt));
        };
    }
    @:keep
    static public function runlock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex>):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex> = _rw;
        if (false) {
            var __blank__ = _rw._w._state;
            stdgo._internal.internal.race.Race_releaseMerge.releaseMerge((stdgo.Go.toInterface(stdgo.Go.pointer(_rw._writerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
            stdgo._internal.internal.race.Race_disable.disable();
        };
        {
            var _r = (_rw._readerCount.add((-1 : stdgo.GoInt32)) : stdgo.GoInt32);
            if ((_r < (0 : stdgo.GoInt32) : Bool)) {
                _rw._rUnlockSlow(_r);
            };
        };
        if (false) {
            stdgo._internal.internal.race.Race_enable.enable();
        };
    }
    @:keep
    static public function tryRLock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex>):Bool {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex> = _rw;
        if (false) {
            var __blank__ = _rw._w._state;
            stdgo._internal.internal.race.Race_disable.disable();
        };
        while (true) {
            var _c = (_rw._readerCount.load() : stdgo.GoInt32);
            if ((_c < (0 : stdgo.GoInt32) : Bool)) {
                if (false) {
                    stdgo._internal.internal.race.Race_enable.enable();
                };
                return false;
            };
            if (_rw._readerCount.compareAndSwap(_c, (_c + (1 : stdgo.GoInt32) : stdgo.GoInt32))) {
                if (false) {
                    stdgo._internal.internal.race.Race_enable.enable();
                    stdgo._internal.internal.race.Race_acquire.acquire((stdgo.Go.toInterface(stdgo.Go.pointer(_rw._readerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
                };
                return true;
            };
        };
    }
    @:keep
    static public function rlock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex>):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex> = _rw;
        if (false) {
            var __blank__ = _rw._w._state;
            stdgo._internal.internal.race.Race_disable.disable();
        };
        if ((_rw._readerCount.add((1 : stdgo.GoInt32)) < (0 : stdgo.GoInt32) : Bool)) {
            stdgo._internal.sync.Sync__runtime_SemacquireRWMutexR._runtime_SemacquireRWMutexR(stdgo.Go.pointer(_rw._readerSem), false, (0 : stdgo.GoInt));
        };
        if (false) {
            stdgo._internal.internal.race.Race_enable.enable();
            stdgo._internal.internal.race.Race_acquire.acquire((stdgo.Go.toInterface(stdgo.Go.pointer(_rw._readerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
        };
    }
}
