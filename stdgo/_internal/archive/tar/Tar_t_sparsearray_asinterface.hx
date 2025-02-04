package stdgo._internal.archive.tar;
class T_sparseArray_asInterface {
    @:keep
    @:tdfield
    public dynamic function _maxEntries():stdgo.GoInt return @:_0 __self__.value._maxEntries();
    @:keep
    @:tdfield
    public dynamic function _isExtended():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._isExtended();
    @:keep
    @:tdfield
    public dynamic function _entry(_i:stdgo.GoInt):stdgo._internal.archive.tar.Tar_t_sparseelem.T_sparseElem return @:_0 __self__.value._entry(_i);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.tar.Tar_t_sparsearraypointer.T_sparseArrayPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
