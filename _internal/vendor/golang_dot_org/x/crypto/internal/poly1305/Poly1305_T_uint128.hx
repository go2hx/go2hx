package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
@:structInit class T_uint128 {
    public var _lo : stdgo.GoUInt64 = 0;
    public var _hi : stdgo.GoUInt64 = 0;
    public function new(?_lo:stdgo.GoUInt64, ?_hi:stdgo.GoUInt64) {
        if (_lo != null) this._lo = _lo;
        if (_hi != null) this._hi = _hi;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_uint128(_lo, _hi);
    }
}
