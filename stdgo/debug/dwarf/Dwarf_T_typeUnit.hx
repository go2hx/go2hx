package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.T_typeUnit_static_extension) abstract T_typeUnit(stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit) from stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit to stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit {
    public var _unit(get, set) : T_unit;
    function get__unit():T_unit return this._unit;
    function set__unit(v:T_unit):T_unit {
        this._unit = v;
        return v;
    }
    public var _toff(get, set) : Offset;
    function get__toff():Offset return this._toff;
    function set__toff(v:Offset):Offset {
        this._toff = v;
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _cache(get, set) : Type_;
    function get__cache():Type_ return this._cache;
    function set__cache(v:Type_):Type_ {
        this._cache = v;
        return v;
    }
    public function new(?_unit:T_unit, ?_toff:Offset, ?_name:String, ?_cache:Type_) this = new stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit(_unit, _toff, (_name : stdgo.GoString), _cache);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
