package stdgo.math.big;
@:structInit @:using(stdgo.math.big.Big.T_matrix_static_extension) abstract T_matrix(stdgo._internal.math.big.Big_T_matrix.T_matrix) from stdgo._internal.math.big.Big_T_matrix.T_matrix to stdgo._internal.math.big.Big_T_matrix.T_matrix {
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = (v : stdgo.GoInt);
        return v;
    }
    public var _m(get, set) : StdTypes.Int;
    function get__m():StdTypes.Int return this._m;
    function set__m(v:StdTypes.Int):StdTypes.Int {
        this._m = (v : stdgo.GoInt);
        return v;
    }
    public var _a(get, set) : Array<Rat>;
    function get__a():Array<Rat> return [for (i in this._a) i];
    function set__a(v:Array<Rat>):Array<Rat> {
        this._a = ([for (i in v) (i : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>>);
        return v;
    }
    public function new(?_n:StdTypes.Int, ?_m:StdTypes.Int, ?_a:Array<Rat>) this = new stdgo._internal.math.big.Big_T_matrix.T_matrix((_n : stdgo.GoInt), (_m : stdgo.GoInt), ([for (i in _a) (i : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
