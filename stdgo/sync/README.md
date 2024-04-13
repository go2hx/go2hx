# Module: `stdgo.sync`

[(view library index)](../stdgo.md)


# Overview



Package sync provides basic synchronization primitives such as mutual
exclusion locks. Other than the Once and WaitGroup types, most are intended
for use by low\-level library routines. Higher\-level synchronization is
better done via channels and communication.  


Values containing the types defined in this package should not be copied.  

# Index


- [`function get_runtime_Semacquire():()`](<#function-get_runtime_semacquire>)

- [`function get_runtime_Semrelease():(:stdgo.Pointer<stdgo.GoUInt32>, :Bool, :stdgo.GoInt):Void`](<#function-get_runtime_semrelease>)

- [`function get_runtime_procPin():():stdgo.GoInt`](<#function-get_runtime_procpin>)

- [`function get_runtime_procUnpin():():Void`](<#function-get_runtime_procunpin>)

- [`function newCond(l:stdgo.sync.Locker):stdgo.sync.Cond`](<#function-newcond>)

- [`function newPoolChain():stdgo.sync.PoolDequeue`](<#function-newpoolchain>)

- [`function newPoolDequeue(n:Int):stdgo.sync.PoolDequeue`](<#function-newpooldequeue>)

- [`function onceFunc(f:():Void):():Void`](<#function-oncefunc>)

- [`function onceValue(_generic__0:onceValue.T_, f:():onceValue.T_):():onceValue.T_`](<#function-oncevalue>)

- [`function onceValues(_generic__0:onceValues.T1, _generic__1:onceValues.T2, f:():{
	_1:onceValues.T2;
	_0:onceValues.T1;
}):():{
	_1:onceValues.T2;
	_0:onceValues.T1;
}`](<#function-oncevalues>)

- [`function runtime_Semacquire()`](<#function-runtime_semacquire>)

- [`function runtime_Semrelease(:stdgo.Pointer<stdgo.GoUInt32>, :Bool, :stdgo.GoInt):Void`](<#function-runtime_semrelease>)

- [`function runtime_procPin():stdgo.GoInt`](<#function-runtime_procpin>)

- [`function runtime_procUnpin():Void`](<#function-runtime_procunpin>)

- [`function set_runtime_Semacquire(v:()):()`](<#function-set_runtime_semacquire>)

- [`function set_runtime_Semrelease(v:(:stdgo.Pointer<stdgo.GoUInt32>, :Bool, :stdgo.GoInt):Void):(:stdgo.Pointer<stdgo.GoUInt32>, :Bool, :stdgo.GoInt):Void`](<#function-set_runtime_semrelease>)

- [`function set_runtime_procPin(v:():stdgo.GoInt):():stdgo.GoInt`](<#function-set_runtime_procpin>)

- [`function set_runtime_procUnpin(v:():Void):():Void`](<#function-set_runtime_procunpin>)

- [typedef Cond](<#typedef-cond>)

- [typedef Cond\_asInterface](<#typedef-cond_asinterface>)

- [typedef Cond\_static\_extension](<#typedef-cond_static_extension>)

- [typedef Locker](<#typedef-locker>)

- [typedef Map\_](<#typedef-map_>)

- [typedef Map\_\_asInterface](<#typedef-map__asinterface>)

- [typedef Map\_\_static\_extension](<#typedef-map__static_extension>)

- [typedef Mutex](<#typedef-mutex>)

- [typedef Mutex\_asInterface](<#typedef-mutex_asinterface>)

- [typedef Mutex\_static\_extension](<#typedef-mutex_static_extension>)

- [typedef Once](<#typedef-once>)

- [typedef Once\_asInterface](<#typedef-once_asinterface>)

- [typedef Once\_static\_extension](<#typedef-once_static_extension>)

- [typedef Pool](<#typedef-pool>)

- [typedef PoolDequeue](<#typedef-pooldequeue>)

- [typedef Pool\_asInterface](<#typedef-pool_asinterface>)

- [typedef Pool\_static\_extension](<#typedef-pool_static_extension>)

- [typedef RWMutex](<#typedef-rwmutex>)

- [typedef RWMutex\_asInterface](<#typedef-rwmutex_asinterface>)

- [typedef RWMutex\_static\_extension](<#typedef-rwmutex_static_extension>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_copyChecker](<#typedef-t_copychecker>)

- [typedef T\_copyChecker\_asInterface](<#typedef-t_copychecker_asinterface>)

- [typedef T\_copyChecker\_static\_extension](<#typedef-t_copychecker_static_extension>)

- [typedef T\_dequeueNil](<#typedef-t_dequeuenil>)

- [typedef T\_eface](<#typedef-t_eface>)

- [typedef T\_entry](<#typedef-t_entry>)

- [typedef T\_entry\_asInterface](<#typedef-t_entry_asinterface>)

- [typedef T\_entry\_static\_extension](<#typedef-t_entry_static_extension>)

- [typedef T\_noCopy](<#typedef-t_nocopy>)

- [typedef T\_noCopy\_asInterface](<#typedef-t_nocopy_asinterface>)

- [typedef T\_noCopy\_static\_extension](<#typedef-t_nocopy_static_extension>)

- [typedef T\_notifyList](<#typedef-t_notifylist>)

- [typedef T\_poolChain](<#typedef-t_poolchain>)

- [typedef T\_poolChainElt](<#typedef-t_poolchainelt>)

- [typedef T\_poolChainElt\_asInterface](<#typedef-t_poolchainelt_asinterface>)

- [typedef T\_poolChainElt\_static\_extension](<#typedef-t_poolchainelt_static_extension>)

- [typedef T\_poolChain\_asInterface](<#typedef-t_poolchain_asinterface>)

- [typedef T\_poolChain\_static\_extension](<#typedef-t_poolchain_static_extension>)

- [typedef T\_poolDequeue](<#typedef-t_pooldequeue>)

- [typedef T\_poolDequeue\_asInterface](<#typedef-t_pooldequeue_asinterface>)

- [typedef T\_poolDequeue\_static\_extension](<#typedef-t_pooldequeue_static_extension>)

- [typedef T\_poolLocal](<#typedef-t_poollocal>)

- [typedef T\_poolLocalInternal](<#typedef-t_poollocalinternal>)

- [typedef T\_poolLocal\_asInterface](<#typedef-t_poollocal_asinterface>)

- [typedef T\_poolLocal\_static\_extension](<#typedef-t_poollocal_static_extension>)

- [typedef T\_readOnly](<#typedef-t_readonly>)

- [typedef T\_rlocker](<#typedef-t_rlocker>)

- [typedef T\_rlocker\_asInterface](<#typedef-t_rlocker_asinterface>)

- [typedef T\_rlocker\_static\_extension](<#typedef-t_rlocker_static_extension>)

- [typedef WaitGroup](<#typedef-waitgroup>)

- [typedef WaitGroup\_asInterface](<#typedef-waitgroup_asinterface>)

- [typedef WaitGroup\_static\_extension](<#typedef-waitgroup_static_extension>)

# Functions


```haxe
import stdgo.sync.Sync
```


## function get\_runtime\_Semacquire


```haxe
function get_runtime_Semacquire():()
```


[\(view code\)](<./Sync.hx#L12>)


## function get\_runtime\_Semrelease


```haxe
function get_runtime_Semrelease():(:stdgo.Pointer<stdgo.GoUInt32>, :Bool, :stdgo.GoInt):Void
```


[\(view code\)](<./Sync.hx#L15>)


## function get\_runtime\_procPin


```haxe
function get_runtime_procPin():():stdgo.GoInt
```


[\(view code\)](<./Sync.hx#L18>)


## function get\_runtime\_procUnpin


```haxe
function get_runtime_procUnpin():():Void
```


[\(view code\)](<./Sync.hx#L21>)


## function newCond


```haxe
function newCond(l:stdgo.sync.Locker):stdgo.sync.Cond
```



NewCond returns a new Cond with Locker l.  

[\(view code\)](<./Sync.hx#L51>)


## function newPoolChain


```haxe
function newPoolChain():stdgo.sync.PoolDequeue
```


[\(view code\)](<./Sync.hx#L53>)


## function newPoolDequeue


```haxe
function newPoolDequeue(n:Int):stdgo.sync.PoolDequeue
```


[\(view code\)](<./Sync.hx#L52>)


## function onceFunc


```haxe
function onceFunc(f:():Void):():Void
```



OnceFunc returns a function that invokes f only once. The returned function
may be called concurrently.  


If f panics, the returned function will panic with the same value on every call.  

[\(view code\)](<./Sync.hx#L60>)


## function onceValue


```haxe
function onceValue(_generic__0:onceValue.T_, f:():onceValue.T_):():onceValue.T_
```


[\(view code\)](<./Sync.hx>)


## function onceValues


```haxe
function onceValues(_generic__0:onceValues.T1, _generic__1:onceValues.T2, f:():{
	_1:onceValues.T2;
	_0:onceValues.T1;
}):():{
	_1:onceValues.T2;
	_0:onceValues.T1;
}
```


[\(view code\)](<./Sync.hx>)


## function runtime\_Semacquire


```haxe
function runtime_Semacquire()
```


[\(view code\)](<./Sync.hx>)


## function runtime\_Semrelease


```haxe
function runtime_Semrelease(:stdgo.Pointer<stdgo.GoUInt32>, :Bool, :stdgo.GoInt):Void
```


[\(view code\)](<./Sync.hx>)


## function runtime\_procPin


```haxe
function runtime_procPin():stdgo.GoInt
```


[\(view code\)](<./Sync.hx>)


## function runtime\_procUnpin


```haxe
function runtime_procUnpin():Void
```


[\(view code\)](<./Sync.hx>)


## function set\_runtime\_Semacquire


```haxe
function set_runtime_Semacquire(v:()):()
```


[\(view code\)](<./Sync.hx#L13>)


## function set\_runtime\_Semrelease


```haxe
function set_runtime_Semrelease(v:(:stdgo.Pointer<stdgo.GoUInt32>, :Bool, :stdgo.GoInt):Void):(:stdgo.Pointer<stdgo.GoUInt32>, :Bool, :stdgo.GoInt):Void
```


[\(view code\)](<./Sync.hx#L16>)


## function set\_runtime\_procPin


```haxe
function set_runtime_procPin(v:():stdgo.GoInt):():stdgo.GoInt
```


[\(view code\)](<./Sync.hx#L19>)


## function set\_runtime\_procUnpin


```haxe
function set_runtime_procUnpin(v:():Void):():Void
```


[\(view code\)](<./Sync.hx#L22>)


# Typedefs


```haxe
import stdgo.sync.*
```


## typedef Cond


```haxe
typedef Cond = Dynamic;
```


## typedef Cond\_asInterface


```haxe
typedef Cond_asInterface = Dynamic;
```


## typedef Cond\_static\_extension


```haxe
typedef Cond_static_extension = Dynamic;
```


## typedef Locker


```haxe
typedef Locker = stdgo._internal.sync.Locker;
```


## typedef Map\_


```haxe
typedef Map_ = Dynamic;
```


## typedef Map\_\_asInterface


```haxe
typedef Map__asInterface = Dynamic;
```


## typedef Map\_\_static\_extension


```haxe
typedef Map__static_extension = Dynamic;
```


## typedef Mutex


```haxe
typedef Mutex = Dynamic;
```


## typedef Mutex\_asInterface


```haxe
typedef Mutex_asInterface = Dynamic;
```


## typedef Mutex\_static\_extension


```haxe
typedef Mutex_static_extension = Dynamic;
```


## typedef Once


```haxe
typedef Once = Dynamic;
```


## typedef Once\_asInterface


```haxe
typedef Once_asInterface = Dynamic;
```


## typedef Once\_static\_extension


```haxe
typedef Once_static_extension = Dynamic;
```


## typedef Pool


```haxe
typedef Pool = Dynamic;
```


## typedef PoolDequeue


```haxe
typedef PoolDequeue = stdgo._internal.sync.PoolDequeue;
```


## typedef Pool\_asInterface


```haxe
typedef Pool_asInterface = Dynamic;
```


## typedef Pool\_static\_extension


```haxe
typedef Pool_static_extension = Dynamic;
```


## typedef RWMutex


```haxe
typedef RWMutex = Dynamic;
```


## typedef RWMutex\_asInterface


```haxe
typedef RWMutex_asInterface = Dynamic;
```


## typedef RWMutex\_static\_extension


```haxe
typedef RWMutex_static_extension = Dynamic;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.sync.T__struct_0;
```


## typedef T\_\_struct\_0\_asInterface


```haxe
typedef T__struct_0_asInterface = Dynamic;
```


## typedef T\_\_struct\_0\_static\_extension


```haxe
typedef T__struct_0_static_extension = Dynamic;
```


## typedef T\_copyChecker


```haxe
typedef T_copyChecker = stdgo._internal.sync.T_copyChecker;
```


## typedef T\_copyChecker\_asInterface


```haxe
typedef T_copyChecker_asInterface = Dynamic;
```


## typedef T\_copyChecker\_static\_extension


```haxe
typedef T_copyChecker_static_extension = Dynamic;
```


## typedef T\_dequeueNil


```haxe
typedef T_dequeueNil = stdgo._internal.sync.T_dequeueNil;
```


## typedef T\_eface


```haxe
typedef T_eface = Dynamic;
```


## typedef T\_entry


```haxe
typedef T_entry = Dynamic;
```


## typedef T\_entry\_asInterface


```haxe
typedef T_entry_asInterface = Dynamic;
```


## typedef T\_entry\_static\_extension


```haxe
typedef T_entry_static_extension = Dynamic;
```


## typedef T\_noCopy


```haxe
typedef T_noCopy = Dynamic;
```


## typedef T\_noCopy\_asInterface


```haxe
typedef T_noCopy_asInterface = Dynamic;
```


## typedef T\_noCopy\_static\_extension


```haxe
typedef T_noCopy_static_extension = Dynamic;
```


## typedef T\_notifyList


```haxe
typedef T_notifyList = Dynamic;
```


## typedef T\_poolChain


```haxe
typedef T_poolChain = Dynamic;
```


## typedef T\_poolChainElt


```haxe
typedef T_poolChainElt = Dynamic;
```


## typedef T\_poolChainElt\_asInterface


```haxe
typedef T_poolChainElt_asInterface = Dynamic;
```


## typedef T\_poolChainElt\_static\_extension


```haxe
typedef T_poolChainElt_static_extension = Dynamic;
```


## typedef T\_poolChain\_asInterface


```haxe
typedef T_poolChain_asInterface = Dynamic;
```


## typedef T\_poolChain\_static\_extension


```haxe
typedef T_poolChain_static_extension = Dynamic;
```


## typedef T\_poolDequeue


```haxe
typedef T_poolDequeue = Dynamic;
```


## typedef T\_poolDequeue\_asInterface


```haxe
typedef T_poolDequeue_asInterface = Dynamic;
```


## typedef T\_poolDequeue\_static\_extension


```haxe
typedef T_poolDequeue_static_extension = Dynamic;
```


## typedef T\_poolLocal


```haxe
typedef T_poolLocal = Dynamic;
```


## typedef T\_poolLocalInternal


```haxe
typedef T_poolLocalInternal = Dynamic;
```


## typedef T\_poolLocal\_asInterface


```haxe
typedef T_poolLocal_asInterface = Dynamic;
```


## typedef T\_poolLocal\_static\_extension


```haxe
typedef T_poolLocal_static_extension = Dynamic;
```


## typedef T\_readOnly


```haxe
typedef T_readOnly = Dynamic;
```


## typedef T\_rlocker


```haxe
typedef T_rlocker = stdgo._internal.sync.T_rlocker;
```


## typedef T\_rlocker\_asInterface


```haxe
typedef T_rlocker_asInterface = Dynamic;
```


## typedef T\_rlocker\_static\_extension


```haxe
typedef T_rlocker_static_extension = Dynamic;
```


## typedef WaitGroup


```haxe
typedef WaitGroup = Dynamic;
```


## typedef WaitGroup\_asInterface


```haxe
typedef WaitGroup_asInterface = Dynamic;
```


## typedef WaitGroup\_static\_extension


```haxe
typedef WaitGroup_static_extension = Dynamic;
```


