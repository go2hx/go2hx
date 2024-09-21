package _internal.crypto.internal.bigmod;
class Modulus_asInterface {
    @:keep
    public dynamic function nat():stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> return __self__.value.nat();
    @:keep
    public dynamic function bitLen():stdgo.GoInt return __self__.value.bitLen();
    @:keep
    public dynamic function size():stdgo.GoInt return __self__.value.size();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
