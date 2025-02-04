package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_b_static_extension.B_static_extension) class B {
    @:embedded
    public var _common : stdgo._internal.testing.Testing_t_common.T_common = ({} : stdgo._internal.testing.Testing_t_common.T_common);
    public var _importPath : stdgo.GoString = "";
    public var _context : stdgo.Ref<stdgo._internal.testing.Testing_t_benchcontext.T_benchContext> = (null : stdgo.Ref<stdgo._internal.testing.Testing_t_benchcontext.T_benchContext>);
    public var n : stdgo.GoInt = 0;
    public var _previousN : stdgo.GoInt = 0;
    public var _previousDuration : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var _benchFunc : stdgo.Ref<stdgo._internal.testing.Testing_b.B> -> Void = null;
    public var _benchTime : stdgo._internal.testing.Testing_t_durationorcountflag.T_durationOrCountFlag = ({} : stdgo._internal.testing.Testing_t_durationorcountflag.T_durationOrCountFlag);
    public var _bytes : stdgo.GoInt64 = 0;
    public var _missingBytes : Bool = false;
    public var _timerOn : Bool = false;
    public var _showAllocResult : Bool = false;
    public var _result : stdgo._internal.testing.Testing_benchmarkresult.BenchmarkResult = ({} : stdgo._internal.testing.Testing_benchmarkresult.BenchmarkResult);
    public var _parallelism : stdgo.GoInt = 0;
    public var _startAllocs : stdgo.GoUInt64 = 0;
    public var _startBytes : stdgo.GoUInt64 = 0;
    public var _netAllocs : stdgo.GoUInt64 = 0;
    public var _netBytes : stdgo.GoUInt64 = 0;
    public var _extra : stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>);
    public function new(?_common:stdgo._internal.testing.Testing_t_common.T_common, ?_importPath:stdgo.GoString, ?_context:stdgo.Ref<stdgo._internal.testing.Testing_t_benchcontext.T_benchContext>, ?n:stdgo.GoInt, ?_previousN:stdgo.GoInt, ?_previousDuration:stdgo._internal.time.Time_duration.Duration, ?_benchFunc:stdgo.Ref<stdgo._internal.testing.Testing_b.B> -> Void, ?_benchTime:stdgo._internal.testing.Testing_t_durationorcountflag.T_durationOrCountFlag, ?_bytes:stdgo.GoInt64, ?_missingBytes:Bool, ?_timerOn:Bool, ?_showAllocResult:Bool, ?_result:stdgo._internal.testing.Testing_benchmarkresult.BenchmarkResult, ?_parallelism:stdgo.GoInt, ?_startAllocs:stdgo.GoUInt64, ?_startBytes:stdgo.GoUInt64, ?_netAllocs:stdgo.GoUInt64, ?_netBytes:stdgo.GoUInt64, ?_extra:stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>) {
        if (_common != null) this._common = _common;
        if (_importPath != null) this._importPath = _importPath;
        if (_context != null) this._context = _context;
        if (n != null) this.n = n;
        if (_previousN != null) this._previousN = _previousN;
        if (_previousDuration != null) this._previousDuration = _previousDuration;
        if (_benchFunc != null) this._benchFunc = _benchFunc;
        if (_benchTime != null) this._benchTime = _benchTime;
        if (_bytes != null) this._bytes = _bytes;
        if (_missingBytes != null) this._missingBytes = _missingBytes;
        if (_timerOn != null) this._timerOn = _timerOn;
        if (_showAllocResult != null) this._showAllocResult = _showAllocResult;
        if (_result != null) this._result = _result;
        if (_parallelism != null) this._parallelism = _parallelism;
        if (_startAllocs != null) this._startAllocs = _startAllocs;
        if (_startBytes != null) this._startBytes = _startBytes;
        if (_netAllocs != null) this._netAllocs = _netAllocs;
        if (_netBytes != null) this._netBytes = _netBytes;
        if (_extra != null) this._extra = _extra;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var cleanup(get, never) : (() -> Void) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_cleanup():(() -> Void) -> Void return @:check32 this._common.cleanup;
    public var error(get, never) : haxe.Rest<stdgo.AnyInterface> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_error():haxe.Rest<stdgo.AnyInterface> -> Void return @:check32 this._common.error;
    public var errorf(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_errorf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return @:check32 this._common.errorf;
    public var fail(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_fail():() -> Void return @:check32 this._common.fail;
    public var failNow(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_failNow():() -> Void return @:check32 this._common.failNow;
    public var failed(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_failed():() -> Bool return @:check32 this._common.failed;
    public var fatal(get, never) : haxe.Rest<stdgo.AnyInterface> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_fatal():haxe.Rest<stdgo.AnyInterface> -> Void return @:check32 this._common.fatal;
    public var fatalf(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_fatalf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return @:check32 this._common.fatalf;
    public var helper(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_helper():() -> Void return @:check32 this._common.helper;
    public var log(get, never) : haxe.Rest<stdgo.AnyInterface> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_log():haxe.Rest<stdgo.AnyInterface> -> Void return @:check32 this._common.log;
    public var logf(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_logf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return @:check32 this._common.logf;
    public var name(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_name():() -> stdgo.GoString return @:check32 this._common.name;
    public var setenv(get, never) : (stdgo.GoString, stdgo.GoString) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_setenv():(stdgo.GoString, stdgo.GoString) -> Void return @:check32 this._common.setenv;
    public var skip(get, never) : haxe.Rest<stdgo.AnyInterface> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_skip():haxe.Rest<stdgo.AnyInterface> -> Void return @:check32 this._common.skip;
    public var skipNow(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_skipNow():() -> Void return @:check32 this._common.skipNow;
    public var skipf(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_skipf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return @:check32 this._common.skipf;
    public var skipped(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_skipped():() -> Bool return @:check32 this._common.skipped;
    public var tempDir(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_tempDir():() -> stdgo.GoString return @:check32 this._common.tempDir;
    public var _checkFuzzFn(get, never) : stdgo.GoString -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__checkFuzzFn():stdgo.GoString -> Void return @:check32 this._common._checkFuzzFn;
    public var _decorate(get, never) : (stdgo.GoString, stdgo.GoInt) -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get__decorate():(stdgo.GoString, stdgo.GoInt) -> stdgo.GoString return @:check32 this._common._decorate;
    public var _flushToParent(get, never) : (stdgo.GoString, stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__flushToParent():(stdgo.GoString, stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return @:check32 this._common._flushToParent;
    public var _frameSkip(get, never) : stdgo.GoInt -> stdgo._internal.runtime.Runtime_frame.Frame;
    @:embedded
    @:embeddededffieldsffun
    public function get__frameSkip():stdgo.GoInt -> stdgo._internal.runtime.Runtime_frame.Frame return @:check32 this._common._frameSkip;
    public var _log(get, never) : stdgo.GoString -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__log():stdgo.GoString -> Void return @:check32 this._common._log;
    public var _logDepth(get, never) : (stdgo.GoString, stdgo.GoInt) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__logDepth():(stdgo.GoString, stdgo.GoInt) -> Void return @:check32 this._common._logDepth;
    public var _private(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__private():() -> Void return @:check32 this._common._private;
    public var _runCleanup(get, never) : stdgo._internal.testing.Testing_t_panichandling.T_panicHandling -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    public function get__runCleanup():stdgo._internal.testing.Testing_t_panichandling.T_panicHandling -> stdgo.AnyInterface return @:check32 this._common._runCleanup;
    public var _setRan(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__setRan():() -> Void return @:check32 this._common._setRan;
    public function __copy__() {
        return new B(
_common,
_importPath,
_context,
n,
_previousN,
_previousDuration,
_benchFunc,
_benchTime,
_bytes,
_missingBytes,
_timerOn,
_showAllocResult,
_result,
_parallelism,
_startAllocs,
_startBytes,
_netAllocs,
_netBytes,
_extra);
    }
}
