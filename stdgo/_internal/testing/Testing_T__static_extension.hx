package stdgo._internal.testing;
@:keep @:allow(stdgo._internal.testing.Testing.T__asInterface) class T__static_extension {
    @:keep
    static public function _report( _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void throw "T_:testing._report is not yet implemented";
    @:keep
    static public function deadline( _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } throw "T_:testing.deadline is not yet implemented";
    @:keep
    static public function run( _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _name:stdgo.GoString, _f:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> -> Void):Bool return true;
    @:keep
    static public function setenv( _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _key:stdgo.GoString, _value:stdgo.GoString):Void throw "T_:testing.setenv is not yet implemented";
    @:keep
    static public function parallel( _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void throw "T_:testing.parallel is not yet implemented";
    @:embedded
    public static function _setRan( __self__:stdgo._internal.testing.Testing_T_.T_) __self__._setRan();
    @:embedded
    public static function _runCleanup( __self__:stdgo._internal.testing.Testing_T_.T_, _ph:stdgo._internal.testing.Testing_T_panicHandling.T_panicHandling):stdgo.AnyInterface return __self__._runCleanup(_ph);
    @:embedded
    public static function _private( __self__:stdgo._internal.testing.Testing_T_.T_) __self__._private();
    @:embedded
    public static function _logDepth( __self__:stdgo._internal.testing.Testing_T_.T_, _s:stdgo.GoString, _skip:stdgo.GoInt) __self__._logDepth(_s, _skip);
    @:embedded
    public static function _log( __self__:stdgo._internal.testing.Testing_T_.T_, _s:stdgo.GoString) __self__._log(_s);
    @:embedded
    public static function _frameSkip( __self__:stdgo._internal.testing.Testing_T_.T_, _skip:stdgo.GoInt):stdgo._internal.runtime.Runtime_Frame.Frame return __self__._frameSkip(_skip);
    @:embedded
    public static function _flushToParent( __self__:stdgo._internal.testing.Testing_T_.T_, _testName:stdgo.GoString, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) __self__._flushToParent(_testName, _format, ...[for (i in _args) i]);
    @:embedded
    public static function _decorate( __self__:stdgo._internal.testing.Testing_T_.T_, _s:stdgo.GoString, _skip:stdgo.GoInt):stdgo.GoString return __self__._decorate(_s, _skip);
    @:embedded
    public static function _checkFuzzFn( __self__:stdgo._internal.testing.Testing_T_.T_, _s:stdgo.GoString) __self__._checkFuzzFn(_s);
    @:embedded
    public static function tempDir( __self__:stdgo._internal.testing.Testing_T_.T_):stdgo.GoString return __self__.tempDir();
    @:embedded
    public static function skipped( __self__:stdgo._internal.testing.Testing_T_.T_):Bool return __self__.skipped();
    @:embedded
    public static function skipf( __self__:stdgo._internal.testing.Testing_T_.T_, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) __self__.skipf(_format, ...[for (i in _args) i]);
    @:embedded
    public static function skipNow( __self__:stdgo._internal.testing.Testing_T_.T_) __self__.skipNow();
    @:embedded
    public static function skip( __self__:stdgo._internal.testing.Testing_T_.T_, _args:haxe.Rest<stdgo.AnyInterface>) __self__.skip(...[for (i in _args) i]);
    @:embedded
    public static function name( __self__:stdgo._internal.testing.Testing_T_.T_):stdgo.GoString return __self__.name();
    @:embedded
    public static function logf( __self__:stdgo._internal.testing.Testing_T_.T_, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) __self__.logf(_format, ...[for (i in _args) i]);
    @:embedded
    public static function log( __self__:stdgo._internal.testing.Testing_T_.T_, _args:haxe.Rest<stdgo.AnyInterface>) __self__.log(...[for (i in _args) i]);
    @:embedded
    public static function helper( __self__:stdgo._internal.testing.Testing_T_.T_) __self__.helper();
    @:embedded
    public static function fatalf( __self__:stdgo._internal.testing.Testing_T_.T_, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) __self__.fatalf(_format, ...[for (i in _args) i]);
    @:embedded
    public static function fatal( __self__:stdgo._internal.testing.Testing_T_.T_, _args:haxe.Rest<stdgo.AnyInterface>) __self__.fatal(...[for (i in _args) i]);
    @:embedded
    public static function failed( __self__:stdgo._internal.testing.Testing_T_.T_):Bool return __self__.failed();
    @:embedded
    public static function failNow( __self__:stdgo._internal.testing.Testing_T_.T_) __self__.failNow();
    @:embedded
    public static function fail( __self__:stdgo._internal.testing.Testing_T_.T_) __self__.fail();
    @:embedded
    public static function errorf( __self__:stdgo._internal.testing.Testing_T_.T_, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) __self__.errorf(_format, ...[for (i in _args) i]);
    @:embedded
    public static function error( __self__:stdgo._internal.testing.Testing_T_.T_, _args:haxe.Rest<stdgo.AnyInterface>) __self__.error(...[for (i in _args) i]);
    @:embedded
    public static function cleanup( __self__:stdgo._internal.testing.Testing_T_.T_, _f:() -> Void) __self__.cleanup(_f);
}
