package stdgo._internal.image.jpeg;
@:structInit @:using(stdgo._internal.image.jpeg.Jpeg_t_bits_static_extension.T_bits_static_extension) class T_bits {
    public var _a : stdgo.GoUInt32 = 0;
    public var _m : stdgo.GoUInt32 = 0;
    public var _n : stdgo.GoInt32 = 0;
    public function new(?_a:stdgo.GoUInt32, ?_m:stdgo.GoUInt32, ?_n:stdgo.GoInt32) {
        if (_a != null) this._a = _a;
        if (_m != null) this._m = _m;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bits(_a, _m, _n);
    }
}
