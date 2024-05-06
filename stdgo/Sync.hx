package stdgo;
/**
    Package sync provides basic synchronization primitives such as mutual
    exclusion locks. Other than the Once and WaitGroup types, most are intended
    for use by low-level library routines. Higher-level synchronization is
    better done via channels and communication.
    
    Values containing the types defined in this package should not be copied.
**/
private var __go2hxdoc__package : Bool;
var runtime_Semacquire(get, set) : stdgo.Pointer<stdgo.GoUInt32> -> Void;
private function get_runtime_Semacquire():stdgo.Pointer<stdgo.GoUInt32> -> Void return stdgo._internal.sync.Sync.runtime_Semacquire;
private function set_runtime_Semacquire(v:stdgo.Pointer<stdgo.GoUInt32> -> Void):stdgo.Pointer<stdgo.GoUInt32> -> Void return stdgo._internal.sync.Sync.runtime_Semacquire = v;
var runtime_Semrelease(get, set) : (stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void;
private function get_runtime_Semrelease():(stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void return stdgo._internal.sync.Sync.runtime_Semrelease;
private function set_runtime_Semrelease(v:(stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void):(stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void return stdgo._internal.sync.Sync.runtime_Semrelease = v;
var runtime_procPin(get, set) : () -> stdgo.GoInt;
private function get_runtime_procPin():() -> stdgo.GoInt return stdgo._internal.sync.Sync.runtime_procPin;
private function set_runtime_procPin(v:() -> stdgo.GoInt):() -> stdgo.GoInt return stdgo._internal.sync.Sync.runtime_procPin = v;
var runtime_procUnpin(get, set) : () -> Void;
private function get_runtime_procUnpin():() -> Void return stdgo._internal.sync.Sync.runtime_procUnpin;
private function set_runtime_procUnpin(v:() -> Void):() -> Void return stdgo._internal.sync.Sync.runtime_procUnpin = v;
@:forward @:forward.new abstract PoolDequeue_static_extension(stdgo._internal.sync.Sync.PoolDequeue_static_extension) from stdgo._internal.sync.Sync.PoolDequeue_static_extension to stdgo._internal.sync.Sync.PoolDequeue_static_extension {

}
typedef PoolDequeue = stdgo._internal.sync.Sync.PoolDequeue;
@:forward @:forward.new abstract Locker_static_extension(stdgo._internal.sync.Sync.Locker_static_extension) from stdgo._internal.sync.Sync.Locker_static_extension to stdgo._internal.sync.Sync.Locker_static_extension {

}
typedef Locker = stdgo._internal.sync.Sync.Locker;
@:forward @:forward.new abstract Cond(stdgo._internal.sync.Sync.Cond) from stdgo._internal.sync.Sync.Cond to stdgo._internal.sync.Sync.Cond {

}
@:forward @:forward.new abstract T_noCopy(stdgo._internal.sync.Sync.T_noCopy) from stdgo._internal.sync.Sync.T_noCopy to stdgo._internal.sync.Sync.T_noCopy {

}
@:forward @:forward.new abstract Map_(stdgo._internal.sync.Sync.Map_) from stdgo._internal.sync.Sync.Map_ to stdgo._internal.sync.Sync.Map_ {

}
@:forward @:forward.new abstract T_readOnly(stdgo._internal.sync.Sync.T_readOnly) from stdgo._internal.sync.Sync.T_readOnly to stdgo._internal.sync.Sync.T_readOnly {

}
@:forward @:forward.new abstract T_entry(stdgo._internal.sync.Sync.T_entry) from stdgo._internal.sync.Sync.T_entry to stdgo._internal.sync.Sync.T_entry {

}
@:forward @:forward.new abstract Mutex(stdgo._internal.sync.Sync.Mutex) from stdgo._internal.sync.Sync.Mutex to stdgo._internal.sync.Sync.Mutex {

}
@:forward @:forward.new abstract Once(stdgo._internal.sync.Sync.Once) from stdgo._internal.sync.Sync.Once to stdgo._internal.sync.Sync.Once {

}
@:forward @:forward.new abstract Pool(stdgo._internal.sync.Sync.Pool) from stdgo._internal.sync.Sync.Pool to stdgo._internal.sync.Sync.Pool {

}
@:forward @:forward.new abstract T_poolLocalInternal(stdgo._internal.sync.Sync.T_poolLocalInternal) from stdgo._internal.sync.Sync.T_poolLocalInternal to stdgo._internal.sync.Sync.T_poolLocalInternal {

}
@:forward @:forward.new abstract T_poolLocal(stdgo._internal.sync.Sync.T_poolLocal) from stdgo._internal.sync.Sync.T_poolLocal to stdgo._internal.sync.Sync.T_poolLocal {

}
@:forward @:forward.new abstract T_poolDequeue(stdgo._internal.sync.Sync.T_poolDequeue) from stdgo._internal.sync.Sync.T_poolDequeue to stdgo._internal.sync.Sync.T_poolDequeue {

}
@:forward @:forward.new abstract T_eface(stdgo._internal.sync.Sync.T_eface) from stdgo._internal.sync.Sync.T_eface to stdgo._internal.sync.Sync.T_eface {

}
@:forward @:forward.new abstract T_poolChain(stdgo._internal.sync.Sync.T_poolChain) from stdgo._internal.sync.Sync.T_poolChain to stdgo._internal.sync.Sync.T_poolChain {

}
@:forward @:forward.new abstract T_poolChainElt(stdgo._internal.sync.Sync.T_poolChainElt) from stdgo._internal.sync.Sync.T_poolChainElt to stdgo._internal.sync.Sync.T_poolChainElt {

}
@:forward @:forward.new abstract T_notifyList(stdgo._internal.sync.Sync.T_notifyList) from stdgo._internal.sync.Sync.T_notifyList to stdgo._internal.sync.Sync.T_notifyList {

}
@:forward @:forward.new abstract RWMutex(stdgo._internal.sync.Sync.RWMutex) from stdgo._internal.sync.Sync.RWMutex to stdgo._internal.sync.Sync.RWMutex {

}
@:forward @:forward.new abstract WaitGroup(stdgo._internal.sync.Sync.WaitGroup) from stdgo._internal.sync.Sync.WaitGroup to stdgo._internal.sync.Sync.WaitGroup {

}
@:forward @:forward.new abstract T__struct_0_asInterface(stdgo._internal.sync.Sync.T__struct_0_asInterface) from stdgo._internal.sync.Sync.T__struct_0_asInterface to stdgo._internal.sync.Sync.T__struct_0_asInterface {

}
@:forward @:forward.new abstract T__struct_0_static_extension(stdgo._internal.sync.Sync.T__struct_0_static_extension) from stdgo._internal.sync.Sync.T__struct_0_static_extension to stdgo._internal.sync.Sync.T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.sync.Sync.T__struct_0;
typedef T_copyChecker = stdgo._internal.sync.Sync.T_copyChecker;
typedef T_dequeueNil = stdgo._internal.sync.Sync.T_dequeueNil;
typedef T_rlocker = stdgo._internal.sync.Sync.T_rlocker;
/**
    NewCond returns a new Cond with Locker l.
**/
function newCond(l:Locker):Cond {
        return stdgo._internal.sync.Sync.newCond(l);
    }
function newPoolDequeue(n:StdTypes.Int):PoolDequeue {
        return stdgo._internal.sync.Sync.newPoolDequeue(n);
    }
function newPoolChain():PoolDequeue {
        return stdgo._internal.sync.Sync.newPoolChain();
    }
/**
    OnceFunc returns a function that invokes f only once. The returned function
    may be called concurrently.
    
    If f panics, the returned function will panic with the same value on every call.
**/
function onceFunc(f:() -> Void):() -> Void {
        final f = f;
        return () ->:Void stdgo._internal.sync.Sync.onceFunc(f)();
    }
macro function onceValue<T_>(_generic__0:haxe.macro.Expr<T_>, f:haxe.macro.Expr<() -> T_>):haxe.macro.Expr<() -> T_> {
        return stdgo._internal.sync.Sync.onceValue(_generic__0, f);
    }
macro function onceValues<T1, T2>(_generic__0:haxe.macro.Expr<T1>, _generic__1:haxe.macro.Expr<T2>, f:haxe.macro.Expr<() -> { var _0 : T1; var _1 : T2; }>):haxe.macro.Expr<() -> { var _0 : T1; var _1 : T2; }> {
        return stdgo._internal.sync.Sync.onceValues(_generic__0, _generic__1, f);
    }
@:forward @:forward.new abstract Cond_asInterface(stdgo._internal.sync.Sync.Cond_asInterface) from stdgo._internal.sync.Sync.Cond_asInterface to stdgo._internal.sync.Sync.Cond_asInterface {

}
@:forward @:forward.new abstract Cond_static_extension(stdgo._internal.sync.Sync.Cond_static_extension) from stdgo._internal.sync.Sync.Cond_static_extension to stdgo._internal.sync.Sync.Cond_static_extension {

}
@:forward @:forward.new abstract T_noCopy_asInterface(stdgo._internal.sync.Sync.T_noCopy_asInterface) from stdgo._internal.sync.Sync.T_noCopy_asInterface to stdgo._internal.sync.Sync.T_noCopy_asInterface {

}
@:forward @:forward.new abstract T_noCopy_static_extension(stdgo._internal.sync.Sync.T_noCopy_static_extension) from stdgo._internal.sync.Sync.T_noCopy_static_extension to stdgo._internal.sync.Sync.T_noCopy_static_extension {

}
@:forward @:forward.new abstract Map__asInterface(stdgo._internal.sync.Sync.Map__asInterface) from stdgo._internal.sync.Sync.Map__asInterface to stdgo._internal.sync.Sync.Map__asInterface {

}
@:forward @:forward.new abstract Map__static_extension(stdgo._internal.sync.Sync.Map__static_extension) from stdgo._internal.sync.Sync.Map__static_extension to stdgo._internal.sync.Sync.Map__static_extension {

}
@:forward @:forward.new abstract T_entry_asInterface(stdgo._internal.sync.Sync.T_entry_asInterface) from stdgo._internal.sync.Sync.T_entry_asInterface to stdgo._internal.sync.Sync.T_entry_asInterface {

}
@:forward @:forward.new abstract T_entry_static_extension(stdgo._internal.sync.Sync.T_entry_static_extension) from stdgo._internal.sync.Sync.T_entry_static_extension to stdgo._internal.sync.Sync.T_entry_static_extension {

}
@:forward @:forward.new abstract Mutex_asInterface(stdgo._internal.sync.Sync.Mutex_asInterface) from stdgo._internal.sync.Sync.Mutex_asInterface to stdgo._internal.sync.Sync.Mutex_asInterface {

}
@:forward @:forward.new abstract Mutex_static_extension(stdgo._internal.sync.Sync.Mutex_static_extension) from stdgo._internal.sync.Sync.Mutex_static_extension to stdgo._internal.sync.Sync.Mutex_static_extension {

}
@:forward @:forward.new abstract Once_asInterface(stdgo._internal.sync.Sync.Once_asInterface) from stdgo._internal.sync.Sync.Once_asInterface to stdgo._internal.sync.Sync.Once_asInterface {

}
@:forward @:forward.new abstract Once_static_extension(stdgo._internal.sync.Sync.Once_static_extension) from stdgo._internal.sync.Sync.Once_static_extension to stdgo._internal.sync.Sync.Once_static_extension {

}
@:forward @:forward.new abstract Pool_asInterface(stdgo._internal.sync.Sync.Pool_asInterface) from stdgo._internal.sync.Sync.Pool_asInterface to stdgo._internal.sync.Sync.Pool_asInterface {

}
@:forward @:forward.new abstract Pool_static_extension(stdgo._internal.sync.Sync.Pool_static_extension) from stdgo._internal.sync.Sync.Pool_static_extension to stdgo._internal.sync.Sync.Pool_static_extension {

}
@:forward @:forward.new abstract T_poolLocal_asInterface(stdgo._internal.sync.Sync.T_poolLocal_asInterface) from stdgo._internal.sync.Sync.T_poolLocal_asInterface to stdgo._internal.sync.Sync.T_poolLocal_asInterface {

}
@:forward @:forward.new abstract T_poolLocal_static_extension(stdgo._internal.sync.Sync.T_poolLocal_static_extension) from stdgo._internal.sync.Sync.T_poolLocal_static_extension to stdgo._internal.sync.Sync.T_poolLocal_static_extension {

}
@:forward @:forward.new abstract T_poolDequeue_asInterface(stdgo._internal.sync.Sync.T_poolDequeue_asInterface) from stdgo._internal.sync.Sync.T_poolDequeue_asInterface to stdgo._internal.sync.Sync.T_poolDequeue_asInterface {

}
@:forward @:forward.new abstract T_poolDequeue_static_extension(stdgo._internal.sync.Sync.T_poolDequeue_static_extension) from stdgo._internal.sync.Sync.T_poolDequeue_static_extension to stdgo._internal.sync.Sync.T_poolDequeue_static_extension {

}
@:forward @:forward.new abstract T_poolChain_asInterface(stdgo._internal.sync.Sync.T_poolChain_asInterface) from stdgo._internal.sync.Sync.T_poolChain_asInterface to stdgo._internal.sync.Sync.T_poolChain_asInterface {

}
@:forward @:forward.new abstract T_poolChain_static_extension(stdgo._internal.sync.Sync.T_poolChain_static_extension) from stdgo._internal.sync.Sync.T_poolChain_static_extension to stdgo._internal.sync.Sync.T_poolChain_static_extension {

}
@:forward @:forward.new abstract T_poolChainElt_asInterface(stdgo._internal.sync.Sync.T_poolChainElt_asInterface) from stdgo._internal.sync.Sync.T_poolChainElt_asInterface to stdgo._internal.sync.Sync.T_poolChainElt_asInterface {

}
@:forward @:forward.new abstract T_poolChainElt_static_extension(stdgo._internal.sync.Sync.T_poolChainElt_static_extension) from stdgo._internal.sync.Sync.T_poolChainElt_static_extension to stdgo._internal.sync.Sync.T_poolChainElt_static_extension {

}
@:forward @:forward.new abstract RWMutex_asInterface(stdgo._internal.sync.Sync.RWMutex_asInterface) from stdgo._internal.sync.Sync.RWMutex_asInterface to stdgo._internal.sync.Sync.RWMutex_asInterface {

}
@:forward @:forward.new abstract RWMutex_static_extension(stdgo._internal.sync.Sync.RWMutex_static_extension) from stdgo._internal.sync.Sync.RWMutex_static_extension to stdgo._internal.sync.Sync.RWMutex_static_extension {

}
@:forward @:forward.new abstract WaitGroup_asInterface(stdgo._internal.sync.Sync.WaitGroup_asInterface) from stdgo._internal.sync.Sync.WaitGroup_asInterface to stdgo._internal.sync.Sync.WaitGroup_asInterface {

}
@:forward @:forward.new abstract WaitGroup_static_extension(stdgo._internal.sync.Sync.WaitGroup_static_extension) from stdgo._internal.sync.Sync.WaitGroup_static_extension to stdgo._internal.sync.Sync.WaitGroup_static_extension {

}
@:forward @:forward.new abstract T_copyChecker_asInterface(stdgo._internal.sync.Sync.T_copyChecker_asInterface) from stdgo._internal.sync.Sync.T_copyChecker_asInterface to stdgo._internal.sync.Sync.T_copyChecker_asInterface {

}
@:forward @:forward.new abstract T_copyChecker_static_extension(stdgo._internal.sync.Sync.T_copyChecker_static_extension) from stdgo._internal.sync.Sync.T_copyChecker_static_extension to stdgo._internal.sync.Sync.T_copyChecker_static_extension {

}
@:forward @:forward.new abstract T_rlocker_asInterface(stdgo._internal.sync.Sync.T_rlocker_asInterface) from stdgo._internal.sync.Sync.T_rlocker_asInterface to stdgo._internal.sync.Sync.T_rlocker_asInterface {

}
@:forward @:forward.new abstract T_rlocker_static_extension(stdgo._internal.sync.Sync.T_rlocker_static_extension) from stdgo._internal.sync.Sync.T_rlocker_static_extension to stdgo._internal.sync.Sync.T_rlocker_static_extension {

}
