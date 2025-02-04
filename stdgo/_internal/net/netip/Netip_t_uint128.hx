package stdgo._internal.net.netip;
@:structInit @:using(stdgo._internal.net.netip.Netip_t_uint128_static_extension.T_uint128_static_extension) class T_uint128 {
    public var _hi : stdgo.GoUInt64 = 0;
    public var _lo : stdgo.GoUInt64 = 0;
    public function new(?_hi:stdgo.GoUInt64, ?_lo:stdgo.GoUInt64) {
        if (_hi != null) this._hi = _hi;
        if (_lo != null) this._lo = _lo;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_uint128(_hi, _lo);
    }
}
