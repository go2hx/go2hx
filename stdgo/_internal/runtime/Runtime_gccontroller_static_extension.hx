package stdgo._internal.runtime;
@:keep @:allow(stdgo._internal.runtime.Runtime.GCController_asInterface) class GCController_static_extension {
    @:keep
    @:tdfield
    static public function setMaxIdleMarkWorkers( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>, _max:stdgo.GoInt32):Void throw "GCController:runtime.setMaxIdleMarkWorkers is not yet implemented";
    @:keep
    @:tdfield
    static public function removeIdleMarkWorker( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>):Void throw "GCController:runtime.removeIdleMarkWorker is not yet implemented";
    @:keep
    @:tdfield
    static public function needIdleMarkWorker( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>):Bool throw "GCController:runtime.needIdleMarkWorker is not yet implemented";
    @:keep
    @:tdfield
    static public function addIdleMarkWorker( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>):Bool throw "GCController:runtime.addIdleMarkWorker is not yet implemented";
    @:keep
    @:tdfield
    static public function endCycle( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>, _bytesMarked:stdgo.GoUInt64, _assistTime:stdgo.GoInt64, _elapsed:stdgo.GoInt64, _gomaxprocs:stdgo.GoInt):Void throw "GCController:runtime.endCycle is not yet implemented";
    @:keep
    @:tdfield
    static public function revise( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>, _d:stdgo._internal.runtime.Runtime_gccontrollerrevisedelta.GCControllerReviseDelta):Void throw "GCController:runtime.revise is not yet implemented";
    @:keep
    @:tdfield
    static public function triggered( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>):stdgo.GoUInt64 throw "GCController:runtime.triggered is not yet implemented";
    @:keep
    @:tdfield
    static public function heapMarked( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>):stdgo.GoUInt64 throw "GCController:runtime.heapMarked is not yet implemented";
    @:keep
    @:tdfield
    static public function heapLive( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>):stdgo.GoUInt64 throw "GCController:runtime.heapLive is not yet implemented";
    @:keep
    @:tdfield
    static public function heapGoal( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>):stdgo.GoUInt64 throw "GCController:runtime.heapGoal is not yet implemented";
    @:keep
    @:tdfield
    static public function assistWorkPerByte( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>):stdgo.GoFloat64 throw "GCController:runtime.assistWorkPerByte is not yet implemented";
    @:keep
    @:tdfield
    static public function startCycle( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_gccontroller.GCController>, _stackSize:stdgo.GoUInt64, _globalsSize:stdgo.GoUInt64, _scannableFrac:stdgo.GoFloat64, _gomaxprocs:stdgo.GoInt):Void throw "GCController:runtime.startCycle is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _update( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:stdgo.GoInt64, _1:stdgo.GoInt64):Void return @:_5 __self__._update(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _trigger( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } return @:_5 __self__._trigger();
    @:embedded
    @:embeddededffieldsffun
    public static function _startCycle( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:stdgo.GoInt64, _1:stdgo.GoInt, _2:stdgo._internal.runtime.Runtime_t_gctrigger.T_gcTrigger):Void return @:_5 __self__._startCycle(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _setMemoryLimit( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:stdgo.GoInt64):stdgo.GoInt64 return @:_5 __self__._setMemoryLimit(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _setMaxIdleMarkWorkers( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:stdgo.GoInt32):Void return @:_5 __self__._setMaxIdleMarkWorkers(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _setGCPercent( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:stdgo.GoInt32):stdgo.GoInt32 return @:_5 __self__._setGCPercent(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _revise( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController):Void return @:_5 __self__._revise();
    @:embedded
    @:embeddededffieldsffun
    public static function _resetLive( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:stdgo.GoUInt64):Void return @:_5 __self__._resetLive(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _removeIdleMarkWorker( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController):Void return @:_5 __self__._removeIdleMarkWorker();
    @:embedded
    @:embeddededffieldsffun
    public static function _needIdleMarkWorker( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController):Bool return @:_5 __self__._needIdleMarkWorker();
    @:embedded
    @:embeddededffieldsffun
    public static function _memoryLimitHeapGoal( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController):stdgo.GoUInt64 return @:_5 __self__._memoryLimitHeapGoal();
    @:embedded
    @:embeddededffieldsffun
    public static function _markWorkerStop( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:stdgo._internal.runtime.Runtime_t_gcmarkworkermode.T_gcMarkWorkerMode, _1:stdgo.GoInt64):Void return @:_5 __self__._markWorkerStop(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _init( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:stdgo.GoInt32, _1:stdgo.GoInt64):Void return @:_5 __self__._init(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _heapGoalInternal( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } return @:_5 __self__._heapGoalInternal();
    @:embedded
    @:embeddededffieldsffun
    public static function _heapGoal( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController):stdgo.GoUInt64 return @:_5 __self__._heapGoal();
    @:embedded
    @:embeddededffieldsffun
    public static function _findRunnableGCWorker( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:stdgo.Ref<stdgo._internal.runtime.Runtime_t_p.T_p>, _1:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.runtime.Runtime_t_g.T_g>; var _1 : stdgo.GoInt64; } return @:_5 __self__._findRunnableGCWorker(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _enlistWorker( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController):Void return @:_5 __self__._enlistWorker();
    @:embedded
    @:embeddededffieldsffun
    public static function _endCycle( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:stdgo.GoInt64, _1:stdgo.GoInt, _2:Bool):Void return @:_5 __self__._endCycle(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _commit( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:Bool):Void return @:_5 __self__._commit(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _addScannableStack( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:stdgo.Ref<stdgo._internal.runtime.Runtime_t_p.T_p>, _1:stdgo.GoInt64):Void return @:_5 __self__._addScannableStack(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _addIdleMarkWorker( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController):Bool return @:_5 __self__._addIdleMarkWorker();
    @:embedded
    @:embeddededffieldsffun
    public static function _addGlobals( __self__:stdgo._internal.runtime.Runtime_gccontroller.GCController, _0:stdgo.GoInt64):Void return @:_5 __self__._addGlobals(_0);
}
