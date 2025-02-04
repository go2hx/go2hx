package stdgo._internal.math;
function j1(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if (stdgo._internal.math.Math_isnan.isNaN(_x)) {
            return _x;
        } else if ((stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt)) || (_x == (0 : stdgo.GoFloat64)) : Bool)) {
            return (0 : stdgo.GoFloat64);
        };
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
        };
        if ((_x >= (2 : stdgo.GoFloat64) : Bool)) {
            var __tmp__ = stdgo._internal.math.Math_sincos.sincos(_x), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
            var _ss = (-_s - _c : stdgo.GoFloat64);
            var _cc = (_s - _c : stdgo.GoFloat64);
            if ((_x < (8.988465674311579e+307 : stdgo.GoFloat64) : Bool)) {
                var _z = (stdgo._internal.math.Math_cos.cos((_x + _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                if (((_s * _c : stdgo.GoFloat64) > (0 : stdgo.GoFloat64) : Bool)) {
                    _cc = (_z / _ss : stdgo.GoFloat64);
                } else {
                    _ss = (_z / _cc : stdgo.GoFloat64);
                };
            };
            var _z:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            if ((_x > (6.80564733841877e+38 : stdgo.GoFloat64) : Bool)) {
                _z = (((0.5641895835477563 : stdgo.GoFloat64) * _cc : stdgo.GoFloat64) / stdgo._internal.math.Math_sqrt.sqrt(_x) : stdgo.GoFloat64);
            } else {
                var _u = (stdgo._internal.math.Math__pone._pone(_x) : stdgo.GoFloat64);
                var _v = (stdgo._internal.math.Math__qone._qone(_x) : stdgo.GoFloat64);
                _z = (((0.5641895835477563 : stdgo.GoFloat64) * (((_u * _cc : stdgo.GoFloat64) - (_v * _ss : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) / stdgo._internal.math.Math_sqrt.sqrt(_x) : stdgo.GoFloat64);
            };
            if (_sign) {
                return -_z;
            };
            return _z;
        };
        if ((_x < (7.450580596923828e-09 : stdgo.GoFloat64) : Bool)) {
            return ((0.5 : stdgo.GoFloat64) * _x : stdgo.GoFloat64);
        };
        var _z = (_x * _x : stdgo.GoFloat64);
        var _r = (_z * (((-0.0625 : stdgo.GoFloat64) + (_z * (((0.001407056669551897 : stdgo.GoFloat64) + (_z * (((-1.599556310840356e-05 : stdgo.GoFloat64) + (_z * (4.9672799960958445e-08 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _s = ((1 : stdgo.GoFloat64) + (_z * (((0.019153759953836346 : stdgo.GoFloat64) + (_z * (((0.00018594678558863092 : stdgo.GoFloat64) + (_z * (((1.1771846404262368e-06 : stdgo.GoFloat64) + (_z * (((5.0463625707621704e-09 : stdgo.GoFloat64) + (_z * (1.2354227442613791e-11 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        _r = (_r * (_x) : stdgo.GoFloat64);
        _z = (((0.5 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) + (_r / _s : stdgo.GoFloat64) : stdgo.GoFloat64);
        if (_sign) {
            return -_z;
        };
        return _z;
    }
