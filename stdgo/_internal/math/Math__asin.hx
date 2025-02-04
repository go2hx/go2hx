package stdgo._internal.math;
function _asin(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (_x == (0 : stdgo.GoFloat64)) {
            return _x;
        };
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        if ((_x > (1 : stdgo.GoFloat64) : Bool)) {
            return stdgo._internal.math.Math_nan.naN();
        };
        var _temp = (stdgo._internal.math.Math_sqrt.sqrt(((1 : stdgo.GoFloat64) - (_x * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        if ((_x > (0.7 : stdgo.GoFloat64) : Bool)) {
            _temp = ((1.5707963267948966 : stdgo.GoFloat64) - stdgo._internal.math.Math__satan._satan((_temp / _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
        } else {
            _temp = stdgo._internal.math.Math__satan._satan((_x / _temp : stdgo.GoFloat64));
        };
        if (_sign) {
            _temp = -_temp;
        };
        return _temp;
    }
