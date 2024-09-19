package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_F_static_extension.F_static_extension) class F {
    @:embedded
    public var _common : stdgo._internal.testing.Testing_T_common.T_common = ({} : stdgo._internal.testing.Testing_T_common.T_common);
    public var _fuzzContext : stdgo.Ref<stdgo._internal.testing.Testing_T_fuzzContext.T_fuzzContext> = (null : stdgo.Ref<stdgo._internal.testing.Testing_T_fuzzContext.T_fuzzContext>);
    public var _testContext : stdgo.Ref<stdgo._internal.testing.Testing_T_testContext.T_testContext> = (null : stdgo.Ref<stdgo._internal.testing.Testing_T_testContext.T_testContext>);
    public var _inFuzzFn : Bool = false;
    public var _corpus : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }> = (null : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>);
    public var _result : stdgo._internal.testing.Testing_T_fuzzResult.T_fuzzResult = ({} : stdgo._internal.testing.Testing_T_fuzzResult.T_fuzzResult);
    public var _fuzzCalled : Bool = false;
    public function new(?_common:stdgo._internal.testing.Testing_T_common.T_common, ?_fuzzContext:stdgo.Ref<stdgo._internal.testing.Testing_T_fuzzContext.T_fuzzContext>, ?_testContext:stdgo.Ref<stdgo._internal.testing.Testing_T_testContext.T_testContext>, ?_inFuzzFn:Bool, ?_corpus:stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>, ?_result:stdgo._internal.testing.Testing_T_fuzzResult.T_fuzzResult, ?_fuzzCalled:Bool) {
        if (_common != null) this._common = _common;
        if (_fuzzContext != null) this._fuzzContext = _fuzzContext;
        if (_testContext != null) this._testContext = _testContext;
        if (_inFuzzFn != null) this._inFuzzFn = _inFuzzFn;
        if (_corpus != null) this._corpus = _corpus;
        if (_result != null) this._result = _result;
        if (_fuzzCalled != null) this._fuzzCalled = _fuzzCalled;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function cleanup(_f:() -> Void) this._common.cleanup(_f);
    @:embedded
    public function error(_args:haxe.Rest<stdgo.AnyInterface>) this._common.error(..._args);
    @:embedded
    public function errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) this._common.errorf(_format, ..._args);
    @:embedded
    public function failNow() this._common.failNow();
    @:embedded
    public function failed():Bool return this._common.failed();
    @:embedded
    public function fatal(_args:haxe.Rest<stdgo.AnyInterface>) this._common.fatal(..._args);
    @:embedded
    public function fatalf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>) this._common.fatalf(_format, ..._args);
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
        return new F(_common, _fuzzContext, _testContext, _inFuzzFn, _corpus, _result, _fuzzCalled);
    }
}
