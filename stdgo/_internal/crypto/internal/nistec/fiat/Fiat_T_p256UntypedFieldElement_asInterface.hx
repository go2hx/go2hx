package stdgo._internal.crypto.internal.nistec.fiat;
class T_p256UntypedFieldElement_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.internal.nistec.fiat.Fiat_T_p256UntypedFieldElementPointer.T_p256UntypedFieldElementPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
