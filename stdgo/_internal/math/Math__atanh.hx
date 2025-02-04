package stdgo._internal.math;
function _atanh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if ((((_x < (-1 : stdgo.GoFloat64) : Bool) || (_x > (1 : stdgo.GoFloat64) : Bool) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
            return stdgo._internal.math.Math_nan.naN();
        } else if (_x == (1 : stdgo.GoFloat64)) {
            return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
        } else if (_x == (-1 : stdgo.GoFloat64)) {
            return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
        };
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        var _temp:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        if ((_x < (3.725290298461914e-09 : stdgo.GoFloat64) : Bool)) {
            _temp = _x;
        } else if ((_x < (0.5 : stdgo.GoFloat64) : Bool)) {
            _temp = (_x + _x : stdgo.GoFloat64);
            _temp = ((0.5 : stdgo.GoFloat64) * stdgo._internal.math.Math_log1p.log1p((_temp + ((_temp * _x : stdgo.GoFloat64) / (((1 : stdgo.GoFloat64) - _x : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        } else {
            _temp = ((0.5 : stdgo.GoFloat64) * stdgo._internal.math.Math_log1p.log1p((((_x + _x : stdgo.GoFloat64)) / (((1 : stdgo.GoFloat64) - _x : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        };
        if (_sign) {
            _temp = -_temp;
        };
        return _temp;
    }
