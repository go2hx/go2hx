package stdgo.testing;
class B_static_extension {
    static public function setParallelism(_b:B, _p:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        final _p = (_p : stdgo.GoInt);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.setParallelism(_b, _p);
    }
    static public function runParallel(_b:B, _body:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB> -> Void):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        final _body = _body;
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.runParallel(_b, _body);
    }
    static public function _trimOutput(_b:B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension._trimOutput(_b);
    }
    static public function _add(_b:B, _other:BenchmarkResult):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension._add(_b, _other);
    }
    static public function run(_b:B, _name:String, _f:stdgo.Ref<stdgo._internal.testing.Testing_B.B> -> Void):Bool {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        final _name = (_name : stdgo.GoString);
        final _f = _f;
        return stdgo._internal.testing.Testing_B_static_extension.B_static_extension.run(_b, _name, _f);
    }
    static public function reportMetric(_b:B, _n:StdTypes.Float, _unit:String):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        final _n = (_n : stdgo.GoFloat64);
        final _unit = (_unit : stdgo.GoString);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.reportMetric(_b, _n, _unit);
    }
    static public function elapsed(_b:B):stdgo._internal.time.Time_Duration.Duration {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        return stdgo._internal.testing.Testing_B_static_extension.B_static_extension.elapsed(_b);
    }
    static public function _launch(_b:B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension._launch(_b);
    }
    static public function _doBench(_b:B):BenchmarkResult {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        return stdgo._internal.testing.Testing_B_static_extension.B_static_extension._doBench(_b);
    }
    static public function _run(_b:B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension._run(_b);
    }
    static public function _run1(_b:B):Bool {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        return stdgo._internal.testing.Testing_B_static_extension.B_static_extension._run1(_b);
    }
    static public function _runN(_b:B, _n:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension._runN(_b, _n);
    }
    static public function reportAllocs(_b:B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.reportAllocs(_b);
    }
    static public function setBytes(_b:B, _n:haxe.Int64):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        final _n = (_n : stdgo.GoInt64);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.setBytes(_b, _n);
    }
    static public function resetTimer(_b:B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.resetTimer(_b);
    }
    static public function stopTimer(_b:B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.stopTimer(_b);
    }
    static public function startTimer(_b:B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.startTimer(_b);
    }
    public static function _setRan(__self__:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension._setRan(__self__);
    }
    public static function _runCleanup(__self__:stdgo._internal.testing.Testing_B.B, _0:T_panicHandling):stdgo.AnyInterface {
        return stdgo._internal.testing.Testing_B_static_extension.B_static_extension._runCleanup(__self__, _0);
    }
    public static function _private(__self__:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension._private(__self__);
    }
    public static function _logDepth(__self__:stdgo._internal.testing.Testing_B.B, _0:String, _1:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoInt);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension._logDepth(__self__, _0, _1);
    }
    public static function _log(__self__:stdgo._internal.testing.Testing_B.B, _0:String):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension._log(__self__, _0);
    }
    public static function _frameSkip(__self__:stdgo._internal.testing.Testing_B.B, _0:StdTypes.Int):stdgo._internal.runtime.Runtime_Frame.Frame {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.testing.Testing_B_static_extension.B_static_extension._frameSkip(__self__, _0);
    }
    public static function _flushToParent(__self__:stdgo._internal.testing.Testing_B.B, _0:String, _1:String, _2:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoString);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension._flushToParent(__self__, _0, _1, ...[for (i in _2) i]);
    }
    public static function _decorate(__self__:stdgo._internal.testing.Testing_B.B, _0:String, _1:StdTypes.Int):String {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.testing.Testing_B_static_extension.B_static_extension._decorate(__self__, _0, _1);
    }
    public static function _checkFuzzFn(__self__:stdgo._internal.testing.Testing_B.B, _0:String):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension._checkFuzzFn(__self__, _0);
    }
    public static function tempDir(__self__:stdgo._internal.testing.Testing_B.B):String {
        return stdgo._internal.testing.Testing_B_static_extension.B_static_extension.tempDir(__self__);
    }
    public static function skipped(__self__:stdgo._internal.testing.Testing_B.B):Bool {
        return stdgo._internal.testing.Testing_B_static_extension.B_static_extension.skipped(__self__);
    }
    public static function skipf(__self__:stdgo._internal.testing.Testing_B.B, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.skipf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function skipNow(__self__:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.skipNow(__self__);
    }
    public static function skip(__self__:stdgo._internal.testing.Testing_B.B, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.skip(__self__, ...[for (i in _0) i]);
    }
    public static function setenv(__self__:stdgo._internal.testing.Testing_B.B, _0:String, _1:String):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoString);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.setenv(__self__, _0, _1);
    }
    public static function name(__self__:stdgo._internal.testing.Testing_B.B):String {
        return stdgo._internal.testing.Testing_B_static_extension.B_static_extension.name(__self__);
    }
    public static function logf(__self__:stdgo._internal.testing.Testing_B.B, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.logf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function log(__self__:stdgo._internal.testing.Testing_B.B, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.log(__self__, ...[for (i in _0) i]);
    }
    public static function helper(__self__:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.helper(__self__);
    }
    public static function fatalf(__self__:stdgo._internal.testing.Testing_B.B, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.fatalf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function fatal(__self__:stdgo._internal.testing.Testing_B.B, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.fatal(__self__, ...[for (i in _0) i]);
    }
    public static function failed(__self__:stdgo._internal.testing.Testing_B.B):Bool {
        return stdgo._internal.testing.Testing_B_static_extension.B_static_extension.failed(__self__);
    }
    public static function failNow(__self__:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.failNow(__self__);
    }
    public static function fail(__self__:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.fail(__self__);
    }
    public static function errorf(__self__:stdgo._internal.testing.Testing_B.B, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.errorf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function error(__self__:stdgo._internal.testing.Testing_B.B, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.error(__self__, ...[for (i in _0) i]);
    }
    public static function cleanup(__self__:stdgo._internal.testing.Testing_B.B, _0:() -> Void):Void {
        final _0 = _0;
        stdgo._internal.testing.Testing_B_static_extension.B_static_extension.cleanup(__self__, _0);
    }
}
