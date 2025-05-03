package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.Mutex_asInterface) class Mutex_static_extension {
    @:keep
    @:tdfield
    static public function _unlockSlow( _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>, _new_:stdgo.GoInt32):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex> = _m;
        //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L228"
        if ((((_new_ + (1 : stdgo.GoInt32) : stdgo.GoInt32)) & (1 : stdgo.GoInt32) : stdgo.GoInt32) == ((0 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L229"
            stdgo._internal.sync.Sync__fatal._fatal(("sync: unlock of unlocked mutex" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L231"
        if ((_new_ & (4 : stdgo.GoInt32) : stdgo.GoInt32) == ((0 : stdgo.GoInt32))) {
            var _old = (_new_ : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L233"
            while (true) {
                //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L240"
                if ((((_old >> (3i64 : stdgo.GoUInt64) : stdgo.GoInt32) == (0 : stdgo.GoInt32)) || ((_old & (7 : stdgo.GoInt32) : stdgo.GoInt32) != (0 : stdgo.GoInt32)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L241"
                    return;
                };
                _new_ = (((_old - (8 : stdgo.GoInt32) : stdgo.GoInt32)) | (2 : stdgo.GoInt32) : stdgo.GoInt32);
                //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L245"
                if (stdgo._internal.sync.atomic_.Atomic__compareandswapint32.compareAndSwapInt32(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._state), _old, _new_)) {
                    //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L246"
                    stdgo._internal.sync.Sync__runtime_semrelease._runtime_Semrelease(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._sema), false, (1 : stdgo.GoInt));
                    //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L247"
                    return;
                };
                _old = (@:checkr _m ?? throw "null pointer dereference")._state;
            };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L257"
            stdgo._internal.sync.Sync__runtime_semrelease._runtime_Semrelease(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._sema), true, (1 : stdgo.GoInt));
        };
    }
    @:keep
    @:tdfield
    static public function unlock( _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex> = _m;
        @:privateAccess #if target.threaded _m.mutex.release() #else null #end;
    }
    @:keep
    @:tdfield
    static public function _lockSlow( _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex> = _m;
        var _waitStartTime:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _starving = (false : Bool);
        var _awoke = (false : Bool);
        var _iter = (0 : stdgo.GoInt);
        var _old = ((@:checkr _m ?? throw "null pointer dereference")._state : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L123"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L126"
            if ((((_old & (5 : stdgo.GoInt32) : stdgo.GoInt32) == (1 : stdgo.GoInt32)) && stdgo._internal.sync.Sync__runtime_canspin._runtime_canSpin(_iter) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L130"
                if ((((!_awoke && (_old & (2 : stdgo.GoInt32) : stdgo.GoInt32) == ((0 : stdgo.GoInt32)) : Bool) && (_old >> (3i64 : stdgo.GoUInt64) : stdgo.GoInt32) != ((0 : stdgo.GoInt32)) : Bool) && stdgo._internal.sync.atomic_.Atomic__compareandswapint32.compareAndSwapInt32(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._state), _old, (_old | (2 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                    _awoke = true;
                };
                //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L134"
                stdgo._internal.sync.Sync__runtime_dospin._runtime_doSpin();
                //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L135"
                _iter++;
                _old = (@:checkr _m ?? throw "null pointer dereference")._state;
                //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L137"
                continue;
            };
            var _new_ = (_old : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L141"
            if ((_old & (4 : stdgo.GoInt32) : stdgo.GoInt32) == ((0 : stdgo.GoInt32))) {
                _new_ = (_new_ | ((1 : stdgo.GoInt32)) : stdgo.GoInt32);
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L144"
            if ((_old & (5 : stdgo.GoInt32) : stdgo.GoInt32) != ((0 : stdgo.GoInt32))) {
                _new_ = (_new_ + ((8 : stdgo.GoInt32)) : stdgo.GoInt32);
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L151"
            if ((_starving && ((_old & (1 : stdgo.GoInt32) : stdgo.GoInt32) != (0 : stdgo.GoInt32)) : Bool)) {
                _new_ = (_new_ | ((4 : stdgo.GoInt32)) : stdgo.GoInt32);
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L154"
            if (_awoke) {
                //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L157"
                if ((_new_ & (2 : stdgo.GoInt32) : stdgo.GoInt32) == ((0 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L158"
                    stdgo._internal.sync.Sync__throw._throw(("sync: inconsistent mutex state" : stdgo.GoString));
                };
                _new_ = (_new_ & ((((2 : stdgo.GoInt32)) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L162"
            if (stdgo._internal.sync.atomic_.Atomic__compareandswapint32.compareAndSwapInt32(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._state), _old, _new_)) {
                //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L163"
                if ((_old & (5 : stdgo.GoInt32) : stdgo.GoInt32) == ((0 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L164"
                    break;
                };
                var _queueLifo = (_waitStartTime != ((0i64 : stdgo.GoInt64)) : Bool);
                //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L168"
                if (_waitStartTime == ((0i64 : stdgo.GoInt64))) {
                    _waitStartTime = stdgo._internal.sync.Sync__runtime_nanotime._runtime_nanotime();
                };
                //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L171"
                stdgo._internal.sync.Sync__runtime_semacquiremutex._runtime_SemacquireMutex(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._sema), _queueLifo, (1 : stdgo.GoInt));
                _starving = (_starving || ((stdgo._internal.sync.Sync__runtime_nanotime._runtime_nanotime() - _waitStartTime : stdgo.GoInt64) > (1000000i64 : stdgo.GoInt64) : Bool) : Bool);
                _old = (@:checkr _m ?? throw "null pointer dereference")._state;
                //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L174"
                if ((_old & (4 : stdgo.GoInt32) : stdgo.GoInt32) != ((0 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L179"
                    if ((((_old & (3 : stdgo.GoInt32) : stdgo.GoInt32) != (0 : stdgo.GoInt32)) || ((_old >> (3i64 : stdgo.GoUInt64) : stdgo.GoInt32) == (0 : stdgo.GoInt32)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L180"
                        stdgo._internal.sync.Sync__throw._throw(("sync: inconsistent mutex state" : stdgo.GoString));
                    };
                    var _delta = ((-7 : stdgo.GoInt32) : stdgo.GoInt32);
                    //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L183"
                    if ((!_starving || ((_old >> (3i64 : stdgo.GoUInt64) : stdgo.GoInt32) == (1 : stdgo.GoInt32)) : Bool)) {
                        _delta = (_delta - ((4 : stdgo.GoInt32)) : stdgo.GoInt32);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L191"
                    stdgo._internal.sync.atomic_.Atomic__addint32.addInt32(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._state), _delta);
                    //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L192"
                    break;
                };
                _awoke = true;
                _iter = (0 : stdgo.GoInt);
            } else {
                _old = (@:checkr _m ?? throw "null pointer dereference")._state;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L201"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/sync/mutex.go#L202"
            stdgo._internal.internal.race.Race_acquire.acquire((stdgo.Go.toInterface(_m) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
        };
    }
    @:keep
    @:tdfield
    static public function tryLock( _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex> = _m;
        return @:privateAccess #if target.threaded _m.mutex.tryAcquire() #else false #end;
    }
    @:keep
    @:tdfield
    static public function lock( _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex> = _m;
        @:privateAccess #if target.threaded _m.mutex.acquire() #else null #end;
    }
}
