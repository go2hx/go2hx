package stdgo._internal.crypto.internal.edwards25519;
class T_projP2_asInterface {
    @:keep
    @:tdfield
    public dynamic function fromP3(_p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2> return @:_0 __self__.value.fromP3(_p);
    @:keep
    @:tdfield
    public dynamic function fromP1xP1(_p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2> return @:_0 __self__.value.fromP1xP1(_p);
    @:keep
    @:tdfield
    public dynamic function zero():stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2> return @:_0 __self__.value.zero();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2pointer.T_projP2Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
