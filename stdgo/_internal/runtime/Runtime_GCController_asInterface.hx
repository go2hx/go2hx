package stdgo._internal.runtime;
class GCController_asInterface {
    @:keep
    public dynamic function setMaxIdleMarkWorkers(_max:stdgo.GoInt32):Void __self__.value.setMaxIdleMarkWorkers(_max);
    @:keep
    public dynamic function removeIdleMarkWorker():Void __self__.value.removeIdleMarkWorker();
    @:keep
    public dynamic function needIdleMarkWorker():Bool return __self__.value.needIdleMarkWorker();
    @:keep
    public dynamic function addIdleMarkWorker():Bool return __self__.value.addIdleMarkWorker();
    @:keep
    public dynamic function endCycle(_bytesMarked:stdgo.GoUInt64, _assistTime:stdgo.GoInt64, _elapsed:stdgo.GoInt64, _gomaxprocs:stdgo.GoInt):Void __self__.value.endCycle(_bytesMarked, _assistTime, _elapsed, _gomaxprocs);
    @:keep
    public dynamic function revise(_d:stdgo._internal.runtime.Runtime_GCControllerReviseDelta.GCControllerReviseDelta):Void __self__.value.revise(_d);
    @:keep
    public dynamic function triggered():stdgo.GoUInt64 return __self__.value.triggered();
    @:keep
    public dynamic function heapMarked():stdgo.GoUInt64 return __self__.value.heapMarked();
    @:keep
    public dynamic function heapLive():stdgo.GoUInt64 return __self__.value.heapLive();
    @:keep
    public dynamic function heapGoal():stdgo.GoUInt64 return __self__.value.heapGoal();
    @:keep
    public dynamic function assistWorkPerByte():stdgo.GoFloat64 return __self__.value.assistWorkPerByte();
    @:keep
    public dynamic function startCycle(_stackSize:stdgo.GoUInt64, _globalsSize:stdgo.GoUInt64, _scannableFrac:stdgo.GoFloat64, _gomaxprocs:stdgo.GoInt):Void __self__.value.startCycle(_stackSize, _globalsSize, _scannableFrac, _gomaxprocs);
    @:embedded
    public dynamic function _update(_old:stdgo.GoInt64, _new:stdgo.GoInt64):Void __self__.value._update(_old, _new);
    @:embedded
    public dynamic function _trigger():{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } return __self__.value._trigger();
    @:embedded
    public dynamic function _startCycle(_markStartTime:stdgo.GoInt64, _procs:stdgo.GoInt, _trigger:stdgo._internal.runtime.Runtime_T_gcTrigger.T_gcTrigger):Void __self__.value._startCycle(_markStartTime, _procs, _trigger);
    @:embedded
    public dynamic function _setMemoryLimit(_n:stdgo.GoInt64):stdgo.GoInt64 return __self__.value._setMemoryLimit(_n);
    @:embedded
    public dynamic function _setMaxIdleMarkWorkers(_delta:stdgo.GoInt32):Void __self__.value._setMaxIdleMarkWorkers(_delta);
    @:embedded
    public dynamic function _setGCPercent(_delta:stdgo.GoInt32):stdgo.GoInt32 return __self__.value._setGCPercent(_delta);
    @:embedded
    public dynamic function _revise():Void __self__.value._revise();
    @:embedded
    public dynamic function _resetLive(__0:stdgo.GoUInt64):Void __self__.value._resetLive(__0);
    @:embedded
    public dynamic function _removeIdleMarkWorker():Void __self__.value._removeIdleMarkWorker();
    @:embedded
    public dynamic function _needIdleMarkWorker():Bool return __self__.value._needIdleMarkWorker();
    @:embedded
    public dynamic function _memoryLimitHeapGoal():stdgo.GoUInt64 return __self__.value._memoryLimitHeapGoal();
    @:embedded
    public dynamic function _markWorkerStop(_mode:stdgo._internal.runtime.Runtime_T_gcMarkWorkerMode.T_gcMarkWorkerMode, _duration:stdgo.GoInt64):Void __self__.value._markWorkerStop(_mode, _duration);
    @:embedded
    public dynamic function _init(_gcPercent:stdgo.GoInt32, _memoryLimit:stdgo.GoInt64):Void __self__.value._init(_gcPercent, _memoryLimit);
    @:embedded
    public dynamic function _heapGoalInternal():{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } return __self__.value._heapGoalInternal();
    @:embedded
    public dynamic function _heapGoal():stdgo.GoUInt64 return __self__.value._heapGoal();
    @:embedded
    public dynamic function _findRunnableGCWorker(_pp:stdgo.Ref<stdgo._internal.runtime.Runtime_T_p.T_p>, _amount:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.runtime.Runtime_T_g.T_g>; var _1 : stdgo.GoInt64; } return __self__.value._findRunnableGCWorker(_pp, _amount);
    @:embedded
    public dynamic function _enlistWorker():Void __self__.value._enlistWorker();
    @:embedded
    public dynamic function _endCycle(_now:stdgo.GoInt64, _procs:stdgo.GoInt, _userForced:Bool):Void __self__.value._endCycle(_now, _procs, _userForced);
    @:embedded
    public dynamic function _commit(__0:Bool):Void __self__.value._commit(__0);
    @:embedded
    public dynamic function _addScannableStack(_pp:stdgo.Ref<stdgo._internal.runtime.Runtime_T_p.T_p>, _amount:stdgo.GoInt64):Void __self__.value._addScannableStack(_pp, _amount);
    @:embedded
    public dynamic function _addIdleMarkWorker():Bool return __self__.value._addIdleMarkWorker();
    @:embedded
    public dynamic function _addGlobals(_n:stdgo.GoInt64):Void __self__.value._addGlobals(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.Runtime_GCController.GCController>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
