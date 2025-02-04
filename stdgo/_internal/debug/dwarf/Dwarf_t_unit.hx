package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_t_unit_static_extension.T_unit_static_extension) class T_unit {
    public var _base : stdgo._internal.debug.dwarf.Dwarf_offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
    public var _off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
    public var _data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _atable : stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable = (null : stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable);
    public var _asize : stdgo.GoInt = 0;
    public var _vers : stdgo.GoInt = 0;
    public var _utype : stdgo.GoUInt8 = 0;
    public var _is64 : Bool = false;
    public function new(?_base:stdgo._internal.debug.dwarf.Dwarf_offset.Offset, ?_off:stdgo._internal.debug.dwarf.Dwarf_offset.Offset, ?_data:stdgo.Slice<stdgo.GoUInt8>, ?_atable:stdgo._internal.debug.dwarf.Dwarf_t_abbrevtable.T_abbrevTable, ?_asize:stdgo.GoInt, ?_vers:stdgo.GoInt, ?_utype:stdgo.GoUInt8, ?_is64:Bool) {
        if (_base != null) this._base = _base;
        if (_off != null) this._off = _off;
        if (_data != null) this._data = _data;
        if (_atable != null) this._atable = _atable;
        if (_asize != null) this._asize = _asize;
        if (_vers != null) this._vers = _vers;
        if (_utype != null) this._utype = _utype;
        if (_is64 != null) this._is64 = _is64;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unit(_base, _off, _data, _atable, _asize, _vers, _utype, _is64);
    }
}
