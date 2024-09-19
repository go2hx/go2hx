package stdgo._internal.testing;
class T_common_asInterface {
    @:keep
    public dynamic function _runCleanup(_ph:stdgo._internal.testing.Testing_T_panicHandling.T_panicHandling):stdgo.AnyInterface return __self__.value._runCleanup(_ph);
    @:keep
    public dynamic function setenv(_key:stdgo.GoString, _value:stdgo.GoString):Void __self__.value.setenv(_key, _value);
    @:keep
    public dynamic function tempDir():stdgo.GoString return __self__.value.tempDir();
    @:keep
    public dynamic function cleanup(_f:() -> Void):Void __self__.value.cleanup(_f);
    @:keep
    public dynamic function helper():Void __self__.value.helper();
    @:keep
    public dynamic function skipped():Bool return __self__.value.skipped();
    @:keep
    public dynamic function skipNow():Void __self__.value.skipNow();
    @:keep
    public dynamic function skipf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.skipf(_format, ..._args);
    @:keep
    public dynamic function skip(_args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.skip(..._args);
    @:keep
    public dynamic function fatalf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.fatalf(_format, ..._args);
    @:keep
    public dynamic function fatal(_args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.fatal(..._args);
    @:keep
    public dynamic function errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.errorf(_format, ..._args);
    @:keep
    public dynamic function error(_args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.error(..._args);
    @:keep
    public dynamic function logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.logf(_format, ..._args);
    @:keep
    public dynamic function log(_args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.log(..._args);
    @:keep
    public dynamic function _logDepth(_s:stdgo.GoString, _depth:stdgo.GoInt):Void __self__.value._logDepth(_s, _depth);
    @:keep
    public dynamic function _log(_s:stdgo.GoString):Void __self__.value._log(_s);
    @:keep
    public dynamic function failNow():Void __self__.value.failNow();
    @:keep
    public dynamic function failed():Bool return __self__.value.failed();
    @:keep
    public dynamic function fail():Void __self__.value.fail();
    @:keep
    public dynamic function _setRan():Void __self__.value._setRan();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    @:keep
    public dynamic function _private():Void __self__.value._private();
    @:keep
    public dynamic function _flushToParent(_testName:stdgo.GoString, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._flushToParent(_testName, _format, ..._args);
    @:keep
    public dynamic function _decorate(_s:stdgo.GoString, _skip:stdgo.GoInt):stdgo.GoString return __self__.value._decorate(_s, _skip);
    @:keep
    public dynamic function _frameSkip(_skip:stdgo.GoInt):stdgo._internal.runtime.Runtime_Frame.Frame return __self__.value._frameSkip(_skip);
    @:keep
    public dynamic function _checkFuzzFn(_name:stdgo.GoString):Void __self__.value._checkFuzzFn(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.testing.Testing_T_common.T_common>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
