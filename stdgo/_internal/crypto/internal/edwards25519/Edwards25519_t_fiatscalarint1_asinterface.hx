package stdgo._internal.crypto.internal.edwards25519;
class T_fiatScalarInt1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarint1pointer.T_fiatScalarInt1Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
