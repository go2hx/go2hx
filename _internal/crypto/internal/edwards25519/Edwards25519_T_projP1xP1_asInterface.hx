package _internal.crypto.internal.edwards25519;
class T_projP1xP1_asInterface {
    @:keep
    public dynamic function double(_p:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1> return __self__.value.double(_p);
    @:keep
    public dynamic function subAffine(_p:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _q:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1> return __self__.value.subAffine(_p, _q);
    @:keep
    public dynamic function addAffine(_p:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _q:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1> return __self__.value.addAffine(_p, _q);
    @:keep
    public dynamic function sub(_p:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _q:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1> return __self__.value.sub(_p, _q);
    @:keep
    public dynamic function add(_p:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _q:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1> return __self__.value.add(_p, _q);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}