package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.RWMutex_asInterface) class RWMutex_static_extension {
    @:keep
    @:tdfield
    static public function rLocker( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):stdgo._internal.sync.Sync_locker.Locker {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex> = _rw;
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L238"
        return stdgo.Go.asInterface((({
            final e = _rw;
            ({ _w : e._w, _writerSem : e._writerSem, _readerSem : e._readerSem, _readerCount : e._readerCount, _readerWait : e._readerWait } : stdgo._internal.sync.Sync_t_rlocker.T_rlocker);
        })));
    }
    @:keep
    @:tdfield
    static public function unlock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex> = _rw;
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L199"
        if (false) {
            (@:checkr _rw ?? throw "null pointer dereference")._w._state;
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L201"
            stdgo._internal.internal.race.Race_release.release((stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._readerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L202"
            stdgo._internal.internal.race.Race_disable.disable();
        };
        var _r = ((@:checkr _rw ?? throw "null pointer dereference")._readerCount.add((1073741824 : stdgo.GoInt32)) : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L207"
        if ((_r >= (1073741824 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L208"
            stdgo._internal.internal.race.Race_enable.enable();
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L209"
            stdgo._internal.sync.Sync__fatal._fatal(("sync: Unlock of unlocked RWMutex" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L212"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_r : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L213"
                stdgo._internal.sync.Sync__runtime_semrelease._runtime_Semrelease(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._readerSem), false, (0 : stdgo.GoInt));
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L216"
        (@:checkr _rw ?? throw "null pointer dereference")._w.unlock();
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L217"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L218"
            stdgo._internal.internal.race.Race_enable.enable();
        };
    }
    @:keep
    @:tdfield
    static public function tryLock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):Bool {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex> = _rw;
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L167"
        if (false) {
            (@:checkr _rw ?? throw "null pointer dereference")._w._state;
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L169"
            stdgo._internal.internal.race.Race_disable.disable();
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L171"
        if (!(@:checkr _rw ?? throw "null pointer dereference")._w.tryLock()) {
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L172"
            if (false) {
                //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L173"
                stdgo._internal.internal.race.Race_enable.enable();
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L175"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L177"
        if (!(@:checkr _rw ?? throw "null pointer dereference")._readerCount.compareAndSwap((0 : stdgo.GoInt32), (-1073741824 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L178"
            (@:checkr _rw ?? throw "null pointer dereference")._w.unlock();
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L179"
            if (false) {
                //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L180"
                stdgo._internal.internal.race.Race_enable.enable();
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L182"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L184"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L185"
            stdgo._internal.internal.race.Race_enable.enable();
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L186"
            stdgo._internal.internal.race.Race_acquire.acquire((stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._readerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L187"
            stdgo._internal.internal.race.Race_acquire.acquire((stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._writerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L189"
        return true;
    }
    @:keep
    @:tdfield
    static public function lock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex> = _rw;
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L142"
        if (false) {
            (@:checkr _rw ?? throw "null pointer dereference")._w._state;
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L144"
            stdgo._internal.internal.race.Race_disable.disable();
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L147"
        (@:checkr _rw ?? throw "null pointer dereference")._w.lock();
        var _r = ((@:checkr _rw ?? throw "null pointer dereference")._readerCount.add((-1073741824 : stdgo.GoInt32)) + (1073741824 : stdgo.GoInt32) : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L151"
        if (((_r != (0 : stdgo.GoInt32)) && ((@:checkr _rw ?? throw "null pointer dereference")._readerWait.add(_r) != (0 : stdgo.GoInt32)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L152"
            stdgo._internal.sync.Sync__runtime_semacquirerwmutex._runtime_SemacquireRWMutex(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._writerSem), false, (0 : stdgo.GoInt));
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L154"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L155"
            stdgo._internal.internal.race.Race_enable.enable();
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L156"
            stdgo._internal.internal.race.Race_acquire.acquire((stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._readerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L157"
            stdgo._internal.internal.race.Race_acquire.acquire((stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._writerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
        };
    }
    @:keep
    @:tdfield
    static public function _rUnlockSlow( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>, _r:stdgo.GoInt32):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex> = _rw;
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L127"
        if ((((_r + (1 : stdgo.GoInt32) : stdgo.GoInt32) == (0 : stdgo.GoInt32)) || ((_r + (1 : stdgo.GoInt32) : stdgo.GoInt32) == (-1073741824 : stdgo.GoInt32)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L128"
            stdgo._internal.internal.race.Race_enable.enable();
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L129"
            stdgo._internal.sync.Sync__fatal._fatal(("sync: RUnlock of unlocked RWMutex" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L132"
        if ((@:checkr _rw ?? throw "null pointer dereference")._readerWait.add((-1 : stdgo.GoInt32)) == ((0 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L134"
            stdgo._internal.sync.Sync__runtime_semrelease._runtime_Semrelease(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._writerSem), false, (1 : stdgo.GoInt));
        };
    }
    @:keep
    @:tdfield
    static public function rUnlock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex> = _rw;
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L112"
        if (false) {
            (@:checkr _rw ?? throw "null pointer dereference")._w._state;
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L114"
            stdgo._internal.internal.race.Race_releasemerge.releaseMerge((stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._writerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L115"
            stdgo._internal.internal.race.Race_disable.disable();
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L117"
        {
            var _r = ((@:checkr _rw ?? throw "null pointer dereference")._readerCount.add((-1 : stdgo.GoInt32)) : stdgo.GoInt32);
            if ((_r < (0 : stdgo.GoInt32) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L119"
                _rw._rUnlockSlow(_r);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L121"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L122"
            stdgo._internal.internal.race.Race_enable.enable();
        };
    }
    @:keep
    @:tdfield
    static public function tryRLock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):Bool {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex> = _rw;
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L85"
        if (false) {
            (@:checkr _rw ?? throw "null pointer dereference")._w._state;
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L87"
            stdgo._internal.internal.race.Race_disable.disable();
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L89"
        while (true) {
            var _c = ((@:checkr _rw ?? throw "null pointer dereference")._readerCount.load() : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L91"
            if ((_c < (0 : stdgo.GoInt32) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L92"
                if (false) {
                    //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L93"
                    stdgo._internal.internal.race.Race_enable.enable();
                };
                //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L95"
                return false;
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L97"
            if ((@:checkr _rw ?? throw "null pointer dereference")._readerCount.compareAndSwap(_c, (_c + (1 : stdgo.GoInt32) : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L98"
                if (false) {
                    //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L99"
                    stdgo._internal.internal.race.Race_enable.enable();
                    //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L100"
                    stdgo._internal.internal.race.Race_acquire.acquire((stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._readerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
                };
                //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L102"
                return true;
            };
        };
    }
    @:keep
    @:tdfield
    static public function rLock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex> = _rw;
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L65"
        if (false) {
            (@:checkr _rw ?? throw "null pointer dereference")._w._state;
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L67"
            stdgo._internal.internal.race.Race_disable.disable();
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L69"
        if (((@:checkr _rw ?? throw "null pointer dereference")._readerCount.add((1 : stdgo.GoInt32)) < (0 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L71"
            stdgo._internal.sync.Sync__runtime_semacquirerwmutexr._runtime_SemacquireRWMutexR(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._readerSem), false, (0 : stdgo.GoInt));
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L73"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L74"
            stdgo._internal.internal.race.Race_enable.enable();
            //"file:///home/runner/.go/go1.21.3/src/sync/rwmutex.go#L75"
            stdgo._internal.internal.race.Race_acquire.acquire((stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _rw ?? throw "null pointer dereference")._readerSem)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
        };
    }
}
