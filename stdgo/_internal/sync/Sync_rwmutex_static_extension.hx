package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.RWMutex_asInterface) class RWMutex_static_extension {
    @:keep
    @:tdfield
    static public function rLocker( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):stdgo._internal.sync.Sync_locker.Locker {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex> = _rw;
        return stdgo.Go.asInterface((({
            final e = _rw;
            ({ _w : e._w, _writerSem : e._writerSem, _readerSem : e._readerSem, _readerCount : e._readerCount, _readerWait : e._readerWait } : stdgo._internal.sync.Sync_t_rlocker.T_rlocker);
        })));
    }
    @:keep
    @:tdfield
    static public function unlock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex> = _rw;
        if (false) {
            var __blank__ = (@:checkr _rw ?? throw "null pointer dereference")._w._state;
            stdgo._internal.internal.race.Race_release.release((stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._readerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
            stdgo._internal.internal.race.Race_disable.disable();
        };
        var _r = (@:check2 (@:checkr _rw ?? throw "null pointer dereference")._readerCount.add((1073741824 : stdgo.GoInt32)) : stdgo.GoInt32);
        if ((_r >= (1073741824 : stdgo.GoInt32) : Bool)) {
            stdgo._internal.internal.race.Race_enable.enable();
            stdgo._internal.sync.Sync__fatal._fatal(("sync: Unlock of unlocked RWMutex" : stdgo.GoString));
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_r : stdgo.GoInt) : Bool)) {
                stdgo._internal.sync.Sync__runtime_semrelease._runtime_Semrelease(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._readerSem), false, (0 : stdgo.GoInt));
                _i++;
            };
        };
        @:check2 (@:checkr _rw ?? throw "null pointer dereference")._w.unlock();
        if (false) {
            stdgo._internal.internal.race.Race_enable.enable();
        };
    }
    @:keep
    @:tdfield
    static public function tryLock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):Bool {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex> = _rw;
        if (false) {
            var __blank__ = (@:checkr _rw ?? throw "null pointer dereference")._w._state;
            stdgo._internal.internal.race.Race_disable.disable();
        };
        if (!@:check2 (@:checkr _rw ?? throw "null pointer dereference")._w.tryLock()) {
            if (false) {
                stdgo._internal.internal.race.Race_enable.enable();
            };
            return false;
        };
        if (!@:check2 (@:checkr _rw ?? throw "null pointer dereference")._readerCount.compareAndSwap((0 : stdgo.GoInt32), (-1073741824 : stdgo.GoInt32))) {
            @:check2 (@:checkr _rw ?? throw "null pointer dereference")._w.unlock();
            if (false) {
                stdgo._internal.internal.race.Race_enable.enable();
            };
            return false;
        };
        if (false) {
            stdgo._internal.internal.race.Race_enable.enable();
            stdgo._internal.internal.race.Race_acquire.acquire((stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._readerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
            stdgo._internal.internal.race.Race_acquire.acquire((stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._writerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function lock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex> = _rw;
        if (false) {
            var __blank__ = (@:checkr _rw ?? throw "null pointer dereference")._w._state;
            stdgo._internal.internal.race.Race_disable.disable();
        };
        @:check2 (@:checkr _rw ?? throw "null pointer dereference")._w.lock();
        var _r = (@:check2 (@:checkr _rw ?? throw "null pointer dereference")._readerCount.add((-1073741824 : stdgo.GoInt32)) + (1073741824 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_r != (0 : stdgo.GoInt32)) && (@:check2 (@:checkr _rw ?? throw "null pointer dereference")._readerWait.add(_r) != (0 : stdgo.GoInt32)) : Bool)) {
            stdgo._internal.sync.Sync__runtime_semacquirerwmutex._runtime_SemacquireRWMutex(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._writerSem), false, (0 : stdgo.GoInt));
        };
        if (false) {
            stdgo._internal.internal.race.Race_enable.enable();
            stdgo._internal.internal.race.Race_acquire.acquire((stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._readerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
            stdgo._internal.internal.race.Race_acquire.acquire((stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._writerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
        };
    }
    @:keep
    @:tdfield
    static public function _rUnlockSlow( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>, _r:stdgo.GoInt32):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex> = _rw;
        if ((((_r + (1 : stdgo.GoInt32) : stdgo.GoInt32) == (0 : stdgo.GoInt32)) || ((_r + (1 : stdgo.GoInt32) : stdgo.GoInt32) == (-1073741824 : stdgo.GoInt32)) : Bool)) {
            stdgo._internal.internal.race.Race_enable.enable();
            stdgo._internal.sync.Sync__fatal._fatal(("sync: RUnlock of unlocked RWMutex" : stdgo.GoString));
        };
        if (@:check2 (@:checkr _rw ?? throw "null pointer dereference")._readerWait.add((-1 : stdgo.GoInt32)) == ((0 : stdgo.GoInt32))) {
            stdgo._internal.sync.Sync__runtime_semrelease._runtime_Semrelease(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._writerSem), false, (1 : stdgo.GoInt));
        };
    }
    @:keep
    @:tdfield
    static public function rUnlock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex> = _rw;
        if (false) {
            var __blank__ = (@:checkr _rw ?? throw "null pointer dereference")._w._state;
            stdgo._internal.internal.race.Race_releasemerge.releaseMerge((stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._writerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
            stdgo._internal.internal.race.Race_disable.disable();
        };
        {
            var _r = (@:check2 (@:checkr _rw ?? throw "null pointer dereference")._readerCount.add((-1 : stdgo.GoInt32)) : stdgo.GoInt32);
            if ((_r < (0 : stdgo.GoInt32) : Bool)) {
                @:check2r _rw._rUnlockSlow(_r);
            };
        };
        if (false) {
            stdgo._internal.internal.race.Race_enable.enable();
        };
    }
    @:keep
    @:tdfield
    static public function tryRLock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):Bool {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex> = _rw;
        if (false) {
            var __blank__ = (@:checkr _rw ?? throw "null pointer dereference")._w._state;
            stdgo._internal.internal.race.Race_disable.disable();
        };
        while (true) {
            var _c = (@:check2 (@:checkr _rw ?? throw "null pointer dereference")._readerCount.load() : stdgo.GoInt32);
            if ((_c < (0 : stdgo.GoInt32) : Bool)) {
                if (false) {
                    stdgo._internal.internal.race.Race_enable.enable();
                };
                return false;
            };
            if (@:check2 (@:checkr _rw ?? throw "null pointer dereference")._readerCount.compareAndSwap(_c, (_c + (1 : stdgo.GoInt32) : stdgo.GoInt32))) {
                if (false) {
                    stdgo._internal.internal.race.Race_enable.enable();
                    stdgo._internal.internal.race.Race_acquire.acquire((stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._readerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
                };
                return true;
            };
        };
    }
    @:keep
    @:tdfield
    static public function rLock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex> = _rw;
        if (false) {
            var __blank__ = (@:checkr _rw ?? throw "null pointer dereference")._w._state;
            stdgo._internal.internal.race.Race_disable.disable();
        };
        if ((@:check2 (@:checkr _rw ?? throw "null pointer dereference")._readerCount.add((1 : stdgo.GoInt32)) < (0 : stdgo.GoInt32) : Bool)) {
            stdgo._internal.sync.Sync__runtime_semacquirerwmutexr._runtime_SemacquireRWMutexR(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._readerSem), false, (0 : stdgo.GoInt));
        };
        if (false) {
            stdgo._internal.internal.race.Race_enable.enable();
            stdgo._internal.internal.race.Race_acquire.acquire((stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._readerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
        };
    }
}
