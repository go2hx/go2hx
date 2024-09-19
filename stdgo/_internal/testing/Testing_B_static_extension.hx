package stdgo._internal.testing;
@:keep @:allow(stdgo._internal.testing.Testing.B_asInterface) class B_static_extension {
    @:keep
    static public function setParallelism( _b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _p:stdgo.GoInt):Void throw "B:testing.setParallelism is not yet implemented";
    @:keep
    static public function runParallel( _b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _body:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB> -> Void):Void throw "B:testing.runParallel is not yet implemented";
    @:keep
    static public function _trimOutput( _b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void throw "B:testing._trimOutput is not yet implemented";
    @:keep
    static public function _add( _b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _other:stdgo._internal.testing.Testing_BenchmarkResult.BenchmarkResult):Void throw "B:testing._add is not yet implemented";
    @:keep
    static public function run( _b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _name:stdgo.GoString, _f:stdgo.Ref<stdgo._internal.testing.Testing_B.B> -> Void):Bool throw "B:testing.run is not yet implemented";
    @:keep
    static public function reportMetric( _b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _n:stdgo.GoFloat64, _unit:stdgo.GoString):Void throw "B:testing.reportMetric is not yet implemented";
    @:keep
    static public function elapsed( _b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):stdgo._internal.time.Time_Duration.Duration throw "B:testing.elapsed is not yet implemented";
    @:keep
    static public function _launch( _b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void throw "B:testing._launch is not yet implemented";
    @:keep
    static public function _doBench( _b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):stdgo._internal.testing.Testing_BenchmarkResult.BenchmarkResult throw "B:testing._doBench is not yet implemented";
    @:keep
    static public function _run( _b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void throw "B:testing._run is not yet implemented";
    @:keep
    static public function _run1( _b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Bool throw "B:testing._run1 is not yet implemented";
    @:keep
    static public function _runN( _b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _n:stdgo.GoInt):Void throw "B:testing._runN is not yet implemented";
    @:keep
    static public function reportAllocs( _b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void throw "B:testing.reportAllocs is not yet implemented";
    @:keep
    static public function setBytes( _b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _n:stdgo.GoInt64):Void throw "B:testing.setBytes is not yet implemented";
    @:keep
    static public function resetTimer( _b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void throw "B:testing.resetTimer is not yet implemented";
    @:keep
    static public function stopTimer( _b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void throw "B:testing.stopTimer is not yet implemented";
    @:keep
    static public function startTimer( _b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void throw "B:testing.startTimer is not yet implemented";
    @:embedded
    public static function _setRan( __self__:stdgo._internal.testing.Testing_B.B) __self__._setRan();
    @:embedded
    public static function _runCleanup( __self__:stdgo._internal.testing.Testing_B.B, _ph:stdgo._internal.testing.Testing_T_panicHandling.T_panicHandling):stdgo.AnyInterface return __self__._runCleanup(_ph);
    @:embedded
    public static function _private( __self__:stdgo._internal.testing.Testing_B.B) __self__._private();
    @:embedded
    public static function _logDepth( __self__:stdgo._internal.testing.Testing_B.B, _s:stdgo.GoString, _skip:stdgo.GoInt) __self__._logDepth(_s, _skip);
    @:embedded
    public static function _log( __self__:stdgo._internal.testing.Testing_B.B, _s:stdgo.GoString) __self__._log(_s);
    @:embedded
    public static function _frameSkip( __self__:stdgo._internal.testing.Testing_B.B, _skip:stdgo.GoInt):stdgo._internal.runtime.Runtime_Frame.Frame return __self__._frameSkip(_skip);
    @:embedded
    public static function _flushToParent( __self__:stdgo._internal.testing.Testing_B.B, _testName:stdgo.GoString, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) __self__._flushToParent(_testName, _format, ...[for (i in _args) i]);
    @:embedded
    public static function _decorate( __self__:stdgo._internal.testing.Testing_B.B, _s:stdgo.GoString, _skip:stdgo.GoInt):stdgo.GoString return __self__._decorate(_s, _skip);
    @:embedded
    public static function _checkFuzzFn( __self__:stdgo._internal.testing.Testing_B.B, _s:stdgo.GoString) __self__._checkFuzzFn(_s);
    @:embedded
    public static function tempDir( __self__:stdgo._internal.testing.Testing_B.B):stdgo.GoString return __self__.tempDir();
    @:embedded
    public static function skipped( __self__:stdgo._internal.testing.Testing_B.B):Bool return __self__.skipped();
    @:embedded
    public static function skipf( __self__:stdgo._internal.testing.Testing_B.B, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) __self__.skipf(_format, ...[for (i in _args) i]);
    @:embedded
    public static function skipNow( __self__:stdgo._internal.testing.Testing_B.B) __self__.skipNow();
    @:embedded
    public static function skip( __self__:stdgo._internal.testing.Testing_B.B, _args:haxe.Rest<stdgo.AnyInterface>) __self__.skip(...[for (i in _args) i]);
    @:embedded
    public static function setenv( __self__:stdgo._internal.testing.Testing_B.B, _key:stdgo.GoString, _value:stdgo.GoString) __self__.setenv(_key, _value);
    @:embedded
    public static function name( __self__:stdgo._internal.testing.Testing_B.B):stdgo.GoString return __self__.name();
    @:embedded
    public static function logf( __self__:stdgo._internal.testing.Testing_B.B, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) __self__.logf(_format, ...[for (i in _args) i]);
    @:embedded
    public static function log( __self__:stdgo._internal.testing.Testing_B.B, _args:haxe.Rest<stdgo.AnyInterface>) __self__.log(...[for (i in _args) i]);
    @:embedded
    public static function helper( __self__:stdgo._internal.testing.Testing_B.B) __self__.helper();
    @:embedded
    public static function fatalf( __self__:stdgo._internal.testing.Testing_B.B, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) __self__.fatalf(_format, ...[for (i in _args) i]);
    @:embedded
    public static function fatal( __self__:stdgo._internal.testing.Testing_B.B, _args:haxe.Rest<stdgo.AnyInterface>) __self__.fatal(...[for (i in _args) i]);
    @:embedded
    public static function failed( __self__:stdgo._internal.testing.Testing_B.B):Bool return __self__.failed();
    @:embedded
    public static function failNow( __self__:stdgo._internal.testing.Testing_B.B) __self__.failNow();
    @:embedded
    public static function fail( __self__:stdgo._internal.testing.Testing_B.B) __self__.fail();
    @:embedded
    public static function errorf( __self__:stdgo._internal.testing.Testing_B.B, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) __self__.errorf(_format, ...[for (i in _args) i]);
    @:embedded
    public static function error( __self__:stdgo._internal.testing.Testing_B.B, _args:haxe.Rest<stdgo.AnyInterface>) __self__.error(...[for (i in _args) i]);
    @:embedded
    public static function cleanup( __self__:stdgo._internal.testing.Testing_B.B, _f:() -> Void) __self__.cleanup(_f);
}
