package stdgo.runtime;
class GCController_static_extension {
    static public function setMaxIdleMarkWorkers(_c:GCController, _max:StdTypes.Int):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>);
        final _max = (_max : stdgo.GoInt32);
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.setMaxIdleMarkWorkers(_c, _max);
    }
    static public function removeIdleMarkWorker(_c:GCController):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>);
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.removeIdleMarkWorker(_c);
    }
    static public function needIdleMarkWorker(_c:GCController):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>);
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.needIdleMarkWorker(_c);
    }
    static public function addIdleMarkWorker(_c:GCController):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>);
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.addIdleMarkWorker(_c);
    }
    static public function endCycle(_c:GCController, _bytesMarked:haxe.UInt64, _assistTime:haxe.Int64, _elapsed:haxe.Int64, _gomaxprocs:StdTypes.Int):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>);
        final _bytesMarked = (_bytesMarked : stdgo.GoUInt64);
        final _assistTime = (_assistTime : stdgo.GoInt64);
        final _elapsed = (_elapsed : stdgo.GoInt64);
        final _gomaxprocs = (_gomaxprocs : stdgo.GoInt);
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.endCycle(_c, _bytesMarked, _assistTime, _elapsed, _gomaxprocs);
    }
    static public function revise(_c:GCController, _d:GCControllerReviseDelta):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>);
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.revise(_c, _d);
    }
    static public function triggered(_c:GCController):haxe.UInt64 {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>);
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.triggered(_c);
    }
    static public function heapMarked(_c:GCController):haxe.UInt64 {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>);
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.heapMarked(_c);
    }
    static public function heapLive(_c:GCController):haxe.UInt64 {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>);
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.heapLive(_c);
    }
    static public function heapGoal(_c:GCController):haxe.UInt64 {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>);
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.heapGoal(_c);
    }
    static public function assistWorkPerByte(_c:GCController):StdTypes.Float {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>);
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.assistWorkPerByte(_c);
    }
    static public function startCycle(_c:GCController, _stackSize:haxe.UInt64, _globalsSize:haxe.UInt64, _scannableFrac:StdTypes.Float, _gomaxprocs:StdTypes.Int):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_GCController.GCController>);
        final _stackSize = (_stackSize : stdgo.GoUInt64);
        final _globalsSize = (_globalsSize : stdgo.GoUInt64);
        final _scannableFrac = (_scannableFrac : stdgo.GoFloat64);
        final _gomaxprocs = (_gomaxprocs : stdgo.GoInt);
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension.startCycle(_c, _stackSize, _globalsSize, _scannableFrac, _gomaxprocs);
    }
    public static function _update(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _0:haxe.Int64, _1:haxe.Int64):Void {
        final _0 = (_0 : stdgo.GoInt64);
        final _1 = (_1 : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._update(__self__, _0, _1);
    }
    public static function _trigger(__self__:stdgo._internal.runtime.Runtime_GCController.GCController):stdgo.Tuple<haxe.UInt64, haxe.UInt64> {
        return {
            final obj = stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._trigger(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _startCycle(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _0:haxe.Int64, _1:StdTypes.Int, _2:T_gcTrigger):Void {
        final _0 = (_0 : stdgo.GoInt64);
        final _1 = (_1 : stdgo.GoInt);
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._startCycle(__self__, _0, _1, _2);
    }
    public static function _setMemoryLimit(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _0:haxe.Int64):haxe.Int64 {
        final _0 = (_0 : stdgo.GoInt64);
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._setMemoryLimit(__self__, _0);
    }
    public static function _setMaxIdleMarkWorkers(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _0:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt32);
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._setMaxIdleMarkWorkers(__self__, _0);
    }
    public static function _setGCPercent(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _0:StdTypes.Int):StdTypes.Int {
        final _0 = (_0 : stdgo.GoInt32);
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._setGCPercent(__self__, _0);
    }
    public static function _revise(__self__:stdgo._internal.runtime.Runtime_GCController.GCController):Void {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._revise(__self__);
    }
    public static function _resetLive(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _0:haxe.UInt64):Void {
        final _0 = (_0 : stdgo.GoUInt64);
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._resetLive(__self__, _0);
    }
    public static function _removeIdleMarkWorker(__self__:stdgo._internal.runtime.Runtime_GCController.GCController):Void {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._removeIdleMarkWorker(__self__);
    }
    public static function _needIdleMarkWorker(__self__:stdgo._internal.runtime.Runtime_GCController.GCController):Bool {
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._needIdleMarkWorker(__self__);
    }
    public static function _memoryLimitHeapGoal(__self__:stdgo._internal.runtime.Runtime_GCController.GCController):haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._memoryLimitHeapGoal(__self__);
    }
    public static function _markWorkerStop(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _0:T_gcMarkWorkerMode, _1:haxe.Int64):Void {
        final _1 = (_1 : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._markWorkerStop(__self__, _0, _1);
    }
    public static function _init(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _0:StdTypes.Int, _1:haxe.Int64):Void {
        final _0 = (_0 : stdgo.GoInt32);
        final _1 = (_1 : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._init(__self__, _0, _1);
    }
    public static function _heapGoalInternal(__self__:stdgo._internal.runtime.Runtime_GCController.GCController):stdgo.Tuple<haxe.UInt64, haxe.UInt64> {
        return {
            final obj = stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._heapGoalInternal(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _heapGoal(__self__:stdgo._internal.runtime.Runtime_GCController.GCController):haxe.UInt64 {
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._heapGoal(__self__);
    }
    public static function _findRunnableGCWorker(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _0:T_p, _1:haxe.Int64):stdgo.Tuple<T_g, haxe.Int64> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.runtime.Runtime_T_p.T_p>);
        final _1 = (_1 : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._findRunnableGCWorker(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _enlistWorker(__self__:stdgo._internal.runtime.Runtime_GCController.GCController):Void {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._enlistWorker(__self__);
    }
    public static function _endCycle(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _0:haxe.Int64, _1:StdTypes.Int, _2:Bool):Void {
        final _0 = (_0 : stdgo.GoInt64);
        final _1 = (_1 : stdgo.GoInt);
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._endCycle(__self__, _0, _1, _2);
    }
    public static function _commit(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _0:Bool):Void {
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._commit(__self__, _0);
    }
    public static function _addScannableStack(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _0:T_p, _1:haxe.Int64):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.runtime.Runtime_T_p.T_p>);
        final _1 = (_1 : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._addScannableStack(__self__, _0, _1);
    }
    public static function _addIdleMarkWorker(__self__:stdgo._internal.runtime.Runtime_GCController.GCController):Bool {
        return stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._addIdleMarkWorker(__self__);
    }
    public static function _addGlobals(__self__:stdgo._internal.runtime.Runtime_GCController.GCController, _0:haxe.Int64):Void {
        final _0 = (_0 : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_GCController_static_extension.GCController_static_extension._addGlobals(__self__, _0);
    }
}
