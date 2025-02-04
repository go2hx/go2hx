package stdgo._internal.encoding.gob;
class T_testPtrTypeToType___localname___Type1_6414_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.gob.Gob_t_testptrtypetotype___localname___type1_6414pointer.T_testPtrTypeToType___localname___Type1_6414Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
