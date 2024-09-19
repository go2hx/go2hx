package stdgo._internal.testing;
@:keep @:allow(stdgo._internal.testing.Testing.F_asInterface) class F_static_extension {
    @:keep
    static public function _report( _f:stdgo.Ref<stdgo._internal.testing.Testing_F.F>):Void throw "F:testing._report is not yet implemented";
    @:keep
    static public function fuzz( _f:stdgo.Ref<stdgo._internal.testing.Testing_F.F>, _ff:stdgo.AnyInterface):Void throw "F:testing.fuzz is not yet implemented";
    @:keep
    static public function add( _f:stdgo.Ref<stdgo._internal.testing.Testing_F.F>, _args:haxe.Rest<stdgo.AnyInterface>):Void throw "F:testing.add is not yet implemented";
    @:keep
    static public function skipped( _f:stdgo.Ref<stdgo._internal.testing.Testing_F.F>):Bool throw "F:testing.skipped is not yet implemented";
    @:keep
    static public function fail( _f:stdgo.Ref<stdgo._internal.testing.Testing_F.F>):Void throw "F:testing.fail is not yet implemented";
    @:keep
    static public function helper( _f:stdgo.Ref<stdgo._internal.testing.Testing_F.F>):Void throw "F:testing.helper is not yet implemented";
    @:embedded
    public static function _setRan( __self__:stdgo._internal.testing.Testing_F.F) __self__._setRan();
    @:embedded
    public static function _runCleanup( __self__:stdgo._internal.testing.Testing_F.F, _ph:stdgo._internal.testing.Testing_T_panicHandling.T_panicHandling):stdgo.AnyInterface return __self__._runCleanup(_ph);
    @:embedded
    public static function _private( __self__:stdgo._internal.testing.Testing_F.F) __self__._private();
    @:embedded
    public static function _logDepth( __self__:stdgo._internal.testing.Testing_F.F, _s:stdgo.GoString, _skip:stdgo.GoInt) __self__._logDepth(_s, _skip);
    @:embedded
    public static function _log( __self__:stdgo._internal.testing.Testing_F.F, _s:stdgo.GoString) __self__._log(_s);
    @:embedded
    public static function _frameSkip( __self__:stdgo._internal.testing.Testing_F.F, _skip:stdgo.GoInt):stdgo._internal.runtime.Runtime_Frame.Frame return __self__._frameSkip(_skip);
    @:embedded
    public static function _flushToParent( __self__:stdgo._internal.testing.Testing_F.F, _testName:stdgo.GoString, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) __self__._flushToParent(_testName, _format, ...[for (i in _args) i]);
    @:embedded
    public static function _decorate( __self__:stdgo._internal.testing.Testing_F.F, _s:stdgo.GoString, _skip:stdgo.GoInt):stdgo.GoString return __self__._decorate(_s, _skip);
    @:embedded
    public static function _checkFuzzFn( __self__:stdgo._internal.testing.Testing_F.F, _s:stdgo.GoString) __self__._checkFuzzFn(_s);
    @:embedded
    public static function tempDir( __self__:stdgo._internal.testing.Testing_F.F):stdgo.GoString return __self__.tempDir();
    @:embedded
    public static function skipf( __self__:stdgo._internal.testing.Testing_F.F, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) __self__.skipf(_format, ...[for (i in _args) i]);
    @:embedded
    public static function skipNow( __self__:stdgo._internal.testing.Testing_F.F) __self__.skipNow();
    @:embedded
    public static function skip( __self__:stdgo._internal.testing.Testing_F.F, _args:haxe.Rest<stdgo.AnyInterface>) __self__.skip(...[for (i in _args) i]);
    @:embedded
    public static function setenv( __self__:stdgo._internal.testing.Testing_F.F, _key:stdgo.GoString, _value:stdgo.GoString) __self__.setenv(_key, _value);
    @:embedded
    public static function name( __self__:stdgo._internal.testing.Testing_F.F):stdgo.GoString return __self__.name();
    @:embedded
    public static function logf( __self__:stdgo._internal.testing.Testing_F.F, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) __self__.logf(_format, ...[for (i in _args) i]);
    @:embedded
    public static function log( __self__:stdgo._internal.testing.Testing_F.F, _args:haxe.Rest<stdgo.AnyInterface>) __self__.log(...[for (i in _args) i]);
    @:embedded
    public static function fatalf( __self__:stdgo._internal.testing.Testing_F.F, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) __self__.fatalf(_format, ...[for (i in _args) i]);
    @:embedded
    public static function fatal( __self__:stdgo._internal.testing.Testing_F.F, _args:haxe.Rest<stdgo.AnyInterface>) __self__.fatal(...[for (i in _args) i]);
    @:embedded
    public static function failed( __self__:stdgo._internal.testing.Testing_F.F):Bool return __self__.failed();
    @:embedded
    public static function failNow( __self__:stdgo._internal.testing.Testing_F.F) __self__.failNow();
    @:embedded
    public static function errorf( __self__:stdgo._internal.testing.Testing_F.F, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) __self__.errorf(_format, ...[for (i in _args) i]);
    @:embedded
    public static function error( __self__:stdgo._internal.testing.Testing_F.F, _args:haxe.Rest<stdgo.AnyInterface>) __self__.error(...[for (i in _args) i]);
    @:embedded
    public static function cleanup( __self__:stdgo._internal.testing.Testing_F.F, _f:() -> Void) __self__.cleanup(_f);
}
