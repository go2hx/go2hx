package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_data_static_extension.Data_static_extension) class Data {
    public var _abbrev : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _aranges : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _frame : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _info : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _line : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _pubnames : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _ranges : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _str : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _addr : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _lineStr : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _strOffsets : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _rngLists : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _abbrevCache : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable> = (null : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable>);
    public var _bigEndian : Bool = false;
    public var _order : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder = (null : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder);
    public var _typeCache : stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_offset.Offset, stdgo._internal.debug.dwarf.Dwarf_type_.Type_> = (null : stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_offset.Offset, stdgo._internal.debug.dwarf.Dwarf_type_.Type_>);
    public var _typeSigs : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunit.T_typeUnit>> = (null : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunit.T_typeUnit>>);
    public var _unit : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit> = (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>);
    public function new(?_abbrev:stdgo.Slice<stdgo.GoUInt8>, ?_aranges:stdgo.Slice<stdgo.GoUInt8>, ?_frame:stdgo.Slice<stdgo.GoUInt8>, ?_info:stdgo.Slice<stdgo.GoUInt8>, ?_line:stdgo.Slice<stdgo.GoUInt8>, ?_pubnames:stdgo.Slice<stdgo.GoUInt8>, ?_ranges:stdgo.Slice<stdgo.GoUInt8>, ?_str:stdgo.Slice<stdgo.GoUInt8>, ?_addr:stdgo.Slice<stdgo.GoUInt8>, ?_lineStr:stdgo.Slice<stdgo.GoUInt8>, ?_strOffsets:stdgo.Slice<stdgo.GoUInt8>, ?_rngLists:stdgo.Slice<stdgo.GoUInt8>, ?_abbrevCache:stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable>, ?_bigEndian:Bool, ?_order:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder, ?_typeCache:stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_offset.Offset, stdgo._internal.debug.dwarf.Dwarf_type_.Type_>, ?_typeSigs:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_t_typeunit.T_typeUnit>>, ?_unit:stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_unit.T_unit>) {
        if (_abbrev != null) this._abbrev = _abbrev;
        if (_aranges != null) this._aranges = _aranges;
        if (_frame != null) this._frame = _frame;
        if (_info != null) this._info = _info;
        if (_line != null) this._line = _line;
        if (_pubnames != null) this._pubnames = _pubnames;
        if (_ranges != null) this._ranges = _ranges;
        if (_str != null) this._str = _str;
        if (_addr != null) this._addr = _addr;
        if (_lineStr != null) this._lineStr = _lineStr;
        if (_strOffsets != null) this._strOffsets = _strOffsets;
        if (_rngLists != null) this._rngLists = _rngLists;
        if (_abbrevCache != null) this._abbrevCache = _abbrevCache;
        if (_bigEndian != null) this._bigEndian = _bigEndian;
        if (_order != null) this._order = _order;
        if (_typeCache != null) this._typeCache = _typeCache;
        if (_typeSigs != null) this._typeSigs = _typeSigs;
        if (_unit != null) this._unit = _unit;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Data(
_abbrev,
_aranges,
_frame,
_info,
_line,
_pubnames,
_ranges,
_str,
_addr,
_lineStr,
_strOffsets,
_rngLists,
_abbrevCache,
_bigEndian,
_order,
_typeCache,
_typeSigs,
_unit);
    }
}
