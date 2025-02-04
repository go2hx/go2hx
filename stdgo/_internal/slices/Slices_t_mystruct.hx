package stdgo._internal.slices;
@:structInit @:using(stdgo._internal.slices.Slices_t_mystruct_static_extension.T_myStruct_static_extension) class T_myStruct {
    public var _a : stdgo.GoString = "";
    public var _b : stdgo.GoString = "";
    public var _c : stdgo.GoString = "";
    public var _d : stdgo.GoString = "";
    public var _n : stdgo.GoInt = 0;
    public function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_c:stdgo.GoString, ?_d:stdgo.GoString, ?_n:stdgo.GoInt) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_c != null) this._c = _c;
        if (_d != null) this._d = _d;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_myStruct(_a, _b, _c, _d, _n);
    }
}
