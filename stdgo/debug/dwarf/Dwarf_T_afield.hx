package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.T_afield_static_extension) abstract T_afield(stdgo._internal.debug.dwarf.Dwarf_T_afield.T_afield) from stdgo._internal.debug.dwarf.Dwarf_T_afield.T_afield to stdgo._internal.debug.dwarf.Dwarf_T_afield.T_afield {
    public var _attr(get, set) : Attr;
    function get__attr():Attr return this._attr;
    function set__attr(v:Attr):Attr {
        this._attr = v;
        return v;
    }
    public var _fmt(get, set) : T_format;
    function get__fmt():T_format return this._fmt;
    function set__fmt(v:T_format):T_format {
        this._fmt = v;
        return v;
    }
    public var _class(get, set) : Class_;
    function get__class():Class_ return this._class;
    function set__class(v:Class_):Class_ {
        this._class = v;
        return v;
    }
    public var _val(get, set) : haxe.Int64;
    function get__val():haxe.Int64 return this._val;
    function set__val(v:haxe.Int64):haxe.Int64 {
        this._val = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_attr:Attr, ?_fmt:T_format, ?_class:Class_, ?_val:haxe.Int64) this = new stdgo._internal.debug.dwarf.Dwarf_T_afield.T_afield(_attr, _fmt, _class, (_val : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
