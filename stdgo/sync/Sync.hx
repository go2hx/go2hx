package stdgo.sync;
/**
    // Package sync provides basic synchronization primitives such as mutual
    // exclusion locks. Other than the Once and WaitGroup types, most are intended
    // for use by low-level library routines. Higher-level synchronization is
    // better done via channels and communication.
    //
    // Values containing the types defined in this package should not be copied.
**/
private var __go2hxdoc__package : Bool;
var runtime_Semacquire(get, set) : stdgo.Pointer<stdgo.GoUInt32> -> Void;
function get_runtime_Semacquire():stdgo.Pointer<stdgo.GoUInt32> -> Void return stdgo._internal.sync.Sync.runtime_Semacquire;
function set_runtime_Semacquire(v:stdgo.Pointer<stdgo.GoUInt32> -> Void):stdgo.Pointer<stdgo.GoUInt32> -> Void return stdgo._internal.sync.Sync.runtime_Semacquire = v;
var runtime_Semrelease(get, set) : (stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void;
function get_runtime_Semrelease():(stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void return stdgo._internal.sync.Sync.runtime_Semrelease;
function set_runtime_Semrelease(v:(stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void):(stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void return stdgo._internal.sync.Sync.runtime_Semrelease = v;
var runtime_procPin(get, set) : () -> stdgo.GoInt;
function get_runtime_procPin():() -> stdgo.GoInt return stdgo._internal.sync.Sync.runtime_procPin;
function set_runtime_procPin(v:() -> stdgo.GoInt):() -> stdgo.GoInt return stdgo._internal.sync.Sync.runtime_procPin = v;
var runtime_procUnpin(get, set) : () -> Void;
function get_runtime_procUnpin():() -> Void return stdgo._internal.sync.Sync.runtime_procUnpin;
function set_runtime_procUnpin(v:() -> Void):() -> Void return stdgo._internal.sync.Sync.runtime_procUnpin = v;
@:invalid typedef PoolDequeue_static_extension = Dynamic;
typedef PoolDequeue = stdgo._internal.sync.Sync.PoolDequeue;
@:invalid typedef Locker_static_extension = Dynamic;
typedef Locker = stdgo._internal.sync.Sync.Locker;
@:invalid typedef Cond = Dynamic;
@:invalid typedef T_noCopy = Dynamic;
@:invalid typedef Map_ = Dynamic;
@:invalid typedef T_readOnly = Dynamic;
@:invalid typedef T_entry = Dynamic;
@:invalid typedef Mutex = Dynamic;
@:invalid typedef Once = Dynamic;
@:invalid typedef Pool = Dynamic;
@:invalid typedef T_poolLocalInternal = Dynamic;
@:invalid typedef T_poolLocal = Dynamic;
@:invalid typedef T_poolDequeue = Dynamic;
@:invalid typedef T_eface = Dynamic;
@:invalid typedef T_poolChain = Dynamic;
@:invalid typedef T_poolChainElt = Dynamic;
@:invalid typedef T_notifyList = Dynamic;
@:invalid typedef RWMutex = Dynamic;
@:invalid typedef WaitGroup = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.sync.Sync.T__struct_0;
typedef T_copyChecker = stdgo._internal.sync.Sync.T_copyChecker;
typedef T_dequeueNil = stdgo._internal.sync.Sync.T_dequeueNil;
typedef T_rlocker = stdgo._internal.sync.Sync.T_rlocker;
/**
    // NewCond returns a new Cond with Locker l.
**/
inline function newCond(l:Locker):Cond throw "not implemented";
inline function newPoolDequeue(n:Int):PoolDequeue throw "not implemented";
inline function newPoolChain():PoolDequeue throw "not implemented";
/**
    // OnceFunc returns a function that invokes f only once. The returned function
    // may be called concurrently.
    //
    // If f panics, the returned function will panic with the same value on every call.
**/
inline function onceFunc(f:() -> Void):() -> Void throw "not implemented";
macro inline function onceValue<T_>(_generic__0:haxe.macro.Expr.ExprOf<T_>, f:haxe.macro.Expr.ExprOf<() -> T_>):haxe.macro.Expr.ExprOf<() -> T_> throw "not implemented";
macro inline function onceValues<T1, T2>(_generic__0:haxe.macro.Expr.ExprOf<T1>, _generic__1:haxe.macro.Expr.ExprOf<T2>, f:haxe.macro.Expr.ExprOf<() -> { var _0 : T1; var _1 : T2; }>):haxe.macro.Expr.ExprOf<() -> { var _0 : T1; var _1 : T2; }> throw "not implemented";
@:invalid typedef Cond_asInterface = Dynamic;
@:invalid typedef Cond_static_extension = Dynamic;
@:invalid typedef T_noCopy_asInterface = Dynamic;
@:invalid typedef T_noCopy_static_extension = Dynamic;
@:invalid typedef Map__asInterface = Dynamic;
@:invalid typedef Map__static_extension = Dynamic;
@:invalid typedef T_entry_asInterface = Dynamic;
@:invalid typedef T_entry_static_extension = Dynamic;
@:invalid typedef Mutex_asInterface = Dynamic;
@:invalid typedef Mutex_static_extension = Dynamic;
@:invalid typedef Once_asInterface = Dynamic;
@:invalid typedef Once_static_extension = Dynamic;
@:invalid typedef Pool_asInterface = Dynamic;
@:invalid typedef Pool_static_extension = Dynamic;
@:invalid typedef T_poolLocal_asInterface = Dynamic;
@:invalid typedef T_poolLocal_static_extension = Dynamic;
@:invalid typedef T_poolDequeue_asInterface = Dynamic;
@:invalid typedef T_poolDequeue_static_extension = Dynamic;
@:invalid typedef T_poolChain_asInterface = Dynamic;
@:invalid typedef T_poolChain_static_extension = Dynamic;
@:invalid typedef T_poolChainElt_asInterface = Dynamic;
@:invalid typedef T_poolChainElt_static_extension = Dynamic;
@:invalid typedef RWMutex_asInterface = Dynamic;
@:invalid typedef RWMutex_static_extension = Dynamic;
@:invalid typedef WaitGroup_asInterface = Dynamic;
@:invalid typedef WaitGroup_static_extension = Dynamic;
@:invalid typedef T_copyChecker_asInterface = Dynamic;
@:invalid typedef T_copyChecker_static_extension = Dynamic;
@:invalid typedef T_rlocker_asInterface = Dynamic;
@:invalid typedef T_rlocker_static_extension = Dynamic;
