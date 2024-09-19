package _internal.internal.fmtsort_test;
@:structInit class T_toy {
    public var a : stdgo.GoInt = 0;
    public var _b : stdgo.GoInt = 0;
    public function new(?a:stdgo.GoInt, ?_b:stdgo.GoInt) {
        if (a != null) this.a = a;
        if (_b != null) this._b = _b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_toy(a, _b);
    }
}
