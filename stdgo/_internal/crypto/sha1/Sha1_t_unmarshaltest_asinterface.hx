package stdgo._internal.crypto.sha1;
class T_unmarshalTest_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.sha1.Sha1_t_unmarshaltestpointer.T_unmarshalTestPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
