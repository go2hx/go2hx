package stdgo.slices;
@:structInit @:using(stdgo.slices.Slices.T_intPair_static_extension) abstract T_intPair(stdgo._internal.slices.Slices_T_intPair.T_intPair) from stdgo._internal.slices.Slices_T_intPair.T_intPair to stdgo._internal.slices.Slices_T_intPair.T_intPair {
    public var _a(get, set) : StdTypes.Int;
    function get__a():StdTypes.Int return this._a;
    function set__a(v:StdTypes.Int):StdTypes.Int {
        this._a = (v : stdgo.GoInt);
        return v;
    }
    public var _b(get, set) : StdTypes.Int;
    function get__b():StdTypes.Int return this._b;
    function set__b(v:StdTypes.Int):StdTypes.Int {
        this._b = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_a:StdTypes.Int, ?_b:StdTypes.Int) this = new stdgo._internal.slices.Slices_T_intPair.T_intPair((_a : stdgo.GoInt), (_b : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
