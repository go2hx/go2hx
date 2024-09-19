package stdgo._internal.debug.dwarf;
class Entry_asInterface {
    @:keep
    public dynamic function attrField(_a:stdgo._internal.debug.dwarf.Dwarf_Attr.Attr):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Field.Field> return __self__.value.attrField(_a);
    @:keep
    public dynamic function val(_a:stdgo._internal.debug.dwarf.Dwarf_Attr.Attr):stdgo.AnyInterface return __self__.value.val(_a);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
