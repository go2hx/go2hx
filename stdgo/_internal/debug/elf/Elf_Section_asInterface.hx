package stdgo._internal.debug.elf;
class Section_asInterface {
    @:keep
    public dynamic function open():stdgo._internal.io.Io_ReadSeeker.ReadSeeker return __self__.value.open();
    @:keep
    public dynamic function data():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.data();
    @:embedded
    public dynamic function readAt(_p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.readAt(_p, _off);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.debug.elf.Elf_Section.Section>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
