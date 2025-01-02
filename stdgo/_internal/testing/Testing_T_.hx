package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_T__static_extension.T__static_extension) class T_ {
    @:embedded
    public var _common : stdgo._internal.testing.Testing_T_common.T_common = ({} : stdgo._internal.testing.Testing_T_common.T_common);
    public var _isEnvSet : Bool = false;
    public var _context : stdgo.Ref<stdgo._internal.testing.Testing_T_testContext.T_testContext> = (null : stdgo.Ref<stdgo._internal.testing.Testing_T_testContext.T_testContext>);
    @:local
    var output : StringBuf = null;
    public function new(?_common:stdgo._internal.testing.Testing_T_common.T_common, ?_isEnvSet:Bool, ?_context:stdgo.Ref<stdgo._internal.testing.Testing_T_testContext.T_testContext>, ?output:StringBuf) {
        if (_common != null) this._common = _common;
        if (_isEnvSet != null) this._isEnvSet = _isEnvSet;
        if (_context != null) this._context = _context;
        if (output != null) this.output = output;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var cleanup(get, never) : (() -> Void) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_cleanup():(() -> Void) -> Void return @:check3 (this._common ?? throw "null pointer derefrence").cleanup;
    public var error(get, never) : haxe.Rest<stdgo.AnyInterface> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_error():haxe.Rest<stdgo.AnyInterface> -> Void return @:check3 (this._common ?? throw "null pointer derefrence").error;
    public var errorf(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_errorf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return @:check3 (this._common ?? throw "null pointer derefrence").errorf;
    public var fail(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_fail():() -> Void return @:check3 (this._common ?? throw "null pointer derefrence").fail;
    public var failNow(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_failNow():() -> Void return @:check3 (this._common ?? throw "null pointer derefrence").failNow;
    public var failed(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_failed():() -> Bool return @:check3 (this._common ?? throw "null pointer derefrence").failed;
    public var fatal(get, never) : haxe.Rest<stdgo.AnyInterface> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_fatal():haxe.Rest<stdgo.AnyInterface> -> Void return @:check3 (this._common ?? throw "null pointer derefrence").fatal;
    public var fatalf(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_fatalf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return @:check3 (this._common ?? throw "null pointer derefrence").fatalf;
    public var helper(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_helper():() -> Void return @:check3 (this._common ?? throw "null pointer derefrence").helper;
    public var log(get, never) : haxe.Rest<stdgo.AnyInterface> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_log():haxe.Rest<stdgo.AnyInterface> -> Void return @:check3 (this._common ?? throw "null pointer derefrence").log;
    public var logf(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_logf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return @:check3 (this._common ?? throw "null pointer derefrence").logf;
    public var name(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_name():() -> stdgo.GoString return @:check3 (this._common ?? throw "null pointer derefrence").name;
    public var skip(get, never) : haxe.Rest<stdgo.AnyInterface> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_skip():haxe.Rest<stdgo.AnyInterface> -> Void return @:check3 (this._common ?? throw "null pointer derefrence").skip;
    public var skipNow(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_skipNow():() -> Void return @:check3 (this._common ?? throw "null pointer derefrence").skipNow;
    public var skipf(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_skipf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return @:check3 (this._common ?? throw "null pointer derefrence").skipf;
    public var skipped(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_skipped():() -> Bool return @:check3 (this._common ?? throw "null pointer derefrence").skipped;
    public var tempDir(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_tempDir():() -> stdgo.GoString return @:check3 (this._common ?? throw "null pointer derefrence").tempDir;
    public var _checkFuzzFn(get, never) : stdgo.GoString -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__checkFuzzFn():stdgo.GoString -> Void return @:check3 (this._common ?? throw "null pointer derefrence")._checkFuzzFn;
    public var _decorate(get, never) : (stdgo.GoString, stdgo.GoInt) -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get__decorate():(stdgo.GoString, stdgo.GoInt) -> stdgo.GoString return @:check3 (this._common ?? throw "null pointer derefrence")._decorate;
    public var _flushToParent(get, never) : (stdgo.GoString, stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__flushToParent():(stdgo.GoString, stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return @:check3 (this._common ?? throw "null pointer derefrence")._flushToParent;
    public var _frameSkip(get, never) : stdgo.GoInt -> stdgo._internal.runtime.Runtime_Frame.Frame;
    @:embedded
    @:embeddededffieldsffun
    public function get__frameSkip():stdgo.GoInt -> stdgo._internal.runtime.Runtime_Frame.Frame return @:check3 (this._common ?? throw "null pointer derefrence")._frameSkip;
    public var _log(get, never) : stdgo.GoString -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__log():stdgo.GoString -> Void return @:check3 (this._common ?? throw "null pointer derefrence")._log;
    public var _logDepth(get, never) : (stdgo.GoString, stdgo.GoInt) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__logDepth():(stdgo.GoString, stdgo.GoInt) -> Void return @:check3 (this._common ?? throw "null pointer derefrence")._logDepth;
    public var _private(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__private():() -> Void return @:check3 (this._common ?? throw "null pointer derefrence")._private;
    public var _runCleanup(get, never) : stdgo._internal.testing.Testing_T_panicHandling.T_panicHandling -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    public function get__runCleanup():stdgo._internal.testing.Testing_T_panicHandling.T_panicHandling -> stdgo.AnyInterface return @:check3 (this._common ?? throw "null pointer derefrence")._runCleanup;
    public var _setRan(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__setRan():() -> Void return @:check3 (this._common ?? throw "null pointer derefrence")._setRan;
    public function __copy__() {
        return new T_(_common, _isEnvSet, _context, output);
    }
}
