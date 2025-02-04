package stdgo._internal.debug.dwarf;
class T_buf_asInterface {
    @:keep
    @:tdfield
    public dynamic function _entry(_cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>, _atab:stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable, _ubase:stdgo._internal.debug.dwarf.Dwarf_offset.Offset, _vers:stdgo.GoInt):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry> return @:_0 __self__.value._entry(_cu, _atab, _ubase, _vers);
    @:keep
    @:tdfield
    public dynamic function _error(_s:stdgo.GoString):Void @:_0 __self__.value._error(_s);
    @:keep
    @:tdfield
    public dynamic function _unitLength():{ var _0 : stdgo._internal.debug.dwarf.Dwarf_offset.Offset; var _1 : Bool; } return @:_0 __self__.value._unitLength();
    @:keep
    @:tdfield
    public dynamic function _addr():stdgo.GoUInt64 return @:_0 __self__.value._addr();
    @:keep
    @:tdfield
    public dynamic function _int():stdgo.GoInt64 return @:_0 __self__.value._int();
    @:keep
    @:tdfield
    public dynamic function _uint():stdgo.GoUInt64 return @:_0 __self__.value._uint();
    @:keep
    @:tdfield
    public dynamic function _varint():{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt; } return @:_0 __self__.value._varint();
    @:keep
    @:tdfield
    public dynamic function _uint64():stdgo.GoUInt64 return @:_0 __self__.value._uint64();
    @:keep
    @:tdfield
    public dynamic function _uint32():stdgo.GoUInt32 return @:_0 __self__.value._uint32();
    @:keep
    @:tdfield
    public dynamic function _uint24():stdgo.GoUInt32 return @:_0 __self__.value._uint24();
    @:keep
    @:tdfield
    public dynamic function _uint16():stdgo.GoUInt16 return @:_0 __self__.value._uint16();
    @:keep
    @:tdfield
    public dynamic function _string():stdgo.GoString return @:_0 __self__.value._string();
    @:keep
    @:tdfield
    public dynamic function _skip(_n:stdgo.GoInt):Void @:_0 __self__.value._skip(_n);
    @:keep
    @:tdfield
    public dynamic function _bytes(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._bytes(_n);
    @:keep
    @:tdfield
    public dynamic function _uint8():stdgo.GoUInt8 return @:_0 __self__.value._uint8();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.dwarf.Dwarf_t_bufpointer.T_bufPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
