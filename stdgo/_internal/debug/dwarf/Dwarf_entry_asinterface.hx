package stdgo._internal.debug.dwarf;
class Entry_asInterface {
    @:keep
    @:tdfield
    public dynamic function attrField(_a:stdgo._internal.debug.dwarf.Dwarf_attr.Attr):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_field.Field> return @:_0 __self__.value.attrField(_a);
    @:keep
    @:tdfield
    public dynamic function val(_a:stdgo._internal.debug.dwarf.Dwarf_attr.Attr):stdgo.AnyInterface return @:_0 __self__.value.val(_a);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.dwarf.Dwarf_entrypointer.EntryPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
