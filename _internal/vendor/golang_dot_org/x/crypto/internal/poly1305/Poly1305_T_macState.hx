package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
@:structInit class T_macState {
    public var _h : stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoUInt64)]);
    public var _r : stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt64)]);
    public var _s : stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt64)]);
    public function new(?_h:stdgo.GoArray<stdgo.GoUInt64>, ?_r:stdgo.GoArray<stdgo.GoUInt64>, ?_s:stdgo.GoArray<stdgo.GoUInt64>) {
        if (_h != null) this._h = _h;
        if (_r != null) this._r = _r;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_macState(_h, _r, _s);
    }
}
