package stdgo._internal.net;
class T_ipStackCapabilities_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _doSlow(_0:() -> Void):Void @:_0 __self__.value._doSlow(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function do_(_0:() -> Void):Void @:_0 __self__.value.do_(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_t_ipstackcapabilitiespointer.T_ipStackCapabilitiesPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
