package stdgo._internal.testing;
@:keep @:allow(stdgo._internal.testing.Testing.B_asInterface) class B_static_extension {
    @:keep
    @:tdfield
    static public function setParallelism( _b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _p:stdgo.GoInt):Void throw "B:testing.setParallelism is not yet implemented";
    @:keep
    @:tdfield
    static public function runParallel( _b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _body:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB> -> Void):Void throw "B:testing.runParallel is not yet implemented";
    @:keep
    @:tdfield
    static public function _trimOutput( _b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void throw "B:testing._trimOutput is not yet implemented";
    @:keep
    @:tdfield
    static public function _add( _b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _other:stdgo._internal.testing.Testing_benchmarkresult.BenchmarkResult):Void throw "B:testing._add is not yet implemented";
    @:keep
    @:tdfield
    static public function run( _b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _name:stdgo.GoString, _f:stdgo.Ref<stdgo._internal.testing.Testing_b.B> -> Void):Bool throw "B:testing.run is not yet implemented";
    @:keep
    @:tdfield
    static public function reportMetric( _b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _n:stdgo.GoFloat64, _unit:stdgo.GoString):Void throw "B:testing.reportMetric is not yet implemented";
    @:keep
    @:tdfield
    static public function elapsed( _b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):stdgo._internal.time.Time_duration.Duration throw "B:testing.elapsed is not yet implemented";
    @:keep
    @:tdfield
    static public function _launch( _b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void throw "B:testing._launch is not yet implemented";
    @:keep
    @:tdfield
    static public function _doBench( _b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):stdgo._internal.testing.Testing_benchmarkresult.BenchmarkResult throw "B:testing._doBench is not yet implemented";
    @:keep
    @:tdfield
    static public function _run( _b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void throw "B:testing._run is not yet implemented";
    @:keep
    @:tdfield
    static public function _run1( _b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Bool throw "B:testing._run1 is not yet implemented";
    @:keep
    @:tdfield
    static public function _runN( _b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _n:stdgo.GoInt):Void throw "B:testing._runN is not yet implemented";
    @:keep
    @:tdfield
    static public function reportAllocs( _b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void throw "B:testing.reportAllocs is not yet implemented";
    @:keep
    @:tdfield
    static public function setBytes( _b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _n:stdgo.GoInt64):Void throw "B:testing.setBytes is not yet implemented";
    @:keep
    @:tdfield
    static public function resetTimer( _b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void throw "B:testing.resetTimer is not yet implemented";
    @:keep
    @:tdfield
    static public function stopTimer( _b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void throw "B:testing.stopTimer is not yet implemented";
    @:keep
    @:tdfield
    static public function startTimer( _b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void throw "B:testing.startTimer is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _setRan( __self__:stdgo._internal.testing.Testing_b.B):Void return @:_5 __self__._setRan();
    @:embedded
    @:embeddededffieldsffun
    public static function _runCleanup( __self__:stdgo._internal.testing.Testing_b.B, _0:stdgo._internal.testing.Testing_t_panichandling.T_panicHandling):stdgo.AnyInterface return @:_5 __self__._runCleanup(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _private( __self__:stdgo._internal.testing.Testing_b.B):Void return @:_5 __self__._private();
    @:embedded
    @:embeddededffieldsffun
    public static function _logDepth( __self__:stdgo._internal.testing.Testing_b.B, _0:stdgo.GoString, _1:stdgo.GoInt):Void return @:_5 __self__._logDepth(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _log( __self__:stdgo._internal.testing.Testing_b.B, _0:stdgo.GoString):Void return @:_5 __self__._log(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _frameSkip( __self__:stdgo._internal.testing.Testing_b.B, _0:stdgo.GoInt):stdgo._internal.runtime.Runtime_frame.Frame return @:_5 __self__._frameSkip(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _flushToParent( __self__:stdgo._internal.testing.Testing_b.B, _0:stdgo.GoString, _1:stdgo.GoString, _2:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__._flushToParent(_0, _1, ...[for (i in _2) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function _decorate( __self__:stdgo._internal.testing.Testing_b.B, _0:stdgo.GoString, _1:stdgo.GoInt):stdgo.GoString return @:_5 __self__._decorate(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _checkFuzzFn( __self__:stdgo._internal.testing.Testing_b.B, _0:stdgo.GoString):Void return @:_5 __self__._checkFuzzFn(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function tempDir( __self__:stdgo._internal.testing.Testing_b.B):stdgo.GoString return @:_5 __self__.tempDir();
    @:embedded
    @:embeddededffieldsffun
    public static function skipped( __self__:stdgo._internal.testing.Testing_b.B):Bool return @:_5 __self__.skipped();
    @:embedded
    @:embeddededffieldsffun
    public static function skipf( __self__:stdgo._internal.testing.Testing_b.B, _0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.skipf(_0, ...[for (i in _1) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function skipNow( __self__:stdgo._internal.testing.Testing_b.B):Void return @:_5 __self__.skipNow();
    @:embedded
    @:embeddededffieldsffun
    public static function skip( __self__:stdgo._internal.testing.Testing_b.B, _0:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.skip(...[for (i in _0) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function setenv( __self__:stdgo._internal.testing.Testing_b.B, _0:stdgo.GoString, _1:stdgo.GoString):Void return @:_5 __self__.setenv(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function name( __self__:stdgo._internal.testing.Testing_b.B):stdgo.GoString return @:_5 __self__.name();
    @:embedded
    @:embeddededffieldsffun
    public static function logf( __self__:stdgo._internal.testing.Testing_b.B, _0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.logf(_0, ...[for (i in _1) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function log( __self__:stdgo._internal.testing.Testing_b.B, _0:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.log(...[for (i in _0) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function helper( __self__:stdgo._internal.testing.Testing_b.B):Void return @:_5 __self__.helper();
    @:embedded
    @:embeddededffieldsffun
    public static function fatalf( __self__:stdgo._internal.testing.Testing_b.B, _0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.fatalf(_0, ...[for (i in _1) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function fatal( __self__:stdgo._internal.testing.Testing_b.B, _0:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.fatal(...[for (i in _0) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function failed( __self__:stdgo._internal.testing.Testing_b.B):Bool return @:_5 __self__.failed();
    @:embedded
    @:embeddededffieldsffun
    public static function failNow( __self__:stdgo._internal.testing.Testing_b.B):Void return @:_5 __self__.failNow();
    @:embedded
    @:embeddededffieldsffun
    public static function fail( __self__:stdgo._internal.testing.Testing_b.B):Void return @:_5 __self__.fail();
    @:embedded
    @:embeddededffieldsffun
    public static function errorf( __self__:stdgo._internal.testing.Testing_b.B, _0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.errorf(_0, ...[for (i in _1) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function error( __self__:stdgo._internal.testing.Testing_b.B, _0:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.error(...[for (i in _0) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function cleanup( __self__:stdgo._internal.testing.Testing_b.B, _0:() -> Void):Void return @:_5 __self__.cleanup(_0);
}
