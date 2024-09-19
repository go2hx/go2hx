package stdgo._internal.debug.dwarf;
class Reader_asInterface {
    @:keep
    public dynamic function seekPC(_pc:stdgo.GoUInt64):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>; var _1 : stdgo.Error; } return __self__.value.seekPC(_pc);
    @:keep
    public dynamic function _offset():stdgo._internal.debug.dwarf.Dwarf_Offset.Offset return __self__.value._offset();
    @:keep
    public dynamic function _clone():stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader return __self__.value._clone();
    @:keep
    public dynamic function skipChildren():Void __self__.value.skipChildren();
    @:keep
    public dynamic function next():{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>; var _1 : stdgo.Error; } return __self__.value.next();
    @:keep
    public dynamic function _nextUnit():Void __self__.value._nextUnit();
    @:keep
    public dynamic function _maybeNextUnit():Void __self__.value._maybeNextUnit();
    @:keep
    public dynamic function seek(_off:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset):Void __self__.value.seek(_off);
    @:keep
    public dynamic function byteOrder():stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder return __self__.value.byteOrder();
    @:keep
    public dynamic function addressSize():stdgo.GoInt return __self__.value.addressSize();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
