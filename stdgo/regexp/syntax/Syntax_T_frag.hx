package stdgo.regexp.syntax;
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_frag_static_extension) abstract T_frag(stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag) from stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag to stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag {
    public var _i(get, set) : std.UInt;
    function get__i():std.UInt return this._i;
    function set__i(v:std.UInt):std.UInt {
        this._i = (v : stdgo.GoUInt32);
        return v;
    }
    public var _out(get, set) : T_patchList;
    function get__out():T_patchList return this._out;
    function set__out(v:T_patchList):T_patchList {
        this._out = v;
        return v;
    }
    public var _nullable(get, set) : Bool;
    function get__nullable():Bool return this._nullable;
    function set__nullable(v:Bool):Bool {
        this._nullable = v;
        return v;
    }
    public function new(?_i:std.UInt, ?_out:T_patchList, ?_nullable:Bool) this = new stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag((_i : stdgo.GoUInt32), _out, _nullable);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
