package stdgo._internal.debug.dwarf;
class T_typeUnitReader_asInterface {
    @:keep
    @:tdfield
    public dynamic function _offset():stdgo._internal.debug.dwarf.Dwarf_offset.Offset return @:_0 __self__.value._offset();
    @:keep
    @:tdfield
    public dynamic function _clone():stdgo._internal.debug.dwarf.Dwarf_t_typereader.T_typeReader return @:_0 __self__.value._clone();
    @:keep
    @:tdfield
    public dynamic function next():{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>; var _1 : stdgo.Error; } return @:_0 __self__.value.next();
    @:keep
    @:tdfield
    public dynamic function addressSize():stdgo.GoInt return @:_0 __self__.value.addressSize();
    @:keep
    @:tdfield
    public dynamic function seek(_off:stdgo._internal.debug.dwarf.Dwarf_offset.Offset):Void @:_0 __self__.value.seek(_off);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.dwarf.Dwarf_t_typeunitreaderpointer.T_typeUnitReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
