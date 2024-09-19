package stdgo._internal.math;
function _sinh(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        var _temp:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        if ((_x > (21 : stdgo.GoFloat64) : Bool)) {
            _temp = (stdgo._internal.math.Math_exp.exp(_x) * (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64);
        } else if ((_x > (0.5 : stdgo.GoFloat64) : Bool)) {
            var _ex = (stdgo._internal.math.Math_exp.exp(_x) : stdgo.GoFloat64);
            _temp = (((_ex - ((1 : stdgo.GoFloat64) / _ex : stdgo.GoFloat64) : stdgo.GoFloat64)) * (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64);
        } else {
            var _sq = (_x * _x : stdgo.GoFloat64);
            _temp = (((((((((((-26.30563213397497 : stdgo.GoFloat64) * _sq : stdgo.GoFloat64) + (-2894.211355989564 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _sq : stdgo.GoFloat64) + (-89912.72022039509 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _sq : stdgo.GoFloat64) + (-630767.3640497717 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64);
            _temp = (_temp / ((((((((_sq + (-173.6789535582337 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _sq : stdgo.GoFloat64) + (15215.17378790019 : stdgo.GoFloat64) : stdgo.GoFloat64)) * _sq : stdgo.GoFloat64) + (-630767.3640497717 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        };
        if (_sign) {
            _temp = -_temp;
        };
        return _temp;
    }
