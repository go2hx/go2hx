package stdgo._internal.archive.tar;
class T_sparseElem_asInterface {
    @:keep
    public dynamic function _length():stdgo.Slice<stdgo.GoUInt8> return __self__.value._length();
    @:keep
    public dynamic function _offset():stdgo.Slice<stdgo.GoUInt8> return __self__.value._offset();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.archive.tar.Tar_T_sparseElem.T_sparseElem>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
