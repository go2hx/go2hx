package stdgo._internal.debug.dwarf;
class T_typeUnitReader_asInterface {
    @:keep
    public dynamic function _offset():stdgo._internal.debug.dwarf.Dwarf_Offset.Offset return __self__.value._offset();
    @:keep
    public dynamic function _clone():stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader return __self__.value._clone();
    @:keep
    public dynamic function next():{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>; var _1 : stdgo.Error; } return __self__.value.next();
    @:keep
    public dynamic function addressSize():stdgo.GoInt return __self__.value.addressSize();
    @:keep
    public dynamic function seek(_off:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset):Void __self__.value.seek(_off);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.debug.dwarf.Dwarf_T_typeUnitReader.T_typeUnitReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
