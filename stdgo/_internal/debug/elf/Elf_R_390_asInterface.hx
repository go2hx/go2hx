package stdgo._internal.debug.elf;
class R_390_asInterface {
    @:keep
    public dynamic function goString():stdgo.GoString return __self__.value.goString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.debug.elf.Elf_R_390.R_390>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
