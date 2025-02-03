package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.Reader_static_extension) abstract Reader(stdgo._internal.debug.dwarf.Dwarf_Reader.Reader) from stdgo._internal.debug.dwarf.Dwarf_Reader.Reader to stdgo._internal.debug.dwarf.Dwarf_Reader.Reader {
    public var _b(get, set) : T_buf;
    function get__b():T_buf return this._b;
    function set__b(v:T_buf):T_buf {
        this._b = v;
        return v;
    }
    public var _d(get, set) : Data;
    function get__d():Data return this._d;
    function set__d(v:Data):Data {
        this._d = (v : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _unit(get, set) : StdTypes.Int;
    function get__unit():StdTypes.Int return this._unit;
    function set__unit(v:StdTypes.Int):StdTypes.Int {
        this._unit = (v : stdgo.GoInt);
        return v;
    }
    public var _lastUnit(get, set) : Bool;
    function get__lastUnit():Bool return this._lastUnit;
    function set__lastUnit(v:Bool):Bool {
        this._lastUnit = v;
        return v;
    }
    public var _lastChildren(get, set) : Bool;
    function get__lastChildren():Bool return this._lastChildren;
    function set__lastChildren(v:Bool):Bool {
        this._lastChildren = v;
        return v;
    }
    public var _lastSibling(get, set) : Offset;
    function get__lastSibling():Offset return this._lastSibling;
    function set__lastSibling(v:Offset):Offset {
        this._lastSibling = v;
        return v;
    }
    public var _cu(get, set) : Entry;
    function get__cu():Entry return this._cu;
    function set__cu(v:Entry):Entry {
        this._cu = (v : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
        return v;
    }
    public function new(?_b:T_buf, ?_d:Data, ?_err:stdgo.Error, ?_unit:StdTypes.Int, ?_lastUnit:Bool, ?_lastChildren:Bool, ?_lastSibling:Offset, ?_cu:Entry) this = new stdgo._internal.debug.dwarf.Dwarf_Reader.Reader(_b, (_d : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>), (_err : stdgo.Error), (_unit : stdgo.GoInt), _lastUnit, _lastChildren, _lastSibling, (_cu : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
