package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension) class GCController {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _addGlobals(get, never) : stdgo.GoInt64 -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__addGlobals():stdgo.GoInt64 -> Void return @:check3 (this.new ?? throw "null pointer derefrence")._addGlobals;
    public var _addIdleMarkWorker(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__addIdleMarkWorker():() -> Bool return @:check3 (this.new ?? throw "null pointer derefrence")._addIdleMarkWorker;
    public var _addScannableStack(get, never) : (stdgo.Ref<stdgo._internal.runtime.Runtime_T_p.T_p>, stdgo.GoInt64) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__addScannableStack():(stdgo.Ref<stdgo._internal.runtime.Runtime_T_p.T_p>, stdgo.GoInt64) -> Void return @:check3 (this.new ?? throw "null pointer derefrence")._addScannableStack;
    public var _commit(get, never) : Bool -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__commit():Bool -> Void return @:check3 (this.new ?? throw "null pointer derefrence")._commit;
    public var _endCycle(get, never) : (stdgo.GoInt64, stdgo.GoInt, Bool) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__endCycle():(stdgo.GoInt64, stdgo.GoInt, Bool) -> Void return @:check3 (this.new ?? throw "null pointer derefrence")._endCycle;
    public var _enlistWorker(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__enlistWorker():() -> Void return @:check3 (this.new ?? throw "null pointer derefrence")._enlistWorker;
    public var _findRunnableGCWorker(get, never) : (stdgo.Ref<stdgo._internal.runtime.Runtime_T_p.T_p>, stdgo.GoInt64) -> { var _0 : stdgo.Ref<stdgo._internal.runtime.Runtime_T_g.T_g>; var _1 : stdgo.GoInt64; };
    @:embedded
    @:embeddededffieldsffun
    public function get__findRunnableGCWorker():(stdgo.Ref<stdgo._internal.runtime.Runtime_T_p.T_p>, stdgo.GoInt64) -> { var _0 : stdgo.Ref<stdgo._internal.runtime.Runtime_T_g.T_g>; var _1 : stdgo.GoInt64; } return @:check3 (this.new ?? throw "null pointer derefrence")._findRunnableGCWorker;
    public var _heapGoal(get, never) : () -> stdgo.GoUInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get__heapGoal():() -> stdgo.GoUInt64 return @:check3 (this.new ?? throw "null pointer derefrence")._heapGoal;
    public var _heapGoalInternal(get, never) : () -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; };
    @:embedded
    @:embeddededffieldsffun
    public function get__heapGoalInternal():() -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } return @:check3 (this.new ?? throw "null pointer derefrence")._heapGoalInternal;
    public var _init(get, never) : (stdgo.GoInt32, stdgo.GoInt64) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__init():(stdgo.GoInt32, stdgo.GoInt64) -> Void return @:check3 (this.new ?? throw "null pointer derefrence")._init;
    public var _markWorkerStop(get, never) : (stdgo._internal.runtime.Runtime_T_gcMarkWorkerMode.T_gcMarkWorkerMode, stdgo.GoInt64) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__markWorkerStop():(stdgo._internal.runtime.Runtime_T_gcMarkWorkerMode.T_gcMarkWorkerMode, stdgo.GoInt64) -> Void return @:check3 (this.new ?? throw "null pointer derefrence")._markWorkerStop;
    public var _memoryLimitHeapGoal(get, never) : () -> stdgo.GoUInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get__memoryLimitHeapGoal():() -> stdgo.GoUInt64 return @:check3 (this.new ?? throw "null pointer derefrence")._memoryLimitHeapGoal;
    public var _needIdleMarkWorker(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__needIdleMarkWorker():() -> Bool return @:check3 (this.new ?? throw "null pointer derefrence")._needIdleMarkWorker;
    public var _removeIdleMarkWorker(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__removeIdleMarkWorker():() -> Void return @:check3 (this.new ?? throw "null pointer derefrence")._removeIdleMarkWorker;
    public var _resetLive(get, never) : stdgo.GoUInt64 -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__resetLive():stdgo.GoUInt64 -> Void return @:check3 (this.new ?? throw "null pointer derefrence")._resetLive;
    public var _revise(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__revise():() -> Void return @:check3 (this.new ?? throw "null pointer derefrence")._revise;
    public var _setGCPercent(get, never) : stdgo.GoInt32 -> stdgo.GoInt32;
    @:embedded
    @:embeddededffieldsffun
    public function get__setGCPercent():stdgo.GoInt32 -> stdgo.GoInt32 return @:check3 (this.new ?? throw "null pointer derefrence")._setGCPercent;
    public var _setMaxIdleMarkWorkers(get, never) : stdgo.GoInt32 -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__setMaxIdleMarkWorkers():stdgo.GoInt32 -> Void return @:check3 (this.new ?? throw "null pointer derefrence")._setMaxIdleMarkWorkers;
    public var _setMemoryLimit(get, never) : stdgo.GoInt64 -> stdgo.GoInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get__setMemoryLimit():stdgo.GoInt64 -> stdgo.GoInt64 return @:check3 (this.new ?? throw "null pointer derefrence")._setMemoryLimit;
    public var _startCycle(get, never) : (stdgo.GoInt64, stdgo.GoInt, stdgo._internal.runtime.Runtime_T_gcTrigger.T_gcTrigger) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__startCycle():(stdgo.GoInt64, stdgo.GoInt, stdgo._internal.runtime.Runtime_T_gcTrigger.T_gcTrigger) -> Void return @:check3 (this.new ?? throw "null pointer derefrence")._startCycle;
    public var _trigger(get, never) : () -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; };
    @:embedded
    @:embeddededffieldsffun
    public function get__trigger():() -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } return @:check3 (this.new ?? throw "null pointer derefrence")._trigger;
    public var _update(get, never) : (stdgo.GoInt64, stdgo.GoInt64) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__update():(stdgo.GoInt64, stdgo.GoInt64) -> Void return @:check3 (this.new ?? throw "null pointer derefrence")._update;
    public function __copy__() {
        return new GCController();
    }
}
