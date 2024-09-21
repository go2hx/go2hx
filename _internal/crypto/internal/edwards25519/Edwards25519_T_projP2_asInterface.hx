package _internal.crypto.internal.edwards25519;
class T_projP2_asInterface {
    @:keep
    public dynamic function fromP3(_p:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2> return __self__.value.fromP3(_p);
    @:keep
    public dynamic function fromP1xP1(_p:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2> return __self__.value.fromP1xP1(_p);
    @:keep
    public dynamic function zero():stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2> return __self__.value.zero();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
