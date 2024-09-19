package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension) class GCController {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _addGlobals(_n:stdgo.GoInt64) this.new._addGlobals(_n);
    @:embedded
    public function _addIdleMarkWorker():Bool return this.new._addIdleMarkWorker();
    @:embedded
    public function _addScannableStack(_pp:stdgo.Ref<stdgo._internal.runtime.Runtime_T_p.T_p>, _amount:stdgo.GoInt64) this.new._addScannableStack(_pp, _amount);
    @:embedded
    public function _commit(__0:Bool) this.new._commit(__0);
    @:embedded
    public function _endCycle(_now:stdgo.GoInt64, _procs:stdgo.GoInt, _userForced:Bool) this.new._endCycle(_now, _procs, _userForced);
    @:embedded
    public function _enlistWorker() this.new._enlistWorker();
    @:embedded
    public function _findRunnableGCWorker(_pp:stdgo.Ref<stdgo._internal.runtime.Runtime_T_p.T_p>, _amount:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.runtime.Runtime_T_g.T_g>; var _1 : stdgo.GoInt64; } return this.new._findRunnableGCWorker(_pp, _amount);
    @:embedded
    public function _heapGoal():stdgo.GoUInt64 return this.new._heapGoal();
    @:embedded
    public function _heapGoalInternal():{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } return this.new._heapGoalInternal();
    @:embedded
    public function _init(_gcPercent:stdgo.GoInt32, _memoryLimit:stdgo.GoInt64) this.new._init(_gcPercent, _memoryLimit);
    @:embedded
    public function _markWorkerStop(_mode:stdgo._internal.runtime.Runtime_T_gcMarkWorkerMode.T_gcMarkWorkerMode, _duration:stdgo.GoInt64) this.new._markWorkerStop(_mode, _duration);
    @:embedded
    public function _memoryLimitHeapGoal():stdgo.GoUInt64 return this.new._memoryLimitHeapGoal();
    @:embedded
    public function _needIdleMarkWorker():Bool return this.new._needIdleMarkWorker();
    @:embedded
    public function _removeIdleMarkWorker() this.new._removeIdleMarkWorker();
    @:embedded
    public function _resetLive(__0:stdgo.GoUInt64) this.new._resetLive(__0);
    @:embedded
    public function _revise() this.new._revise();
    @:embedded
    public function _setGCPercent(_delta:stdgo.GoInt32):stdgo.GoInt32 return this.new._setGCPercent(_delta);
    @:embedded
    public function _setMaxIdleMarkWorkers(_delta:stdgo.GoInt32) this.new._setMaxIdleMarkWorkers(_delta);
    @:embedded
    public function _setMemoryLimit(_n:stdgo.GoInt64):stdgo.GoInt64 return this.new._setMemoryLimit(_n);
    @:embedded
    public function _startCycle(_markStartTime:stdgo.GoInt64, _procs:stdgo.GoInt, _trigger:stdgo._internal.runtime.Runtime_T_gcTrigger.T_gcTrigger) this.new._startCycle(_markStartTime, _procs, _trigger);
    @:embedded
    public function _trigger():{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } return this.new._trigger();
    @:embedded
    public function _update(_old:stdgo.GoInt64, _new:stdgo.GoInt64) this.new._update(_old, _new);
    public function __copy__() {
        return new GCController();
    }
}
