package stdgo._internal.runtime;
class GCController_asInterface {
    @:keep
    @:tdfield
    public dynamic function setMaxIdleMarkWorkers(_max:stdgo.GoInt32):Void @:_0 __self__.value.setMaxIdleMarkWorkers(_max);
    @:keep
    @:tdfield
    public dynamic function removeIdleMarkWorker():Void @:_0 __self__.value.removeIdleMarkWorker();
    @:keep
    @:tdfield
    public dynamic function needIdleMarkWorker():Bool return @:_0 __self__.value.needIdleMarkWorker();
    @:keep
    @:tdfield
    public dynamic function addIdleMarkWorker():Bool return @:_0 __self__.value.addIdleMarkWorker();
    @:keep
    @:tdfield
    public dynamic function endCycle(_bytesMarked:stdgo.GoUInt64, _assistTime:stdgo.GoInt64, _elapsed:stdgo.GoInt64, _gomaxprocs:stdgo.GoInt):Void @:_0 __self__.value.endCycle(_bytesMarked, _assistTime, _elapsed, _gomaxprocs);
    @:keep
    @:tdfield
    public dynamic function revise(_d:stdgo._internal.runtime.Runtime_gccontrollerrevisedelta.GCControllerReviseDelta):Void @:_0 __self__.value.revise(_d);
    @:keep
    @:tdfield
    public dynamic function triggered():stdgo.GoUInt64 return @:_0 __self__.value.triggered();
    @:keep
    @:tdfield
    public dynamic function heapMarked():stdgo.GoUInt64 return @:_0 __self__.value.heapMarked();
    @:keep
    @:tdfield
    public dynamic function heapLive():stdgo.GoUInt64 return @:_0 __self__.value.heapLive();
    @:keep
    @:tdfield
    public dynamic function heapGoal():stdgo.GoUInt64 return @:_0 __self__.value.heapGoal();
    @:keep
    @:tdfield
    public dynamic function assistWorkPerByte():stdgo.GoFloat64 return @:_0 __self__.value.assistWorkPerByte();
    @:keep
    @:tdfield
    public dynamic function startCycle(_stackSize:stdgo.GoUInt64, _globalsSize:stdgo.GoUInt64, _scannableFrac:stdgo.GoFloat64, _gomaxprocs:stdgo.GoInt):Void @:_0 __self__.value.startCycle(_stackSize, _globalsSize, _scannableFrac, _gomaxprocs);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _update(_0:stdgo.GoInt64, _1:stdgo.GoInt64):Void @:_0 __self__.value._update(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _trigger():{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } return @:_0 __self__.value._trigger();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _startCycle(_0:stdgo.GoInt64, _1:stdgo.GoInt, _2:stdgo._internal.runtime.Runtime_t_gctrigger.T_gcTrigger):Void @:_0 __self__.value._startCycle(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _setMemoryLimit(_0:stdgo.GoInt64):stdgo.GoInt64 return @:_0 __self__.value._setMemoryLimit(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _setMaxIdleMarkWorkers(_0:stdgo.GoInt32):Void @:_0 __self__.value._setMaxIdleMarkWorkers(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _setGCPercent(_0:stdgo.GoInt32):stdgo.GoInt32 return @:_0 __self__.value._setGCPercent(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _revise():Void @:_0 __self__.value._revise();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _resetLive(_0:stdgo.GoUInt64):Void @:_0 __self__.value._resetLive(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _removeIdleMarkWorker():Void @:_0 __self__.value._removeIdleMarkWorker();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _needIdleMarkWorker():Bool return @:_0 __self__.value._needIdleMarkWorker();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _memoryLimitHeapGoal():stdgo.GoUInt64 return @:_0 __self__.value._memoryLimitHeapGoal();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _markWorkerStop(_0:stdgo._internal.runtime.Runtime_t_gcmarkworkermode.T_gcMarkWorkerMode, _1:stdgo.GoInt64):Void @:_0 __self__.value._markWorkerStop(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _init(_0:stdgo.GoInt32, _1:stdgo.GoInt64):Void @:_0 __self__.value._init(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _heapGoalInternal():{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } return @:_0 __self__.value._heapGoalInternal();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _heapGoal():stdgo.GoUInt64 return @:_0 __self__.value._heapGoal();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _findRunnableGCWorker(_0:stdgo.Ref<stdgo._internal.runtime.Runtime_t_p.T_p>, _1:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.runtime.Runtime_t_g.T_g>; var _1 : stdgo.GoInt64; } return @:_0 __self__.value._findRunnableGCWorker(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _enlistWorker():Void @:_0 __self__.value._enlistWorker();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _endCycle(_0:stdgo.GoInt64, _1:stdgo.GoInt, _2:Bool):Void @:_0 __self__.value._endCycle(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _commit(_0:Bool):Void @:_0 __self__.value._commit(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _addScannableStack(_0:stdgo.Ref<stdgo._internal.runtime.Runtime_t_p.T_p>, _1:stdgo.GoInt64):Void @:_0 __self__.value._addScannableStack(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _addIdleMarkWorker():Bool return @:_0 __self__.value._addIdleMarkWorker();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _addGlobals(_0:stdgo.GoInt64):Void @:_0 __self__.value._addGlobals(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_gccontrollerpointer.GCControllerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
