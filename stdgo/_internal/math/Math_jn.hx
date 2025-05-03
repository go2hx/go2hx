package stdgo._internal.math;
function jn(_n:stdgo.GoInt, _x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L60"
        if (stdgo._internal.math.Math_isnan.isNaN(_x)) {
            //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L62"
            return _x;
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L64"
            return (0 : stdgo.GoFloat64);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L69"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L70"
            return stdgo._internal.math.Math_j0.j0(_x);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L72"
        if (_x == ((0 : stdgo.GoFloat64))) {
            //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L73"
            return (0 : stdgo.GoFloat64);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L75"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            {
                final __tmp__0 = -_n;
                final __tmp__1 = -_x;
                _n = @:binopAssign __tmp__0;
                _x = @:binopAssign __tmp__1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L78"
        if (_n == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L79"
            return stdgo._internal.math.Math_j1.j1(_x);
        };
        var _sign = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L82"
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L84"
            if ((_n & (1 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
                _sign = true;
            };
        };
        var _b:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L89"
        if (((_n : stdgo.GoFloat64) <= _x : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L91"
            if ((_x >= (8.148143905337944e+90 : stdgo.GoFloat64) : Bool)) {
                var _temp:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
                //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L107"
                {
                    var __tmp__ = stdgo._internal.math.Math_sincos.sincos(_x), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
                    {
                        final __value__ = (_n & (3 : stdgo.GoInt) : stdgo.GoInt);
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            _temp = (_c + _s : stdgo.GoFloat64);
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            _temp = (-_c + _s : stdgo.GoFloat64);
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            _temp = (-_c - _s : stdgo.GoFloat64);
                        } else if (__value__ == ((3 : stdgo.GoInt))) {
                            _temp = (_c - _s : stdgo.GoFloat64);
                        };
                    };
                };
                _b = (((0.5641895835477563 : stdgo.GoFloat64) * _temp : stdgo.GoFloat64) / stdgo._internal.math.Math_sqrt.sqrt(_x) : stdgo.GoFloat64);
            } else {
                _b = stdgo._internal.math.Math_j1.j1(_x);
                //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L120"
                {
                    var __0 = (1 : stdgo.GoInt), __1 = (stdgo._internal.math.Math_j0.j0(_x) : stdgo.GoFloat64);
var _a = __1, _i = __0;
                    while ((_i < _n : Bool)) {
                        {
                            final __tmp__0 = _b;
                            final __tmp__1 = ((_b * ((((_i + _i : stdgo.GoInt) : stdgo.GoFloat64) / _x : stdgo.GoFloat64)) : stdgo.GoFloat64) - _a : stdgo.GoFloat64);
                            _a = @:binopAssign __tmp__0;
                            _b = @:binopAssign __tmp__1;
                        };
                        _i++;
                    };
                };
            };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L125"
            if ((_x < (1.862645149230957e-09 : stdgo.GoFloat64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L129"
                if ((_n > (33 : stdgo.GoInt) : Bool)) {
                    _b = (0 : stdgo.GoFloat64);
                } else {
                    var _temp = (_x * (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _b = _temp;
                    var _a = (1 : stdgo.GoFloat64);
                    //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L135"
                    {
                        var _i = (2 : stdgo.GoInt);
                        while ((_i <= _n : Bool)) {
                            _a = (_a * ((_i : stdgo.GoFloat64)) : stdgo.GoFloat64);
_b = (_b * (_temp) : stdgo.GoFloat64);
                            _i++;
                        };
                    };
                    _b = (_b / (_a) : stdgo.GoFloat64);
                };
            } else {
                var _w = (((_n + _n : stdgo.GoInt) : stdgo.GoFloat64) / _x : stdgo.GoFloat64);
                var _h = ((2 : stdgo.GoFloat64) / _x : stdgo.GoFloat64);
                var _q0 = (_w : stdgo.GoFloat64);
                var _z = (_w + _h : stdgo.GoFloat64);
                var _q1 = ((_w * _z : stdgo.GoFloat64) - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                var _k = (1 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L177"
                while ((_q1 < (1e+09 : stdgo.GoFloat64) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L178"
                    _k++;
                    _z = (_z + (_h) : stdgo.GoFloat64);
                    {
                        final __tmp__0 = _q1;
                        final __tmp__1 = ((_z * _q1 : stdgo.GoFloat64) - _q0 : stdgo.GoFloat64);
                        _q0 = @:binopAssign __tmp__0;
                        _q1 = @:binopAssign __tmp__1;
                    };
                };
                var _m = (_n + _n : stdgo.GoInt);
                var _t = (0 : stdgo.GoFloat64);
                //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L184"
                {
                    var _i = ((2 : stdgo.GoInt) * ((_n + _k : stdgo.GoInt)) : stdgo.GoInt);
                    while ((_i >= _m : Bool)) {
                        _t = ((1 : stdgo.GoFloat64) / ((((_i : stdgo.GoFloat64) / _x : stdgo.GoFloat64) - _t : stdgo.GoFloat64)) : stdgo.GoFloat64);
                        _i = (_i - ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
                var _a = (_t : stdgo.GoFloat64);
                _b = (1 : stdgo.GoFloat64);
                var _tmp = (_n : stdgo.GoFloat64);
                var _v = ((2 : stdgo.GoFloat64) / _x : stdgo.GoFloat64);
                _tmp = (_tmp * stdgo._internal.math.Math_log.log(stdgo._internal.math.Math_abs.abs((_v * _tmp : stdgo.GoFloat64))) : stdgo.GoFloat64);
                //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L200"
                if ((_tmp < (709.782712893384 : stdgo.GoFloat64) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L201"
                    {
                        var _i = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_i > (0 : stdgo.GoInt) : Bool)) {
                            var _di = ((_i + _i : stdgo.GoInt) : stdgo.GoFloat64);
{
                                final __tmp__0 = _b;
                                final __tmp__1 = (((_b * _di : stdgo.GoFloat64) / _x : stdgo.GoFloat64) - _a : stdgo.GoFloat64);
                                _a = @:binopAssign __tmp__0;
                                _b = @:binopAssign __tmp__1;
                            };
                            _i--;
                        };
                    };
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L206"
                    {
                        var _i = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_i > (0 : stdgo.GoInt) : Bool)) {
                            var _di = ((_i + _i : stdgo.GoInt) : stdgo.GoFloat64);
{
                                final __tmp__0 = _b;
                                final __tmp__1 = (((_b * _di : stdgo.GoFloat64) / _x : stdgo.GoFloat64) - _a : stdgo.GoFloat64);
                                _a = @:binopAssign __tmp__0;
                                _b = @:binopAssign __tmp__1;
                            };
//"file:///home/runner/.go/go1.21.3/src/math/jn.go#L210"
                            if ((_b > (1e+100 : stdgo.GoFloat64) : Bool)) {
                                _a = (_a / (_b) : stdgo.GoFloat64);
                                _t = (_t / (_b) : stdgo.GoFloat64);
                                _b = (1 : stdgo.GoFloat64);
                            };
                            _i--;
                        };
                    };
                };
                _b = ((_t * stdgo._internal.math.Math_j0.j0(_x) : stdgo.GoFloat64) / _b : stdgo.GoFloat64);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L220"
        if (_sign) {
            //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L221"
            return -_b;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L223"
        return _b;
    }
