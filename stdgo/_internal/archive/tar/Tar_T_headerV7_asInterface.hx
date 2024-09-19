package stdgo._internal.archive.tar;
class T_headerV7_asInterface {
    @:keep
    public dynamic function _linkName():stdgo.Slice<stdgo.GoUInt8> return __self__.value._linkName();
    @:keep
    public dynamic function _typeFlag():stdgo.Slice<stdgo.GoUInt8> return __self__.value._typeFlag();
    @:keep
    public dynamic function _chksum():stdgo.Slice<stdgo.GoUInt8> return __self__.value._chksum();
    @:keep
    public dynamic function _modTime():stdgo.Slice<stdgo.GoUInt8> return __self__.value._modTime();
    @:keep
    public dynamic function _size():stdgo.Slice<stdgo.GoUInt8> return __self__.value._size();
    @:keep
    public dynamic function _gid():stdgo.Slice<stdgo.GoUInt8> return __self__.value._gid();
    @:keep
    public dynamic function _uid():stdgo.Slice<stdgo.GoUInt8> return __self__.value._uid();
    @:keep
    public dynamic function _mode():stdgo.Slice<stdgo.GoUInt8> return __self__.value._mode();
    @:keep
    public dynamic function _name():stdgo.Slice<stdgo.GoUInt8> return __self__.value._name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
