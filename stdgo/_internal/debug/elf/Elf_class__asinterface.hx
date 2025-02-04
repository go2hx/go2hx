package stdgo._internal.debug.elf;
class Class__asInterface {
    @:keep
    @:tdfield
    public dynamic function goString():stdgo.GoString return @:_0 __self__.value.goString();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.elf.Elf_class_pointer.Class_Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
