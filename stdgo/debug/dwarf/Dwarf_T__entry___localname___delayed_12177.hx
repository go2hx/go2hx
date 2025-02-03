package stdgo.debug.dwarf;
@:structInit abstract T__entry___localname___delayed_12177(stdgo._internal.debug.dwarf.Dwarf_T__entry___localname___delayed_12177.T__entry___localname___delayed_12177) from stdgo._internal.debug.dwarf.Dwarf_T__entry___localname___delayed_12177.T__entry___localname___delayed_12177 to stdgo._internal.debug.dwarf.Dwarf_T__entry___localname___delayed_12177.T__entry___localname___delayed_12177 {
    public var _idx(get, set) : StdTypes.Int;
    function get__idx():StdTypes.Int return this._idx;
    function set__idx(v:StdTypes.Int):StdTypes.Int {
        this._idx = (v : stdgo.GoInt);
        return v;
    }
    public var _off(get, set) : haxe.UInt64;
    function get__off():haxe.UInt64 return this._off;
    function set__off(v:haxe.UInt64):haxe.UInt64 {
        this._off = (v : stdgo.GoUInt64);
        return v;
    }
    public var _fmt(get, set) : T_format;
    function get__fmt():T_format return this._fmt;
    function set__fmt(v:T_format):T_format {
        this._fmt = v;
        return v;
    }
    public function new(?_idx:StdTypes.Int, ?_off:haxe.UInt64, ?_fmt:T_format) this = new stdgo._internal.debug.dwarf.Dwarf_T__entry___localname___delayed_12177.T__entry___localname___delayed_12177((_idx : stdgo.GoInt), (_off : stdgo.GoUInt64), _fmt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
