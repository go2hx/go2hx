package stdgo._internal.slices;
@:structInit @:using(stdgo._internal.slices.Slices_t_intpair_static_extension.T_intPair_static_extension) class T_intPair {
    public var _a : stdgo.GoInt = 0;
    public var _b : stdgo.GoInt = 0;
    public function new(?_a:stdgo.GoInt, ?_b:stdgo.GoInt) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_intPair(_a, _b);
    }
}
