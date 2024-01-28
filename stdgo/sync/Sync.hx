package stdgo.sync;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _expunged : Dynamic;
@:invalid var runtime_Semacquire : Dynamic;
@:invalid var runtime_Semrelease : Dynamic;
@:invalid var runtime_procPin : Dynamic;
@:invalid var runtime_procUnpin : Dynamic;
@:invalid var _mutexLocked : Dynamic;
@:invalid var _mutexWoken : Dynamic;
@:invalid var _mutexStarving : Dynamic;
@:invalid var _mutexWaiterShift : Dynamic;
@:invalid var _starvationThresholdNs : Dynamic;
@:invalid var _poolRaceHash : Dynamic;
@:invalid var _allPoolsMu : Dynamic;
@:invalid var _allPools : Dynamic;
@:invalid var _oldPools : Dynamic;
@:invalid var _dequeueBits : Dynamic;
@:invalid var _dequeueLimit : Dynamic;
@:invalid var _rwmutexMaxReaders : Dynamic;
typedef PoolDequeue = stdgo._internal.sync.Sync.PoolDequeue;
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
function newCond(_l:Locker):Void {}
function newPoolDequeue(_n:stdgo.GoInt):Void {}
function newPoolChain():Void {}
function _newEntry(_i:stdgo.AnyInterface):Void {}
function _throw(_0:stdgo.GoString):Void {}
function _fatal(_0:stdgo.GoString):Void {}
function onceFunc(_f:() -> Void):Void {}
macro function onceValue<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _f:haxe.macro.Expr.ExprOf<() -> T_>):Void {}
macro function onceValues<T1, T2>(__generic__0:haxe.macro.Expr.ExprOf<T1>, __generic__1:haxe.macro.Expr.ExprOf<T2>, _f:haxe.macro.Expr.ExprOf<() -> { var _0 : T1; var _1 : T2; }>):Void {}
function _fastrandn(_n:stdgo.GoUInt32):Void {}
function _poolRaceAddr(_x:stdgo.AnyInterface):Void {}
function _poolCleanup():Void {}
function _indexLocal(_l:stdgo._internal.unsafe.Unsafe.UnsafePointer, _i:stdgo.GoInt):Void {}
function _runtime_registerPoolCleanup(_cleanup:() -> Void):Void {}
function _runtime_procPin():Void {}
function _runtime_procUnpin():Void {}
function _runtime_LoadAcquintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>):Void {}
function _runtime_StoreReluintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>, _val:stdgo.GoUIntptr):Void {}
function _storePoolChainElt(_pp:stdgo.Ref<stdgo.Ref<T_poolChainElt>>, _v:stdgo.Ref<T_poolChainElt>):Void {}
function _loadPoolChainElt(_pp:stdgo.Ref<stdgo.Ref<T_poolChainElt>>):Void {}
function _runtime_Semacquire(_s:stdgo.Pointer<stdgo.GoUInt32>):Void {}
function _runtime_SemacquireMutex(_s:stdgo.Pointer<stdgo.GoUInt32>, _lifo:Bool, _skipframes:stdgo.GoInt):Void {}
function _runtime_SemacquireRWMutexR(_s:stdgo.Pointer<stdgo.GoUInt32>, _lifo:Bool, _skipframes:stdgo.GoInt):Void {}
function _runtime_SemacquireRWMutex(_s:stdgo.Pointer<stdgo.GoUInt32>, _lifo:Bool, _skipframes:stdgo.GoInt):Void {}
function _runtime_Semrelease(_s:stdgo.Pointer<stdgo.GoUInt32>, _handoff:Bool, _skipframes:stdgo.GoInt):Void {}
function _runtime_notifyListAdd(_l:stdgo.Ref<T_notifyList>):Void {}
function _runtime_notifyListWait(_l:stdgo.Ref<T_notifyList>, _t:stdgo.GoUInt32):Void {}
function _runtime_notifyListNotifyAll(_l:stdgo.Ref<T_notifyList>):Void {}
function _runtime_notifyListNotifyOne(_l:stdgo.Ref<T_notifyList>):Void {}
function _runtime_notifyListCheck(_size:stdgo.GoUIntptr):Void {}
function _runtime_canSpin(_i:stdgo.GoInt):Void {}
function _runtime_doSpin():Void {}
function _runtime_nanotime():Void {}
function _syscall_hasWaitingReaders(_rw:stdgo.Ref<RWMutex>):Void {}
@:invalid var _ : Dynamic;
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
