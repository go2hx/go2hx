package stdgo.testing;
class T__static_extension {
    static public function _report(_t:T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension._report(_t);
    }
    static public function deadline(_t:T_):stdgo.Tuple<stdgo._internal.time.Time_Time.Time, Bool> {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        return {
            final obj = stdgo._internal.testing.Testing_T__static_extension.T__static_extension.deadline(_t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function run(_t:T_, _name:String, _f:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> -> Void):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        final _name = (_name : stdgo.GoString);
        final _f = _f;
        return stdgo._internal.testing.Testing_T__static_extension.T__static_extension.run(_t, _name, _f);
    }
    static public function setenv(_t:T_, _key:String, _value:String):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension.setenv(_t, _key, _value);
    }
    static public function parallel(_t:T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension.parallel(_t);
    }
    public static function _setRan(__self__:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension._setRan(__self__);
    }
    public static function _runCleanup(__self__:stdgo._internal.testing.Testing_T_.T_, _0:T_panicHandling):stdgo.AnyInterface {
        return stdgo._internal.testing.Testing_T__static_extension.T__static_extension._runCleanup(__self__, _0);
    }
    public static function _private(__self__:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension._private(__self__);
    }
    public static function _logDepth(__self__:stdgo._internal.testing.Testing_T_.T_, _0:String, _1:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoInt);
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension._logDepth(__self__, _0, _1);
    }
    public static function _log(__self__:stdgo._internal.testing.Testing_T_.T_, _0:String):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension._log(__self__, _0);
    }
    public static function _frameSkip(__self__:stdgo._internal.testing.Testing_T_.T_, _0:StdTypes.Int):stdgo._internal.runtime.Runtime_Frame.Frame {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.testing.Testing_T__static_extension.T__static_extension._frameSkip(__self__, _0);
    }
    public static function _flushToParent(__self__:stdgo._internal.testing.Testing_T_.T_, _0:String, _1:String, _2:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoString);
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension._flushToParent(__self__, _0, _1, ...[for (i in _2) i]);
    }
    public static function _decorate(__self__:stdgo._internal.testing.Testing_T_.T_, _0:String, _1:StdTypes.Int):String {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.testing.Testing_T__static_extension.T__static_extension._decorate(__self__, _0, _1);
    }
    public static function _checkFuzzFn(__self__:stdgo._internal.testing.Testing_T_.T_, _0:String):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension._checkFuzzFn(__self__, _0);
    }
    public static function tempDir(__self__:stdgo._internal.testing.Testing_T_.T_):String {
        return stdgo._internal.testing.Testing_T__static_extension.T__static_extension.tempDir(__self__);
    }
    public static function skipped(__self__:stdgo._internal.testing.Testing_T_.T_):Bool {
        return stdgo._internal.testing.Testing_T__static_extension.T__static_extension.skipped(__self__);
    }
    public static function skipf(__self__:stdgo._internal.testing.Testing_T_.T_, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension.skipf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function skipNow(__self__:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension.skipNow(__self__);
    }
    public static function skip(__self__:stdgo._internal.testing.Testing_T_.T_, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension.skip(__self__, ...[for (i in _0) i]);
    }
    public static function name(__self__:stdgo._internal.testing.Testing_T_.T_):String {
        return stdgo._internal.testing.Testing_T__static_extension.T__static_extension.name(__self__);
    }
    public static function logf(__self__:stdgo._internal.testing.Testing_T_.T_, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension.logf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function log(__self__:stdgo._internal.testing.Testing_T_.T_, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension.log(__self__, ...[for (i in _0) i]);
    }
    public static function helper(__self__:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension.helper(__self__);
    }
    public static function fatalf(__self__:stdgo._internal.testing.Testing_T_.T_, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension.fatalf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function fatal(__self__:stdgo._internal.testing.Testing_T_.T_, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension.fatal(__self__, ...[for (i in _0) i]);
    }
    public static function failed(__self__:stdgo._internal.testing.Testing_T_.T_):Bool {
        return stdgo._internal.testing.Testing_T__static_extension.T__static_extension.failed(__self__);
    }
    public static function failNow(__self__:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension.failNow(__self__);
    }
    public static function fail(__self__:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension.fail(__self__);
    }
    public static function errorf(__self__:stdgo._internal.testing.Testing_T_.T_, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension.errorf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function error(__self__:stdgo._internal.testing.Testing_T_.T_, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension.error(__self__, ...[for (i in _0) i]);
    }
    public static function cleanup(__self__:stdgo._internal.testing.Testing_T_.T_, _0:() -> Void):Void {
        final _0 = _0;
        stdgo._internal.testing.Testing_T__static_extension.T__static_extension.cleanup(__self__, _0);
    }
}
