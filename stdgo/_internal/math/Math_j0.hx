package stdgo._internal.math;
function j0(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if (stdgo._internal.math.Math_isnan.isNaN(_x)) {
            return _x;
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt))) {
            return (0 : stdgo.GoFloat64);
        } else if (_x == (0 : stdgo.GoFloat64)) {
            return (1 : stdgo.GoFloat64);
        };
        _x = stdgo._internal.math.Math_abs.abs(_x);
        if ((_x >= (2 : stdgo.GoFloat64) : Bool)) {
            var __tmp__ = stdgo._internal.math.Math_sincos.sincos(_x), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
            var _ss = (_s - _c : stdgo.GoFloat64);
            var _cc = (_s + _c : stdgo.GoFloat64);
            if ((_x < (8.988465674311579e+307 : stdgo.GoFloat64) : Bool)) {
                var _z = (-stdgo._internal.math.Math_cos.cos((_x + _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                if (((_s * _c : stdgo.GoFloat64) < (0 : stdgo.GoFloat64) : Bool)) {
                    _cc = (_z / _ss : stdgo.GoFloat64);
                } else {
                    _ss = (_z / _cc : stdgo.GoFloat64);
                };
            };
            var _z:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            if ((_x > (6.80564733841877e+38 : stdgo.GoFloat64) : Bool)) {
                _z = (((0.5641895835477563 : stdgo.GoFloat64) * _cc : stdgo.GoFloat64) / stdgo._internal.math.Math_sqrt.sqrt(_x) : stdgo.GoFloat64);
            } else {
                var _u = (stdgo._internal.math.Math__pzero._pzero(_x) : stdgo.GoFloat64);
                var _v = (stdgo._internal.math.Math__qzero._qzero(_x) : stdgo.GoFloat64);
                _z = (((0.5641895835477563 : stdgo.GoFloat64) * (((_u * _cc : stdgo.GoFloat64) - (_v * _ss : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) / stdgo._internal.math.Math_sqrt.sqrt(_x) : stdgo.GoFloat64);
            };
            return _z;
        };
        if ((_x < (0.0001220703125 : stdgo.GoFloat64) : Bool)) {
            if ((_x < (7.450580596923828e-09 : stdgo.GoFloat64) : Bool)) {
                return (1 : stdgo.GoFloat64);
            };
            return ((1 : stdgo.GoFloat64) - (((0.25 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        var _z = (_x * _x : stdgo.GoFloat64);
        var _r = (_z * (((0.015624999999999995 : stdgo.GoFloat64) + (_z * (((-0.00018997929423885472 : stdgo.GoFloat64) + (_z * (((1.8295404953270067e-06 : stdgo.GoFloat64) + (_z * (-4.618326885321032e-09 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _s = ((1 : stdgo.GoFloat64) + (_z * (((0.015619102946489001 : stdgo.GoFloat64) + (_z * (((0.00011692678466333745 : stdgo.GoFloat64) + (_z * (((5.135465502073181e-07 : stdgo.GoFloat64) + (_z * (1.1661400333379e-09 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        if ((_x < (1 : stdgo.GoFloat64) : Bool)) {
            return ((1 : stdgo.GoFloat64) + (_z * (((-0.25 : stdgo.GoFloat64) + ((_r / _s : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        var _u = ((0.5 : stdgo.GoFloat64) * _x : stdgo.GoFloat64);
        return (((((1 : stdgo.GoFloat64) + _u : stdgo.GoFloat64)) * (((1 : stdgo.GoFloat64) - _u : stdgo.GoFloat64)) : stdgo.GoFloat64) + (_z * ((_r / _s : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
