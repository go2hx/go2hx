package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _asinh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if ((stdgo._internal.math.Math_isNaN.isNaN(_x) || stdgo._internal.math.Math_isInf.isInf(_x, (0 : stdgo.GoInt)) : Bool)) {
            return _x;
        };
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        var _temp:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        if ((_x > (2.68435456e+08 : stdgo.GoFloat64) : Bool)) {
            _temp = (stdgo._internal.math.Math_log.log(_x) + (0.6931471805599453 : stdgo.GoFloat64) : stdgo.GoFloat64);
        } else if ((_x > (2 : stdgo.GoFloat64) : Bool)) {
            _temp = stdgo._internal.math.Math_log.log((((2 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) + ((1 : stdgo.GoFloat64) / ((stdgo._internal.math.Math_sqrt.sqrt(((_x * _x : stdgo.GoFloat64) + (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) + _x : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64));
        } else if ((_x < (3.725290298461914e-09 : stdgo.GoFloat64) : Bool)) {
            _temp = _x;
        } else {
            _temp = stdgo._internal.math.Math_log1p.log1p((_x + ((_x * _x : stdgo.GoFloat64) / (((1 : stdgo.GoFloat64) + stdgo._internal.math.Math_sqrt.sqrt(((1 : stdgo.GoFloat64) + (_x * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64));
        };
        if (_sign) {
            _temp = -_temp;
        };
        return _temp;
    }
