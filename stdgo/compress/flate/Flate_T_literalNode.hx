package stdgo.compress.flate;
@:structInit @:using(stdgo.compress.flate.Flate.T_literalNode_static_extension) abstract T_literalNode(stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode) from stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode to stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode {
    public var _literal(get, set) : std.UInt;
    function get__literal():std.UInt return this._literal;
    function set__literal(v:std.UInt):std.UInt {
        this._literal = (v : stdgo.GoUInt16);
        return v;
    }
    public var _freq(get, set) : StdTypes.Int;
    function get__freq():StdTypes.Int return this._freq;
    function set__freq(v:StdTypes.Int):StdTypes.Int {
        this._freq = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?_literal:std.UInt, ?_freq:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode((_literal : stdgo.GoUInt16), (_freq : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
