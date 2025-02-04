package stdgo._internal.debug.buildinfo;
class T_elfExe_asInterface {
    @:keep
    @:tdfield
    public dynamic function dataStart():stdgo.GoUInt64 return @:_0 __self__.value.dataStart();
    @:keep
    @:tdfield
    public dynamic function readData(_addr:stdgo.GoUInt64, _size:stdgo.GoUInt64):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.readData(_addr, _size);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.buildinfo.Buildinfo_t_elfexepointer.T_elfExePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
