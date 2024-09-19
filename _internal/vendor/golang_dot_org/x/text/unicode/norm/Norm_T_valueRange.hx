package _internal.vendor.golang_dot_org.x.text.unicode.norm;
@:structInit class T_valueRange {
    public var _value : stdgo.GoUInt16 = 0;
    public var _lo : stdgo.GoUInt8 = 0;
    public var _hi : stdgo.GoUInt8 = 0;
    public function new(?_value:stdgo.GoUInt16, ?_lo:stdgo.GoUInt8, ?_hi:stdgo.GoUInt8) {
        if (_value != null) this._value = _value;
        if (_lo != null) this._lo = _lo;
        if (_hi != null) this._hi = _hi;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_valueRange(_value, _lo, _hi);
    }
}
