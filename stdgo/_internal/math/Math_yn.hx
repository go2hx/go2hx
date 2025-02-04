package stdgo._internal.math;
function yn(_n:stdgo.GoInt, _x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if (((_x < (0 : stdgo.GoFloat64) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
            return stdgo._internal.math.Math_nan.naN();
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
            return (0 : stdgo.GoFloat64);
        };
        if (_n == ((0 : stdgo.GoInt))) {
            return stdgo._internal.math.Math_y0.y0(_x);
        };
        if (_x == (0 : stdgo.GoFloat64)) {
            if (((_n < (0 : stdgo.GoInt) : Bool) && ((_n & (1 : stdgo.GoInt) : stdgo.GoInt) == (1 : stdgo.GoInt)) : Bool)) {
                return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
            };
            return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
        };
        var _sign = (false : Bool);
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = -_n;
            if ((_n & (1 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
                _sign = true;
            };
        };
        if (_n == ((1 : stdgo.GoInt))) {
            if (_sign) {
                return -stdgo._internal.math.Math_y1.y1(_x);
            };
            return stdgo._internal.math.Math_y1.y1(_x);
        };
        var _b:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        if ((_x >= (8.148143905337944e+90 : stdgo.GoFloat64) : Bool)) {
            var _temp:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            {
                var __tmp__ = stdgo._internal.math.Math_sincos.sincos(_x), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
                {
                    final __value__ = (_n & (3 : stdgo.GoInt) : stdgo.GoInt);
                    if (__value__ == ((0 : stdgo.GoInt))) {
                        _temp = (_s - _c : stdgo.GoFloat64);
                    } else if (__value__ == ((1 : stdgo.GoInt))) {
                        _temp = (-_s - _c : stdgo.GoFloat64);
                    } else if (__value__ == ((2 : stdgo.GoInt))) {
                        _temp = (-_s + _c : stdgo.GoFloat64);
                    } else if (__value__ == ((3 : stdgo.GoInt))) {
                        _temp = (_s + _c : stdgo.GoFloat64);
                    };
                };
            };
            _b = (((0.5641895835477563 : stdgo.GoFloat64) * _temp : stdgo.GoFloat64) / stdgo._internal.math.Math_sqrt.sqrt(_x) : stdgo.GoFloat64);
        } else {
            var _a = (stdgo._internal.math.Math_y0.y0(_x) : stdgo.GoFloat64);
            _b = stdgo._internal.math.Math_y1.y1(_x);
            {
                var _i = (1 : stdgo.GoInt);
                while (((_i < _n : Bool) && !stdgo._internal.math.Math_isinf.isInf(_b, (-1 : stdgo.GoInt)) : Bool)) {
                    {
                        final __tmp__0 = _b;
                        final __tmp__1 = ((((((_i + _i : stdgo.GoInt) : stdgo.GoFloat64) / _x : stdgo.GoFloat64)) * _b : stdgo.GoFloat64) - _a : stdgo.GoFloat64);
                        _a = __tmp__0;
                        _b = __tmp__1;
                    };
                    _i++;
                };
            };
        };
        if (_sign) {
            return -_b;
        };
        return _b;
    }
