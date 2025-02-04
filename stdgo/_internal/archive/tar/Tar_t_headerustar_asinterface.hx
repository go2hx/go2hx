package stdgo._internal.archive.tar;
class T_headerUSTAR_asInterface {
    @:keep
    @:tdfield
    public dynamic function _prefix():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._prefix();
    @:keep
    @:tdfield
    public dynamic function _devMinor():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._devMinor();
    @:keep
    @:tdfield
    public dynamic function _devMajor():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._devMajor();
    @:keep
    @:tdfield
    public dynamic function _groupName():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._groupName();
    @:keep
    @:tdfield
    public dynamic function _userName():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._userName();
    @:keep
    @:tdfield
    public dynamic function _version():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._version();
    @:keep
    @:tdfield
    public dynamic function _magic():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._magic();
    @:keep
    @:tdfield
    public dynamic function _v7():stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerv7.T_headerV7> return @:_0 __self__.value._v7();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.tar.Tar_t_headerustarpointer.T_headerUSTARPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
