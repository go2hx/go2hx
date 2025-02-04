package stdgo._internal.crypto.internal.bigmod;
class Modulus_asInterface {
    @:keep
    @:tdfield
    public dynamic function nat():stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> return @:_0 __self__.value.nat();
    @:keep
    @:tdfield
    public dynamic function bitLen():stdgo.GoInt return @:_0 __self__.value.bitLen();
    @:keep
    @:tdfield
    public dynamic function size():stdgo.GoInt return @:_0 __self__.value.size();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.internal.bigmod.Bigmod_moduluspointer.ModulusPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
