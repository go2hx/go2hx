package stdgo._internal.debug.dwarf;
class T_buf_asInterface {
    @:keep
    public dynamic function _entry(_cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>, _atab:stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable, _ubase:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, _vers:stdgo.GoInt):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry> return __self__.value._entry(_cu, _atab, _ubase, _vers);
    @:keep
    public dynamic function _error(_s:stdgo.GoString):Void __self__.value._error(_s);
    @:keep
    public dynamic function _unitLength():{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset; var _1 : Bool; } return __self__.value._unitLength();
    @:keep
    public dynamic function _addr():stdgo.GoUInt64 return __self__.value._addr();
    @:keep
    public dynamic function _int():stdgo.GoInt64 return __self__.value._int();
    @:keep
    public dynamic function _uint():stdgo.GoUInt64 return __self__.value._uint();
    @:keep
    public dynamic function _varint():{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt; } return __self__.value._varint();
    @:keep
    public dynamic function _uint64():stdgo.GoUInt64 return __self__.value._uint64();
    @:keep
    public dynamic function _uint32():stdgo.GoUInt32 return __self__.value._uint32();
    @:keep
    public dynamic function _uint24():stdgo.GoUInt32 return __self__.value._uint24();
    @:keep
    public dynamic function _uint16():stdgo.GoUInt16 return __self__.value._uint16();
    @:keep
    public dynamic function _string():stdgo.GoString return __self__.value._string();
    @:keep
    public dynamic function _skip(_n:stdgo.GoInt):Void __self__.value._skip(_n);
    @:keep
    public dynamic function _bytes(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.value._bytes(_n);
    @:keep
    public dynamic function _uint8():stdgo.GoUInt8 return __self__.value._uint8();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
