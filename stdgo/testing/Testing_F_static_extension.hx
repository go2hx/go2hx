package stdgo.testing;
class F_static_extension {
    static public function _report(_f:F):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_F.F>);
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension._report(_f);
    }
    static public function fuzz(_f:F, _ff:stdgo.AnyInterface):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_F.F>);
        final _ff = (_ff : stdgo.AnyInterface);
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension.fuzz(_f, _ff);
    }
    static public function add(_f:F, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_F.F>);
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension.add(_f, ...[for (i in _args) i]);
    }
    static public function skipped(_f:F):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_F.F>);
        return stdgo._internal.testing.Testing_F_static_extension.F_static_extension.skipped(_f);
    }
    static public function fail(_f:F):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_F.F>);
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension.fail(_f);
    }
    static public function helper(_f:F):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_F.F>);
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension.helper(_f);
    }
    public static function _setRan(__self__:stdgo._internal.testing.Testing_F.F):Void {
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension._setRan(__self__);
    }
    public static function _runCleanup(__self__:stdgo._internal.testing.Testing_F.F, _0:T_panicHandling):stdgo.AnyInterface {
        return stdgo._internal.testing.Testing_F_static_extension.F_static_extension._runCleanup(__self__, _0);
    }
    public static function _private(__self__:stdgo._internal.testing.Testing_F.F):Void {
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension._private(__self__);
    }
    public static function _logDepth(__self__:stdgo._internal.testing.Testing_F.F, _0:String, _1:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoInt);
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension._logDepth(__self__, _0, _1);
    }
    public static function _log(__self__:stdgo._internal.testing.Testing_F.F, _0:String):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension._log(__self__, _0);
    }
    public static function _frameSkip(__self__:stdgo._internal.testing.Testing_F.F, _0:StdTypes.Int):stdgo._internal.runtime.Runtime_Frame.Frame {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.testing.Testing_F_static_extension.F_static_extension._frameSkip(__self__, _0);
    }
    public static function _flushToParent(__self__:stdgo._internal.testing.Testing_F.F, _0:String, _1:String, _2:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoString);
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension._flushToParent(__self__, _0, _1, ...[for (i in _2) i]);
    }
    public static function _decorate(__self__:stdgo._internal.testing.Testing_F.F, _0:String, _1:StdTypes.Int):String {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.testing.Testing_F_static_extension.F_static_extension._decorate(__self__, _0, _1);
    }
    public static function _checkFuzzFn(__self__:stdgo._internal.testing.Testing_F.F, _0:String):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension._checkFuzzFn(__self__, _0);
    }
    public static function tempDir(__self__:stdgo._internal.testing.Testing_F.F):String {
        return stdgo._internal.testing.Testing_F_static_extension.F_static_extension.tempDir(__self__);
    }
    public static function skipf(__self__:stdgo._internal.testing.Testing_F.F, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension.skipf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function skipNow(__self__:stdgo._internal.testing.Testing_F.F):Void {
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension.skipNow(__self__);
    }
    public static function skip(__self__:stdgo._internal.testing.Testing_F.F, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension.skip(__self__, ...[for (i in _0) i]);
    }
    public static function setenv(__self__:stdgo._internal.testing.Testing_F.F, _0:String, _1:String):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoString);
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension.setenv(__self__, _0, _1);
    }
    public static function name(__self__:stdgo._internal.testing.Testing_F.F):String {
        return stdgo._internal.testing.Testing_F_static_extension.F_static_extension.name(__self__);
    }
    public static function logf(__self__:stdgo._internal.testing.Testing_F.F, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension.logf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function log(__self__:stdgo._internal.testing.Testing_F.F, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension.log(__self__, ...[for (i in _0) i]);
    }
    public static function fatalf(__self__:stdgo._internal.testing.Testing_F.F, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension.fatalf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function fatal(__self__:stdgo._internal.testing.Testing_F.F, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension.fatal(__self__, ...[for (i in _0) i]);
    }
    public static function failed(__self__:stdgo._internal.testing.Testing_F.F):Bool {
        return stdgo._internal.testing.Testing_F_static_extension.F_static_extension.failed(__self__);
    }
    public static function failNow(__self__:stdgo._internal.testing.Testing_F.F):Void {
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension.failNow(__self__);
    }
    public static function errorf(__self__:stdgo._internal.testing.Testing_F.F, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension.errorf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function error(__self__:stdgo._internal.testing.Testing_F.F, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension.error(__self__, ...[for (i in _0) i]);
    }
    public static function cleanup(__self__:stdgo._internal.testing.Testing_F.F, _0:() -> Void):Void {
        final _0 = _0;
        stdgo._internal.testing.Testing_F_static_extension.F_static_extension.cleanup(__self__, _0);
    }
}
