package stdgo._internal.math.big;
@:structInit @:using(stdgo._internal.math.big.Big_t_matrix_static_extension.T_matrix_static_extension) class T_matrix {
    public var _n : stdgo.GoInt = 0;
    public var _m : stdgo.GoInt = 0;
    public var _a : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>>);
    public function new(?_n:stdgo.GoInt, ?_m:stdgo.GoInt, ?_a:stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>>) {
        if (_n != null) this._n = _n;
        if (_m != null) this._m = _m;
        if (_a != null) this._a = _a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_matrix(_n, _m, _a);
    }
}
