package stdgo._internal.testing;
class F_asInterface {
    @:keep
    @:tdfield
    public dynamic function _report():Void @:_0 __self__.value._report();
    @:keep
    @:tdfield
    public dynamic function fuzz(_ff:stdgo.AnyInterface):Void @:_0 __self__.value.fuzz(_ff);
    @:keep
    @:tdfield
    public dynamic function add(_args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.add(..._args);
    @:keep
    @:tdfield
    public dynamic function skipped():Bool return @:_0 __self__.value.skipped();
    @:keep
    @:tdfield
    public dynamic function fail():Void @:_0 __self__.value.fail();
    @:keep
    @:tdfield
    public dynamic function helper():Void @:_0 __self__.value.helper();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _setRan():Void @:_0 __self__.value._setRan();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _runCleanup(_0:stdgo._internal.testing.Testing_t_panichandling.T_panicHandling):stdgo.AnyInterface return @:_0 __self__.value._runCleanup(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _private():Void @:_0 __self__.value._private();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _logDepth(_0:stdgo.GoString, _1:stdgo.GoInt):Void @:_0 __self__.value._logDepth(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _log(_0:stdgo.GoString):Void @:_0 __self__.value._log(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _frameSkip(_0:stdgo.GoInt):stdgo._internal.runtime.Runtime_frame.Frame return @:_0 __self__.value._frameSkip(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _flushToParent(_0:stdgo.GoString, _1:stdgo.GoString, _2:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._flushToParent(_0, _1, ..._2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _decorate(_0:stdgo.GoString, _1:stdgo.GoInt):stdgo.GoString return @:_0 __self__.value._decorate(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _checkFuzzFn(_0:stdgo.GoString):Void @:_0 __self__.value._checkFuzzFn(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function tempDir():stdgo.GoString return @:_0 __self__.value.tempDir();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function skipf(_0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.skipf(_0, ..._1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function skipNow():Void @:_0 __self__.value.skipNow();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function skip(_0:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.skip(..._0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setenv(_0:stdgo.GoString, _1:stdgo.GoString):Void @:_0 __self__.value.setenv(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function logf(_0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.logf(_0, ..._1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function log(_0:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.log(..._0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function fatalf(_0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.fatalf(_0, ..._1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function fatal(_0:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.fatal(..._0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function failed():Bool return @:_0 __self__.value.failed();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function failNow():Void @:_0 __self__.value.failNow();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function errorf(_0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.errorf(_0, ..._1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function error(_0:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.error(..._0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function cleanup(_0:() -> Void):Void @:_0 __self__.value.cleanup(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.testing.Testing_fpointer.FPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
