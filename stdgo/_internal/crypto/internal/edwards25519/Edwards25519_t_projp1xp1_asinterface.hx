package stdgo._internal.crypto.internal.edwards25519;
class T_projP1xP1_asInterface {
    @:keep
    @:tdfield
    public dynamic function double(_p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1> return @:_0 __self__.value.double(_p);
    @:keep
    @:tdfield
    public dynamic function subAffine(_p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1> return @:_0 __self__.value.subAffine(_p, _q);
    @:keep
    @:tdfield
    public dynamic function addAffine(_p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1> return @:_0 __self__.value.addAffine(_p, _q);
    @:keep
    @:tdfield
    public dynamic function sub(_p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1> return @:_0 __self__.value.sub(_p, _q);
    @:keep
    @:tdfield
    public dynamic function add(_p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1> return @:_0 __self__.value.add(_p, _q);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1pointer.T_projP1xP1Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
