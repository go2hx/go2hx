package stdgo._internal.net;
class T_sysDialer_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _resolver():stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> return @:_0 __self__.value._resolver();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _fallbackDelay():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value._fallbackDelay();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _dualStack():Bool return @:_0 __self__.value._dualStack();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _deadline(_0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time return @:_0 __self__.value._deadline(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setMultipathTCP(_0:Bool):Void @:_0 __self__.value.setMultipathTCP(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function multipathTCP():Bool return @:_0 __self__.value.multipathTCP();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function dialContext(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:_0 __self__.value.dialContext(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function dial(_0:stdgo.GoString, _1:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:_0 __self__.value.dial(_0, _1);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_t_sysdialerpointer.T_sysDialerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
