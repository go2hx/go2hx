package _internal.crypto.internal.edwards25519;
class T_nafLookupTable8_asInterface {
    @:keep
    public dynamic function selectInto(_dest:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>, _x:stdgo.GoInt8):Void __self__.value.selectInto(_dest, _x);
    @:keep
    public dynamic function fromP3(_q:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>):Void __self__.value.fromP3(_q);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable8.T_nafLookupTable8>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
