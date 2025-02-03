package stdgo.debug.gosym;
@:structInit @:using(stdgo.debug.gosym.Gosym.T_sym_static_extension) abstract T_sym(stdgo._internal.debug.gosym.Gosym_T_sym.T_sym) from stdgo._internal.debug.gosym.Gosym_T_sym.T_sym to stdgo._internal.debug.gosym.Gosym_T_sym.T_sym {
    public var _value(get, set) : haxe.UInt64;
    function get__value():haxe.UInt64 return this._value;
    function set__value(v:haxe.UInt64):haxe.UInt64 {
        this._value = (v : stdgo.GoUInt64);
        return v;
    }
    public var _gotype(get, set) : haxe.UInt64;
    function get__gotype():haxe.UInt64 return this._gotype;
    function set__gotype(v:haxe.UInt64):haxe.UInt64 {
        this._gotype = (v : stdgo.GoUInt64);
        return v;
    }
    public var _typ(get, set) : std.UInt;
    function get__typ():std.UInt return this._typ;
    function set__typ(v:std.UInt):std.UInt {
        this._typ = (v : stdgo.GoUInt8);
        return v;
    }
    public var _name(get, set) : Array<std.UInt>;
    function get__name():Array<std.UInt> return [for (i in this._name) i];
    function set__name(v:Array<std.UInt>):Array<std.UInt> {
        this._name = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_value:haxe.UInt64, ?_gotype:haxe.UInt64, ?_typ:std.UInt, ?_name:Array<std.UInt>) this = new stdgo._internal.debug.gosym.Gosym_T_sym.T_sym((_value : stdgo.GoUInt64), (_gotype : stdgo.GoUInt64), (_typ : stdgo.GoUInt8), ([for (i in _name) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
