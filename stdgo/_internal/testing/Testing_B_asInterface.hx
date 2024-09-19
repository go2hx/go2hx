package stdgo._internal.testing;
class B_asInterface {
    @:keep
    public dynamic function setParallelism(_p:stdgo.GoInt):Void __self__.value.setParallelism(_p);
    @:keep
    public dynamic function runParallel(_body:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB> -> Void):Void __self__.value.runParallel(_body);
    @:keep
    public dynamic function _trimOutput():Void __self__.value._trimOutput();
    @:keep
    public dynamic function _add(_other:stdgo._internal.testing.Testing_BenchmarkResult.BenchmarkResult):Void __self__.value._add(_other);
    @:keep
    public dynamic function run(_name:stdgo.GoString, _f:stdgo.Ref<stdgo._internal.testing.Testing_B.B> -> Void):Bool return __self__.value.run(_name, _f);
    @:keep
    public dynamic function reportMetric(_n:stdgo.GoFloat64, _unit:stdgo.GoString):Void __self__.value.reportMetric(_n, _unit);
    @:keep
    public dynamic function elapsed():stdgo._internal.time.Time_Duration.Duration return __self__.value.elapsed();
    @:keep
    public dynamic function _launch():Void __self__.value._launch();
    @:keep
    public dynamic function _doBench():stdgo._internal.testing.Testing_BenchmarkResult.BenchmarkResult return __self__.value._doBench();
    @:keep
    public dynamic function _run():Void __self__.value._run();
    @:keep
    public dynamic function _run1():Bool return __self__.value._run1();
    @:keep
    public dynamic function _runN(_n:stdgo.GoInt):Void __self__.value._runN(_n);
    @:keep
    public dynamic function reportAllocs():Void __self__.value.reportAllocs();
    @:keep
    public dynamic function setBytes(_n:stdgo.GoInt64):Void __self__.value.setBytes(_n);
    @:keep
    public dynamic function resetTimer():Void __self__.value.resetTimer();
    @:keep
    public dynamic function stopTimer():Void __self__.value.stopTimer();
    @:keep
    public dynamic function startTimer():Void __self__.value.startTimer();
    @:embedded
    public dynamic function _setRan():Void __self__.value._setRan();
    @:embedded
    public dynamic function _runCleanup(_ph:stdgo._internal.testing.Testing_T_panicHandling.T_panicHandling):stdgo.AnyInterface return __self__.value._runCleanup(_ph);
    @:embedded
    public dynamic function _private():Void __self__.value._private();
    @:embedded
    public dynamic function _logDepth(_s:stdgo.GoString, _skip:stdgo.GoInt):Void __self__.value._logDepth(_s, _skip);
    @:embedded
    public dynamic function _log(_s:stdgo.GoString):Void __self__.value._log(_s);
    @:embedded
    public dynamic function _frameSkip(_skip:stdgo.GoInt):stdgo._internal.runtime.Runtime_Frame.Frame return __self__.value._frameSkip(_skip);
    @:embedded
    public dynamic function _flushToParent(_testName:stdgo.GoString, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._flushToParent(_testName, _format, ..._args);
    @:embedded
    public dynamic function _decorate(_s:stdgo.GoString, _skip:stdgo.GoInt):stdgo.GoString return __self__.value._decorate(_s, _skip);
    @:embedded
    public dynamic function _checkFuzzFn(_s:stdgo.GoString):Void __self__.value._checkFuzzFn(_s);
    @:embedded
    public dynamic function tempDir():stdgo.GoString return __self__.value.tempDir();
    @:embedded
    public dynamic function skipped():Bool return __self__.value.skipped();
    @:embedded
    public dynamic function skipf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.skipf(_format, ..._args);
    @:embedded
    public dynamic function skipNow():Void __self__.value.skipNow();
    @:embedded
    public dynamic function skip(_args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.skip(..._args);
    @:embedded
    public dynamic function setenv(_key:stdgo.GoString, _value:stdgo.GoString):Void __self__.value.setenv(_key, _value);
    @:embedded
    public dynamic function name():stdgo.GoString return __self__.value.name();
    @:embedded
    public dynamic function logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.logf(_format, ..._args);
    @:embedded
    public dynamic function log(_args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.log(..._args);
    @:embedded
    public dynamic function helper():Void __self__.value.helper();
    @:embedded
    public dynamic function fatalf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.fatalf(_format, ..._args);
    @:embedded
    public dynamic function fatal(_args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.fatal(..._args);
    @:embedded
    public dynamic function failed():Bool return __self__.value.failed();
    @:embedded
    public dynamic function failNow():Void __self__.value.failNow();
    @:embedded
    public dynamic function fail():Void __self__.value.fail();
    @:embedded
    public dynamic function errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.errorf(_format, ..._args);
    @:embedded
    public dynamic function error(_args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.error(..._args);
    @:embedded
    public dynamic function cleanup(_f:() -> Void):Void __self__.value.cleanup(_f);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.testing.Testing_B.B>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
