package stdgo._internal.os.signal;
class T_signalCtx_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function _stop():Void @:_0 __self__.value._stop();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function value(_0:stdgo.AnyInterface):stdgo.AnyInterface return @:_0 __self__.value.value(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function err():stdgo.Error return @:_0 __self__.value.err();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function done():stdgo.Chan<{ }> return @:_0 __self__.value.done();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function deadline():{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:_0 __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.os.signal.Signal_t_signalctxpointer.T_signalCtxPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
