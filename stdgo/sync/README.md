# Module: `stdgo.sync`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _fastrandn(_n:stdgo.GoUInt32):Void`](<#function-_fastrandn>)

- [`function _fatal(_0:stdgo.GoString):Void`](<#function-_fatal>)

- [`function _indexLocal(_l:stdgo._internal.unsafe.UnsafePointer, _i:stdgo.GoInt):Void`](<#function-_indexlocal>)

- [`function _loadPoolChainElt(_pp:stdgo.Ref<stdgo.Ref<stdgo.sync.T_poolChainElt>>):Void`](<#function-_loadpoolchainelt>)

- [`function _newEntry(_i:stdgo.AnyInterface):Void`](<#function-_newentry>)

- [`function _poolCleanup():Void`](<#function-_poolcleanup>)

- [`function _poolRaceAddr(_x:stdgo.AnyInterface):Void`](<#function-_poolraceaddr>)

- [`function _runtime_LoadAcquintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>):Void`](<#function-_runtime_loadacquintptr>)

- [`function _runtime_Semacquire(_s:stdgo.Pointer<stdgo.GoUInt32>):Void`](<#function-_runtime_semacquire>)

- [`function _runtime_SemacquireMutex(_s:stdgo.Pointer<stdgo.GoUInt32>, _lifo:Bool, _skipframes:stdgo.GoInt):Void`](<#function-_runtime_semacquiremutex>)

- [`function _runtime_SemacquireRWMutex(_s:stdgo.Pointer<stdgo.GoUInt32>, _lifo:Bool, _skipframes:stdgo.GoInt):Void`](<#function-_runtime_semacquirerwmutex>)

- [`function _runtime_SemacquireRWMutexR(_s:stdgo.Pointer<stdgo.GoUInt32>, _lifo:Bool, _skipframes:stdgo.GoInt):Void`](<#function-_runtime_semacquirerwmutexr>)

- [`function _runtime_Semrelease(_s:stdgo.Pointer<stdgo.GoUInt32>, _handoff:Bool, _skipframes:stdgo.GoInt):Void`](<#function-_runtime_semrelease>)

- [`function _runtime_StoreReluintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>, _val:stdgo.GoUIntptr):Void`](<#function-_runtime_storereluintptr>)

- [`function _runtime_canSpin(_i:stdgo.GoInt):Void`](<#function-_runtime_canspin>)

- [`function _runtime_doSpin():Void`](<#function-_runtime_dospin>)

- [`function _runtime_nanotime():Void`](<#function-_runtime_nanotime>)

- [`function _runtime_notifyListAdd(_l:stdgo.Ref<stdgo.sync.T_notifyList>):Void`](<#function-_runtime_notifylistadd>)

- [`function _runtime_notifyListCheck(_size:stdgo.GoUIntptr):Void`](<#function-_runtime_notifylistcheck>)

- [`function _runtime_notifyListNotifyAll(_l:stdgo.Ref<stdgo.sync.T_notifyList>):Void`](<#function-_runtime_notifylistnotifyall>)

- [`function _runtime_notifyListNotifyOne(_l:stdgo.Ref<stdgo.sync.T_notifyList>):Void`](<#function-_runtime_notifylistnotifyone>)

- [`function _runtime_notifyListWait(_l:stdgo.Ref<stdgo.sync.T_notifyList>, _t:stdgo.GoUInt32):Void`](<#function-_runtime_notifylistwait>)

- [`function _runtime_procPin():Void`](<#function-_runtime_procpin>)

- [`function _runtime_procUnpin():Void`](<#function-_runtime_procunpin>)

- [`function _runtime_registerPoolCleanup(_cleanup:():Void):Void`](<#function-_runtime_registerpoolcleanup>)

- [`function _storePoolChainElt(_pp:stdgo.Ref<stdgo.Ref<stdgo.sync.T_poolChainElt>>, _v:stdgo.Ref<stdgo.sync.T_poolChainElt>):Void`](<#function-_storepoolchainelt>)

- [`function _syscall_hasWaitingReaders(_rw:stdgo.Ref<stdgo.sync.RWMutex>):Void`](<#function-_syscall_haswaitingreaders>)

- [`function _throw(_0:stdgo.GoString):Void`](<#function-_throw>)

- [`function newCond(_l:stdgo.sync.Locker):Void`](<#function-newcond>)

- [`function newPoolChain():Void`](<#function-newpoolchain>)

- [`function newPoolDequeue(_n:stdgo.GoInt):Void`](<#function-newpooldequeue>)

- [`function onceFunc(_f:():Void):Void`](<#function-oncefunc>)

- [`function onceValue(__generic__0:onceValue.T_, _f:():onceValue.T_):Dynamic`](<#function-oncevalue>)

- [`function onceValues(__generic__0:onceValues.T1, __generic__1:onceValues.T2, _f:():{
	_1:onceValues.T2;
	_0:onceValues.T1;
}):Dynamic`](<#function-oncevalues>)

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

# Variables


```haxe
import stdgo.sync.Sync
```


```haxe
var _:Dynamic
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _allPools:Dynamic
```


```haxe
var _allPoolsMu:Dynamic
```


```haxe
var _dequeueBits:Dynamic
```


```haxe
var _dequeueLimit:Dynamic
```


```haxe
var _expunged:Dynamic
```


```haxe
var _mutexLocked:Dynamic
```


```haxe
var _mutexStarving:Dynamic
```


```haxe
var _mutexWaiterShift:Dynamic
```


```haxe
var _mutexWoken:Dynamic
```


```haxe
var _oldPools:Dynamic
```


```haxe
var _poolRaceHash:Dynamic
```


```haxe
var _rwmutexMaxReaders:Dynamic
```


```haxe
var _starvationThresholdNs:Dynamic
```


```haxe
var runtime_Semacquire:Dynamic
```


```haxe
var runtime_Semrelease:Dynamic
```


```haxe
var runtime_procPin:Dynamic
```


```haxe
var runtime_procUnpin:Dynamic
```


# Functions


```haxe
import stdgo.sync.Sync
```


## function \_fastrandn


```haxe
function _fastrandn(_n:stdgo.GoUInt32):Void
```


[\(view code\)](<./Sync.hx#L54>)


## function \_fatal


```haxe
function _fatal(_0:stdgo.GoString):Void
```


[\(view code\)](<./Sync.hx#L50>)


## function \_indexLocal


```haxe
function _indexLocal(_l:stdgo._internal.unsafe.UnsafePointer, _i:stdgo.GoInt):Void
```


[\(view code\)](<./Sync.hx#L57>)


## function \_loadPoolChainElt


```haxe
function _loadPoolChainElt(_pp:stdgo.Ref<stdgo.Ref<stdgo.sync.T_poolChainElt>>):Void
```


[\(view code\)](<./Sync.hx#L64>)


## function \_newEntry


```haxe
function _newEntry(_i:stdgo.AnyInterface):Void
```


[\(view code\)](<./Sync.hx#L48>)


## function \_poolCleanup


```haxe
function _poolCleanup():Void
```


[\(view code\)](<./Sync.hx#L56>)


## function \_poolRaceAddr


```haxe
function _poolRaceAddr(_x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Sync.hx#L55>)


## function \_runtime\_LoadAcquintptr


```haxe
function _runtime_LoadAcquintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>):Void
```


[\(view code\)](<./Sync.hx#L61>)


## function \_runtime\_Semacquire


```haxe
function _runtime_Semacquire(_s:stdgo.Pointer<stdgo.GoUInt32>):Void
```


[\(view code\)](<./Sync.hx#L65>)


## function \_runtime\_SemacquireMutex


```haxe
function _runtime_SemacquireMutex(_s:stdgo.Pointer<stdgo.GoUInt32>, _lifo:Bool, _skipframes:stdgo.GoInt):Void
```


[\(view code\)](<./Sync.hx#L66>)


## function \_runtime\_SemacquireRWMutex


```haxe
function _runtime_SemacquireRWMutex(_s:stdgo.Pointer<stdgo.GoUInt32>, _lifo:Bool, _skipframes:stdgo.GoInt):Void
```


[\(view code\)](<./Sync.hx#L68>)


## function \_runtime\_SemacquireRWMutexR


```haxe
function _runtime_SemacquireRWMutexR(_s:stdgo.Pointer<stdgo.GoUInt32>, _lifo:Bool, _skipframes:stdgo.GoInt):Void
```


[\(view code\)](<./Sync.hx#L67>)


## function \_runtime\_Semrelease


```haxe
function _runtime_Semrelease(_s:stdgo.Pointer<stdgo.GoUInt32>, _handoff:Bool, _skipframes:stdgo.GoInt):Void
```


[\(view code\)](<./Sync.hx#L69>)


## function \_runtime\_StoreReluintptr


```haxe
function _runtime_StoreReluintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>, _val:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Sync.hx#L62>)


## function \_runtime\_canSpin


```haxe
function _runtime_canSpin(_i:stdgo.GoInt):Void
```


[\(view code\)](<./Sync.hx#L75>)


## function \_runtime\_doSpin


```haxe
function _runtime_doSpin():Void
```


[\(view code\)](<./Sync.hx#L76>)


## function \_runtime\_nanotime


```haxe
function _runtime_nanotime():Void
```


[\(view code\)](<./Sync.hx#L77>)


## function \_runtime\_notifyListAdd


```haxe
function _runtime_notifyListAdd(_l:stdgo.Ref<stdgo.sync.T_notifyList>):Void
```


[\(view code\)](<./Sync.hx#L70>)


## function \_runtime\_notifyListCheck


```haxe
function _runtime_notifyListCheck(_size:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Sync.hx#L74>)


## function \_runtime\_notifyListNotifyAll


```haxe
function _runtime_notifyListNotifyAll(_l:stdgo.Ref<stdgo.sync.T_notifyList>):Void
```


[\(view code\)](<./Sync.hx#L72>)


## function \_runtime\_notifyListNotifyOne


```haxe
function _runtime_notifyListNotifyOne(_l:stdgo.Ref<stdgo.sync.T_notifyList>):Void
```


[\(view code\)](<./Sync.hx#L73>)


## function \_runtime\_notifyListWait


```haxe
function _runtime_notifyListWait(_l:stdgo.Ref<stdgo.sync.T_notifyList>, _t:stdgo.GoUInt32):Void
```


[\(view code\)](<./Sync.hx#L71>)


## function \_runtime\_procPin


```haxe
function _runtime_procPin():Void
```


[\(view code\)](<./Sync.hx#L59>)


## function \_runtime\_procUnpin


```haxe
function _runtime_procUnpin():Void
```


[\(view code\)](<./Sync.hx#L60>)


## function \_runtime\_registerPoolCleanup


```haxe
function _runtime_registerPoolCleanup(_cleanup:():Void):Void
```


[\(view code\)](<./Sync.hx#L58>)


## function \_storePoolChainElt


```haxe
function _storePoolChainElt(_pp:stdgo.Ref<stdgo.Ref<stdgo.sync.T_poolChainElt>>, _v:stdgo.Ref<stdgo.sync.T_poolChainElt>):Void
```


[\(view code\)](<./Sync.hx#L63>)


## function \_syscall\_hasWaitingReaders


```haxe
function _syscall_hasWaitingReaders(_rw:stdgo.Ref<stdgo.sync.RWMutex>):Void
```


[\(view code\)](<./Sync.hx#L78>)


## function \_throw


```haxe
function _throw(_0:stdgo.GoString):Void
```


[\(view code\)](<./Sync.hx#L49>)


## function newCond


```haxe
function newCond(_l:stdgo.sync.Locker):Void
```


[\(view code\)](<./Sync.hx#L45>)


## function newPoolChain


```haxe
function newPoolChain():Void
```


[\(view code\)](<./Sync.hx#L47>)


## function newPoolDequeue


```haxe
function newPoolDequeue(_n:stdgo.GoInt):Void
```


[\(view code\)](<./Sync.hx#L46>)


## function onceFunc


```haxe
function onceFunc(_f:():Void):Void
```


[\(view code\)](<./Sync.hx#L51>)


## function onceValue


```haxe
function onceValue(__generic__0:onceValue.T_, _f:():onceValue.T_):Dynamic
```


[\(view code\)](<./Sync.hx>)


## function onceValues


```haxe
function onceValues(__generic__0:onceValues.T1, __generic__1:onceValues.T2, _f:():{
	_1:onceValues.T2;
	_0:onceValues.T1;
}):Dynamic
```


[\(view code\)](<./Sync.hx>)


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


