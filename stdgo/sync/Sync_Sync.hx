package stdgo.sync;
/**
    Package sync provides basic synchronization primitives such as mutual
    exclusion locks. Other than the Once and WaitGroup types, most are intended
    for use by low-level library routines. Higher-level synchronization is
    better done via channels and communication.
    
    Values containing the types defined in this package should not be copied.
**/
class Sync {
    /**
        NewCond returns a new Cond with Locker l.
    **/
    static public inline function newCond(_l:Locker):Cond {
        return stdgo._internal.sync.Sync_newCond.newCond(_l);
    }
    static public inline function newPoolDequeue(_n:StdTypes.Int):PoolDequeue {
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.sync.Sync_newPoolDequeue.newPoolDequeue(_n);
    }
    static public inline function newPoolChain():PoolDequeue {
        return stdgo._internal.sync.Sync_newPoolChain.newPoolChain();
    }
    /**
        OnceFunc returns a function that invokes f only once. The returned function
        may be called concurrently.
        
        If f panics, the returned function will panic with the same value on every call.
    **/
    static public inline function onceFunc(_f:() -> Void):() -> Void {
        final _f = _f;
        return () -> stdgo._internal.sync.Sync_onceFunc.onceFunc(_f)();
    }
    /**
        OnceValue returns a function that invokes f only once and returns the value
        returned by f. The returned function may be called concurrently.
        
        If f panics, the returned function will panic with the same value on every call.
    **/
    static public inline function onceValue(_f:() -> Dynamic):() -> Dynamic {
        final _f = _f;
        return () -> stdgo._internal.sync.Sync_onceValue.onceValue(_f)();
    }
    /**
        OnceValues returns a function that invokes f only once and returns the values
        returned by f. The returned function may be called concurrently.
        
        If f panics, the returned function will panic with the same value on every call.
    **/
    static public inline function onceValues(_f:() -> { var _0 : Dynamic; var _1 : Dynamic; }):() -> { var _0 : Dynamic; var _1 : Dynamic; } {
        final _f = _f;
        return () -> stdgo._internal.sync.Sync_onceValues.onceValues(_f)();
    }
}
