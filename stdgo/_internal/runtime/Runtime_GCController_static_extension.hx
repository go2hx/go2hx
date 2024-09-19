package stdgo._internal.runtime;
@:keep @:allow(stdgo._internal.runtime.Runtime.GCController_asInterface) class GCController_static_extension {
    @:keep
    static public function setMaxIdleMarkWorkers( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>, _max:stdgo.GoInt32):Void throw "GCController:runtime.setMaxIdleMarkWorkers is not yet implemented";
    @:keep
    static public function removeIdleMarkWorker( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>):Void throw "GCController:runtime.removeIdleMarkWorker is not yet implemented";
    @:keep
    static public function needIdleMarkWorker( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>):Bool throw "GCController:runtime.needIdleMarkWorker is not yet implemented";
    @:keep
    static public function addIdleMarkWorker( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>):Bool throw "GCController:runtime.addIdleMarkWorker is not yet implemented";
    @:keep
    static public function endCycle( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>, _bytesMarked:stdgo.GoUInt64, _assistTime:stdgo.GoInt64, _elapsed:stdgo.GoInt64, _gomaxprocs:stdgo.GoInt):Void throw "GCController:runtime.endCycle is not yet implemented";
    @:keep
    static public function revise( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>, _d:stdgo._internal.runtime.Runtime_GCControllerReviseDelta.GCControllerReviseDelta):Void throw "GCController:runtime.revise is not yet implemented";
    @:keep
    static public function triggered( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>):stdgo.GoUInt64 throw "GCController:runtime.triggered is not yet implemented";
    @:keep
    static public function heapMarked( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>):stdgo.GoUInt64 throw "GCController:runtime.heapMarked is not yet implemented";
    @:keep
    static public function heapLive( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>):stdgo.GoUInt64 throw "GCController:runtime.heapLive is not yet implemented";
    @:keep
    static public function heapGoal( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>):stdgo.GoUInt64 throw "GCController:runtime.heapGoal is not yet implemented";
    @:keep
    static public function assistWorkPerByte( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>):stdgo.GoFloat64 throw "GCController:runtime.assistWorkPerByte is not yet implemented";
    @:keep
    static public function startCycle( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>, _stackSize:stdgo.GoUInt64, _globalsSize:stdgo.GoUInt64, _scannableFrac:stdgo.GoFloat64, _gomaxprocs:stdgo.GoInt):Void throw "GCController:runtime.startCycle is not yet implemented";
    @:embedded
    public static function _update( __self__:stdgo._internal.runtime.Runtime_GCController.GCController, _old:stdgo.GoInt64, _new:stdgo.GoInt64) __self__._update(_old, _new);
    @:embedded
    public static function _trigger( __self__:stdgo._internal.runtime.Runtime_GCController.GCController):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } return __self__._trigger();
    @:embedded
    public static function _startCycle( __self__:stdgo._internal.runtime.Runtime_GCController.GCController, _markStartTime:stdgo.GoInt64, _procs:stdgo.GoInt, _trigger:stdgo._internal.runtime.Runtime_T_gcTrigger.T_gcTrigger) __self__._startCycle(_markStartTime, _procs, _trigger);
    @:embedded
    public static function _setMemoryLimit( __self__:stdgo._internal.runtime.Runtime_GCController.GCController, _n:stdgo.GoInt64):stdgo.GoInt64 return __self__._setMemoryLimit(_n);
    @:embedded
    public static function _setMaxIdleMarkWorkers( __self__:stdgo._internal.runtime.Runtime_GCController.GCController, _delta:stdgo.GoInt32) __self__._setMaxIdleMarkWorkers(_delta);
    @:embedded
    public static function _setGCPercent( __self__:stdgo._internal.runtime.Runtime_GCController.GCController, _delta:stdgo.GoInt32):stdgo.GoInt32 return __self__._setGCPercent(_delta);
    @:embedded
    public static function _revise( __self__:stdgo._internal.runtime.Runtime_GCController.GCController) __self__._revise();
    @:embedded
    public static function _resetLive( __self__:stdgo._internal.runtime.Runtime_GCController.GCController, __0:stdgo.GoUInt64) __self__._resetLive(__0);
    @:embedded
    public static function _removeIdleMarkWorker( __self__:stdgo._internal.runtime.Runtime_GCController.GCController) __self__._removeIdleMarkWorker();
    @:embedded
    public static function _needIdleMarkWorker( __self__:stdgo._internal.runtime.Runtime_GCController.GCController):Bool return __self__._needIdleMarkWorker();
    @:embedded
    public static function _memoryLimitHeapGoal( __self__:stdgo._internal.runtime.Runtime_GCController.GCController):stdgo.GoUInt64 return __self__._memoryLimitHeapGoal();
    @:embedded
    public static function _markWorkerStop( __self__:stdgo._internal.runtime.Runtime_GCController.GCController, _mode:stdgo._internal.runtime.Runtime_T_gcMarkWorkerMode.T_gcMarkWorkerMode, _duration:stdgo.GoInt64) __self__._markWorkerStop(_mode, _duration);
    @:embedded
    public static function _init( __self__:stdgo._internal.runtime.Runtime_GCController.GCController, _gcPercent:stdgo.GoInt32, _memoryLimit:stdgo.GoInt64) __self__._init(_gcPercent, _memoryLimit);
    @:embedded
    public static function _heapGoalInternal( __self__:stdgo._internal.runtime.Runtime_GCController.GCController):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } return __self__._heapGoalInternal();
    @:embedded
    public static function _heapGoal( __self__:stdgo._internal.runtime.Runtime_GCController.GCController):stdgo.GoUInt64 return __self__._heapGoal();
    @:embedded
    public static function _findRunnableGCWorker( __self__:stdgo._internal.runtime.Runtime_GCController.GCController, _pp:stdgo.Ref<stdgo._internal.runtime.Runtime_T_p.T_p>, _amount:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.runtime.Runtime_T_g.T_g>; var _1 : stdgo.GoInt64; } return __self__._findRunnableGCWorker(_pp, _amount);
    @:embedded
    public static function _enlistWorker( __self__:stdgo._internal.runtime.Runtime_GCController.GCController) __self__._enlistWorker();
    @:embedded
    public static function _endCycle( __self__:stdgo._internal.runtime.Runtime_GCController.GCController, _now:stdgo.GoInt64, _procs:stdgo.GoInt, _userForced:Bool) __self__._endCycle(_now, _procs, _userForced);
    @:embedded
    public static function _commit( __self__:stdgo._internal.runtime.Runtime_GCController.GCController, __0:Bool) __self__._commit(__0);
    @:embedded
    public static function _addScannableStack( __self__:stdgo._internal.runtime.Runtime_GCController.GCController, _pp:stdgo.Ref<stdgo._internal.runtime.Runtime_T_p.T_p>, _amount:stdgo.GoInt64) __self__._addScannableStack(_pp, _amount);
    @:embedded
    public static function _addIdleMarkWorker( __self__:stdgo._internal.runtime.Runtime_GCController.GCController):Bool return __self__._addIdleMarkWorker();
    @:embedded
    public static function _addGlobals( __self__:stdgo._internal.runtime.Runtime_GCController.GCController, _n:stdgo.GoInt64) __self__._addGlobals(_n);
}
