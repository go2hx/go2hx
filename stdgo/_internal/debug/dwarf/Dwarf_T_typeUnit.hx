package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_T_typeUnit_static_extension.T_typeUnit_static_extension) class T_typeUnit {
    @:embedded
    public var _unit : stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit = ({} : stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit);
    public var _toff : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
    public var _name : stdgo.GoString = "";
    public var _cache : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_ = (null : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_);
    public function new(?_unit:stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit, ?_toff:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, ?_name:stdgo.GoString, ?_cache:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_) {
        if (_unit != null) this._unit = _unit;
        if (_toff != null) this._toff = _toff;
        if (_name != null) this._name = _name;
        if (_cache != null) this._cache = _cache;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _addrsize():stdgo.GoInt return this._unit._addrsize();
    @:embedded
    public function _dwarf64():{ var _0 : Bool; var _1 : Bool; } return this._unit._dwarf64();
    @:embedded
    public function _version():stdgo.GoInt return this._unit._version();
    public function __copy__() {
        return new T_typeUnit(_unit, _toff, _name, _cache);
    }
}
