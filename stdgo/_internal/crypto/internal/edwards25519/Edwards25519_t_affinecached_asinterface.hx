package stdgo._internal.crypto.internal.edwards25519;
class T_affineCached_asInterface {
    @:keep
    @:tdfield
    public dynamic function condNeg(_cond:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached> return @:_0 __self__.value.condNeg(_cond);
    @:keep
    @:tdfield
    public dynamic function select(_a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>, _b:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>, _cond:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached> return @:_0 __self__.value.select(_a, _b, _cond);
    @:keep
    @:tdfield
    public dynamic function fromP3(_p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached> return @:_0 __self__.value.fromP3(_p);
    @:keep
    @:tdfield
    public dynamic function zero():stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached> return @:_0 __self__.value.zero();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecachedpointer.T_affineCachedPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
