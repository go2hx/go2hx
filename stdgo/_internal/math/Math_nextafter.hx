package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function nextafter(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _r = (0 : stdgo.GoFloat64);
        if ((stdgo._internal.math.Math_isNaN.isNaN(_x) || stdgo._internal.math.Math_isNaN.isNaN(_y) : Bool)) {
            _r = stdgo._internal.math.Math_naN.naN();
        } else if (_x == (_y)) {
            _r = _x;
        } else if (_x == (0 : stdgo.GoFloat64)) {
            _r = stdgo._internal.math.Math_copysign.copysign(stdgo._internal.math.Math_float64frombits.float64frombits((1i64 : stdgo.GoUInt64)), _y);
        } else if (((_y > _x : Bool)) == ((_x > (0 : stdgo.GoFloat64) : Bool))) {
            _r = stdgo._internal.math.Math_float64frombits.float64frombits((stdgo._internal.math.Math_float64bits.float64bits(_x) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        } else {
            _r = stdgo._internal.math.Math_float64frombits.float64frombits((stdgo._internal.math.Math_float64bits.float64bits(_x) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        };
        return _r;
    }
