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
    public var _addrsize(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get__addrsize():() -> stdgo.GoInt return @:check3 this._unit._addrsize;
    public var _dwarf64(get, never) : () -> { var _0 : Bool; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get__dwarf64():() -> { var _0 : Bool; var _1 : Bool; } return @:check3 this._unit._dwarf64;
    public var _version(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get__version():() -> stdgo.GoInt return @:check3 this._unit._version;
    public function __copy__() {
        return new T_typeUnit(_unit, _toff, _name, _cache);
    }
}
