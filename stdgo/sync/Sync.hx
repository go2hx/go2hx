package stdgo.sync;
var runtime_Semacquire(get, set) : stdgo.Pointer<stdgo.GoUInt32> -> Void;
private function get_runtime_Semacquire():stdgo.Pointer<stdgo.GoUInt32> -> Void return stdgo._internal.sync.Sync_runtime_semacquire.runtime_Semacquire;
private function set_runtime_Semacquire(v:stdgo.Pointer<stdgo.GoUInt32> -> Void):stdgo.Pointer<stdgo.GoUInt32> -> Void {
        stdgo._internal.sync.Sync_runtime_semacquire.runtime_Semacquire = v;
        return v;
    }
var runtime_Semrelease(get, set) : (stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void;
private function get_runtime_Semrelease():(stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void return stdgo._internal.sync.Sync_runtime_semrelease.runtime_Semrelease;
private function set_runtime_Semrelease(v:(stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void):(stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void {
        stdgo._internal.sync.Sync_runtime_semrelease.runtime_Semrelease = v;
        return v;
    }
var runtime_procPin(get, set) : () -> stdgo.GoInt;
private function get_runtime_procPin():() -> stdgo.GoInt return stdgo._internal.sync.Sync_runtime_procpin.runtime_procPin;
private function set_runtime_procPin(v:() -> stdgo.GoInt):() -> stdgo.GoInt {
        stdgo._internal.sync.Sync_runtime_procpin.runtime_procPin = v;
        return v;
    }
var runtime_procUnpin(get, set) : () -> Void;
private function get_runtime_procUnpin():() -> Void return stdgo._internal.sync.Sync_runtime_procunpin.runtime_procUnpin;
private function set_runtime_procUnpin(v:() -> Void):() -> Void {
        stdgo._internal.sync.Sync_runtime_procunpin.runtime_procUnpin = v;
        return v;
    }
typedef PoolDequeue = stdgo._internal.sync.Sync_pooldequeue.PoolDequeue;
typedef Locker = stdgo._internal.sync.Sync_locker.Locker;
typedef Cond = stdgo._internal.sync.Sync_cond.Cond;
typedef Map_ = stdgo._internal.sync.Sync_map_.Map_;
typedef Mutex = stdgo._internal.sync.Sync_mutex.Mutex;
typedef Once = stdgo._internal.sync.Sync_once.Once;
typedef Pool = stdgo._internal.sync.Sync_pool.Pool;
typedef RWMutex = stdgo._internal.sync.Sync_rwmutex.RWMutex;
typedef WaitGroup = stdgo._internal.sync.Sync_waitgroup.WaitGroup;
typedef CondPointer = stdgo._internal.sync.Sync_condpointer.CondPointer;
typedef Map_Pointer = stdgo._internal.sync.Sync_map_pointer.Map_Pointer;
typedef MutexPointer = stdgo._internal.sync.Sync_mutexpointer.MutexPointer;
typedef OncePointer = stdgo._internal.sync.Sync_oncepointer.OncePointer;
typedef PoolPointer = stdgo._internal.sync.Sync_poolpointer.PoolPointer;
typedef RWMutexPointer = stdgo._internal.sync.Sync_rwmutexpointer.RWMutexPointer;
typedef WaitGroupPointer = stdgo._internal.sync.Sync_waitgrouppointer.WaitGroupPointer;
/**
    * Package sync provides basic synchronization primitives such as mutual
    * exclusion locks. Other than the Once and WaitGroup types, most are intended
    * for use by low-level library routines. Higher-level synchronization is
    * better done via channels and communication.
    * 
    * Values containing the types defined in this package should not be copied.
**/
class Sync {
    /**
        * NewCond returns a new Cond with Locker l.
    **/
    static public inline function newCond(_l:Locker):stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond> return stdgo._internal.sync.Sync_newcond.newCond(_l);
    static public inline function newPoolDequeue(_n:stdgo.GoInt):stdgo._internal.sync.Sync_pooldequeue.PoolDequeue return stdgo._internal.sync.Sync_newpooldequeue.newPoolDequeue(_n);
    static public inline function newPoolChain():stdgo._internal.sync.Sync_pooldequeue.PoolDequeue return stdgo._internal.sync.Sync_newpoolchain.newPoolChain();
    /**
        * OnceFunc returns a function that invokes f only once. The returned function
        * may be called concurrently.
        * 
        * If f panics, the returned function will panic with the same value on every call.
    **/
    static public inline function onceFunc(_f:() -> Void):() -> Void return stdgo._internal.sync.Sync_oncefunc.onceFunc(_f);
    /**
        * OnceValue returns a function that invokes f only once and returns the value
        * returned by f. The returned function may be called concurrently.
        * 
        * If f panics, the returned function will panic with the same value on every call.
    **/
    static public inline function onceValue(_f:() -> Dynamic):() -> Dynamic return stdgo._internal.sync.Sync_oncevalue.onceValue(_f);
    /**
        * OnceValues returns a function that invokes f only once and returns the values
        * returned by f. The returned function may be called concurrently.
        * 
        * If f panics, the returned function will panic with the same value on every call.
    **/
    static public inline function onceValues(_f:() -> stdgo.Tuple<Dynamic, Dynamic>):() -> { var _0 : Dynamic; var _1 : Dynamic; } return stdgo._internal.sync.Sync_oncevalues.onceValues(_f);
}
