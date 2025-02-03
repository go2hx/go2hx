package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.T_unit_static_extension) abstract T_unit(stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit) from stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit to stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit {
    public var _base(get, set) : Offset;
    function get__base():Offset return this._base;
    function set__base(v:Offset):Offset {
        this._base = v;
        return v;
    }
    public var _off(get, set) : Offset;
    function get__off():Offset return this._off;
    function set__off(v:Offset):Offset {
        this._off = v;
        return v;
    }
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _atable(get, set) : T_abbrevTable;
    function get__atable():T_abbrevTable return this._atable;
    function set__atable(v:T_abbrevTable):T_abbrevTable {
        this._atable = v;
        return v;
    }
    public var _asize(get, set) : StdTypes.Int;
    function get__asize():StdTypes.Int return this._asize;
    function set__asize(v:StdTypes.Int):StdTypes.Int {
        this._asize = (v : stdgo.GoInt);
        return v;
    }
    public var _vers(get, set) : StdTypes.Int;
    function get__vers():StdTypes.Int return this._vers;
    function set__vers(v:StdTypes.Int):StdTypes.Int {
        this._vers = (v : stdgo.GoInt);
        return v;
    }
    public var _utype(get, set) : std.UInt;
    function get__utype():std.UInt return this._utype;
    function set__utype(v:std.UInt):std.UInt {
        this._utype = (v : stdgo.GoUInt8);
        return v;
    }
    public var _is64(get, set) : Bool;
    function get__is64():Bool return this._is64;
    function set__is64(v:Bool):Bool {
        this._is64 = v;
        return v;
    }
    public function new(?_base:Offset, ?_off:Offset, ?_data:Array<std.UInt>, ?_atable:T_abbrevTable, ?_asize:StdTypes.Int, ?_vers:StdTypes.Int, ?_utype:std.UInt, ?_is64:Bool) this = new stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit(_base, _off, ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _atable, (_asize : stdgo.GoInt), (_vers : stdgo.GoInt), (_utype : stdgo.GoUInt8), _is64);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
