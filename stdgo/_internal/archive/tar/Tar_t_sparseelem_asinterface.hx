package stdgo._internal.archive.tar;
class T_sparseElem_asInterface {
    @:keep
    @:tdfield
    public dynamic function _length():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._length();
    @:keep
    @:tdfield
    public dynamic function _offset():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._offset();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.tar.Tar_t_sparseelempointer.T_sparseElemPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
