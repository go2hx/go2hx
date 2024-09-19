package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_B_static_extension.B_static_extension) class B {
    @:embedded
    public var _common : stdgo._internal.testing.Testing_T_common.T_common = ({} : stdgo._internal.testing.Testing_T_common.T_common);
    public var _importPath : stdgo.GoString = "";
    public var _context : stdgo.Ref<stdgo._internal.testing.Testing_T_benchContext.T_benchContext> = (null : stdgo.Ref<stdgo._internal.testing.Testing_T_benchContext.T_benchContext>);
    public var n : stdgo.GoInt = 0;
    public var _previousN : stdgo.GoInt = 0;
    public var _previousDuration : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var _benchFunc : stdgo.Ref<stdgo._internal.testing.Testing_B.B> -> Void = null;
    public var _benchTime : stdgo._internal.testing.Testing_T_durationOrCountFlag.T_durationOrCountFlag = ({} : stdgo._internal.testing.Testing_T_durationOrCountFlag.T_durationOrCountFlag);
    public var _bytes : stdgo.GoInt64 = 0;
    public var _missingBytes : Bool = false;
    public var _timerOn : Bool = false;
    public var _showAllocResult : Bool = false;
    public var _result : stdgo._internal.testing.Testing_BenchmarkResult.BenchmarkResult = ({} : stdgo._internal.testing.Testing_BenchmarkResult.BenchmarkResult);
    public var _parallelism : stdgo.GoInt = 0;
    public var _startAllocs : stdgo.GoUInt64 = 0;
    public var _startBytes : stdgo.GoUInt64 = 0;
    public var _netAllocs : stdgo.GoUInt64 = 0;
    public var _netBytes : stdgo.GoUInt64 = 0;
    public var _extra : stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>);
    public function new(?_common:stdgo._internal.testing.Testing_T_common.T_common, ?_importPath:stdgo.GoString, ?_context:stdgo.Ref<stdgo._internal.testing.Testing_T_benchContext.T_benchContext>, ?n:stdgo.GoInt, ?_previousN:stdgo.GoInt, ?_previousDuration:stdgo._internal.time.Time_Duration.Duration, ?_benchFunc:stdgo.Ref<stdgo._internal.testing.Testing_B.B> -> Void, ?_benchTime:stdgo._internal.testing.Testing_T_durationOrCountFlag.T_durationOrCountFlag, ?_bytes:stdgo.GoInt64, ?_missingBytes:Bool, ?_timerOn:Bool, ?_showAllocResult:Bool, ?_result:stdgo._internal.testing.Testing_BenchmarkResult.BenchmarkResult, ?_parallelism:stdgo.GoInt, ?_startAllocs:stdgo.GoUInt64, ?_startBytes:stdgo.GoUInt64, ?_netAllocs:stdgo.GoUInt64, ?_netBytes:stdgo.GoUInt64, ?_extra:stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>) {
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
    @:embedded
    public function cleanup(_f:() -> Void) this._common.cleanup(_f);
    @:embedded
    public function error(_args:haxe.Rest<stdgo.AnyInterface>) this._common.error(..._args);
    @:embedded
    public function errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) this._common.errorf(_format, ..._args);
    @:embedded
    public function fail() this._common.fail();
    @:embedded
    public function failNow() this._common.failNow();
    @:embedded
    public function failed():Bool return this._common.failed();
    @:embedded
    public function fatal(_args:haxe.Rest<stdgo.AnyInterface>) this._common.fatal(..._args);
    @:embedded
    public function fatalf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) this._common.fatalf(_format, ..._args);
    @:embedded
    public function helper() this._common.helper();
    @:embedded
    public function log(_args:haxe.Rest<stdgo.AnyInterface>) this._common.log(..._args);
    @:embedded
    public function logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) this._common.logf(_format, ..._args);
    @:embedded
    public function name():stdgo.GoString return this._common.name();
    @:embedded
    public function setenv(_key:stdgo.GoString, _value:stdgo.GoString) this._common.setenv(_key, _value);
    @:embedded
    public function skip(_args:haxe.Rest<stdgo.AnyInterface>) this._common.skip(..._args);
    @:embedded
    public function skipNow() this._common.skipNow();
    @:embedded
    public function skipf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) this._common.skipf(_format, ..._args);
    @:embedded
    public function skipped():Bool return this._common.skipped();
    @:embedded
    public function tempDir():stdgo.GoString return this._common.tempDir();
    @:embedded
    public function _checkFuzzFn(_s:stdgo.GoString) this._common._checkFuzzFn(_s);
    @:embedded
    public function _decorate(_s:stdgo.GoString, _skip:stdgo.GoInt):stdgo.GoString return this._common._decorate(_s, _skip);
    @:embedded
    public function _flushToParent(_testName:stdgo.GoString, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) this._common._flushToParent(_testName, _format, ..._args);
    @:embedded
    public function _frameSkip(_skip:stdgo.GoInt):stdgo._internal.runtime.Runtime_Frame.Frame return this._common._frameSkip(_skip);
    @:embedded
    public function _log(_s:stdgo.GoString) this._common._log(_s);
    @:embedded
    public function _logDepth(_s:stdgo.GoString, _skip:stdgo.GoInt) this._common._logDepth(_s, _skip);
    @:embedded
    public function _private() this._common._private();
    @:embedded
    public function _runCleanup(_ph:stdgo._internal.testing.Testing_T_panicHandling.T_panicHandling):stdgo.AnyInterface return this._common._runCleanup(_ph);
    @:embedded
    public function _setRan() this._common._setRan();
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
