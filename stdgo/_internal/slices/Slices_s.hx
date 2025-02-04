package stdgo._internal.slices;
@:structInit @:using(stdgo._internal.slices.Slices_s_static_extension.S_static_extension) class S {
    public var _a : stdgo.GoInt = 0;
    public var _b : stdgo.GoString = "";
    public function new(?_a:stdgo.GoInt, ?_b:stdgo.GoString) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S(_a, _b);
    }
}
