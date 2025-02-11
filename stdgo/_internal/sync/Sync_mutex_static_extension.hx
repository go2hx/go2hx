package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.Mutex_asInterface) class Mutex_static_extension {
    @:keep
    @:tdfield
    static public function _unlockSlow( _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>, _new_:stdgo.GoInt32):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex> = _m;
        if ((((_new_ + (1 : stdgo.GoInt32) : stdgo.GoInt32)) & (1 : stdgo.GoInt32) : stdgo.GoInt32) == ((0 : stdgo.GoInt32))) {
            stdgo._internal.sync.Sync__fatal._fatal(("sync: unlock of unlocked mutex" : stdgo.GoString));
        };
        if ((_new_ & (4 : stdgo.GoInt32) : stdgo.GoInt32) == ((0 : stdgo.GoInt32))) {
            var _old = (_new_ : stdgo.GoInt32);
            while (true) {
                if ((((_old >> (3i64 : stdgo.GoUInt64) : stdgo.GoInt32) == (0 : stdgo.GoInt32)) || ((_old & (7 : stdgo.GoInt32) : stdgo.GoInt32) != (0 : stdgo.GoInt32)) : Bool)) {
                    return;
                };
                _new_ = (((_old - (8 : stdgo.GoInt32) : stdgo.GoInt32)) | (2 : stdgo.GoInt32) : stdgo.GoInt32);
                if (stdgo._internal.sync.atomic_.Atomic__compareandswapint32.compareAndSwapInt32(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._state), _old, _new_)) {
                    stdgo._internal.sync.Sync__runtime_semrelease._runtime_Semrelease(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._sema), false, (1 : stdgo.GoInt));
                    return;
                };
                _old = (@:checkr _m ?? throw "null pointer dereference")._state;
            };
        } else {
            stdgo._internal.sync.Sync__runtime_semrelease._runtime_Semrelease(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._sema), true, (1 : stdgo.GoInt));
        };
    }
    @:keep
    @:tdfield
    static public function unlock( _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>):Void @:privateAccess #if target.threaded _m.mutex.release() #else null #end;
    @:keep
    @:tdfield
    static public function _lockSlow( _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex> = _m;
        var _waitStartTime:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _starving = (false : Bool);
        var _awoke = (false : Bool);
        var _iter = (0 : stdgo.GoInt);
        var _old = ((@:checkr _m ?? throw "null pointer dereference")._state : stdgo.GoInt32);
        while (true) {
            if ((((_old & (5 : stdgo.GoInt32) : stdgo.GoInt32) == (1 : stdgo.GoInt32)) && stdgo._internal.sync.Sync__runtime_canspin._runtime_canSpin(_iter) : Bool)) {
                if ((((!_awoke && (_old & (2 : stdgo.GoInt32) : stdgo.GoInt32) == ((0 : stdgo.GoInt32)) : Bool) && (_old >> (3i64 : stdgo.GoUInt64) : stdgo.GoInt32) != ((0 : stdgo.GoInt32)) : Bool) && stdgo._internal.sync.atomic_.Atomic__compareandswapint32.compareAndSwapInt32(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._state), _old, (_old | (2 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                    _awoke = true;
                };
                stdgo._internal.sync.Sync__runtime_dospin._runtime_doSpin();
                _iter++;
                _old = (@:checkr _m ?? throw "null pointer dereference")._state;
                continue;
            };
            var _new_ = (_old : stdgo.GoInt32);
            if ((_old & (4 : stdgo.GoInt32) : stdgo.GoInt32) == ((0 : stdgo.GoInt32))) {
                _new_ = (_new_ | ((1 : stdgo.GoInt32)) : stdgo.GoInt32);
            };
            if ((_old & (5 : stdgo.GoInt32) : stdgo.GoInt32) != ((0 : stdgo.GoInt32))) {
                _new_ = (_new_ + ((8 : stdgo.GoInt32)) : stdgo.GoInt32);
            };
            if ((_starving && ((_old & (1 : stdgo.GoInt32) : stdgo.GoInt32) != (0 : stdgo.GoInt32)) : Bool)) {
                _new_ = (_new_ | ((4 : stdgo.GoInt32)) : stdgo.GoInt32);
            };
            if (_awoke) {
                if ((_new_ & (2 : stdgo.GoInt32) : stdgo.GoInt32) == ((0 : stdgo.GoInt32))) {
                    stdgo._internal.sync.Sync__throw._throw(("sync: inconsistent mutex state" : stdgo.GoString));
                };
                _new_ = (_new_ & ((((2 : stdgo.GoInt32)) ^ (-1i32 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
            };
            if (stdgo._internal.sync.atomic_.Atomic__compareandswapint32.compareAndSwapInt32(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._state), _old, _new_)) {
                if ((_old & (5 : stdgo.GoInt32) : stdgo.GoInt32) == ((0 : stdgo.GoInt32))) {
                    break;
                };
                var _queueLifo = (_waitStartTime != ((0i64 : stdgo.GoInt64)) : Bool);
                if (_waitStartTime == ((0i64 : stdgo.GoInt64))) {
                    _waitStartTime = stdgo._internal.sync.Sync__runtime_nanotime._runtime_nanotime();
                };
                stdgo._internal.sync.Sync__runtime_semacquiremutex._runtime_SemacquireMutex(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._sema), _queueLifo, (1 : stdgo.GoInt));
                _starving = (_starving || ((stdgo._internal.sync.Sync__runtime_nanotime._runtime_nanotime() - _waitStartTime : stdgo.GoInt64) > (1000000i64 : stdgo.GoInt64) : Bool) : Bool);
                _old = (@:checkr _m ?? throw "null pointer dereference")._state;
                if ((_old & (4 : stdgo.GoInt32) : stdgo.GoInt32) != ((0 : stdgo.GoInt32))) {
                    if ((((_old & (3 : stdgo.GoInt32) : stdgo.GoInt32) != (0 : stdgo.GoInt32)) || ((_old >> (3i64 : stdgo.GoUInt64) : stdgo.GoInt32) == (0 : stdgo.GoInt32)) : Bool)) {
                        stdgo._internal.sync.Sync__throw._throw(("sync: inconsistent mutex state" : stdgo.GoString));
                    };
                    var _delta = ((-7 : stdgo.GoInt32) : stdgo.GoInt32);
                    if ((!_starving || ((_old >> (3i64 : stdgo.GoUInt64) : stdgo.GoInt32) == (1 : stdgo.GoInt32)) : Bool)) {
                        _delta = (_delta - ((4 : stdgo.GoInt32)) : stdgo.GoInt32);
                    };
                    stdgo._internal.sync.atomic_.Atomic__addint32.addInt32(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._state), _delta);
                    break;
                };
                _awoke = true;
                _iter = (0 : stdgo.GoInt);
            } else {
                _old = (@:checkr _m ?? throw "null pointer dereference")._state;
            };
        };
        if (false) {
            stdgo._internal.internal.race.Race_acquire.acquire((stdgo.Go.toInterface(_m) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
        };
    }
    @:keep
    @:tdfield
    static public function tryLock( _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>):Bool @:privateAccess return #if target.threaded _m.mutex.tryAcquire() #else true #end;
    @:keep
    @:tdfield
    static public function lock( _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>):Void @:privateAccess #if target.threaded _m.mutex.acquire() #else null #end;
}
