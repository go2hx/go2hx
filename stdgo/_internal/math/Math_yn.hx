package stdgo._internal.math;
function yn(_n:stdgo.GoInt, _x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L238"
        if (((_x < (0 : stdgo.GoFloat64) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L240"
            return stdgo._internal.math.Math_nan.naN();
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L242"
            return (0 : stdgo.GoFloat64);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L245"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L246"
            return stdgo._internal.math.Math_y0.y0(_x);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L248"
        if (_x == ((0 : stdgo.GoFloat64))) {
            //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L249"
            if (((_n < (0 : stdgo.GoInt) : Bool) && ((_n & (1 : stdgo.GoInt) : stdgo.GoInt) == (1 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L250"
                return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L252"
            return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
        };
        var _sign = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L255"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = -_n;
            //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L257"
            if ((_n & (1 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
                _sign = true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L261"
        if (_n == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L262"
            if (_sign) {
                //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L263"
                return -stdgo._internal.math.Math_y1.y1(_x);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L265"
            return stdgo._internal.math.Math_y1.y1(_x);
        };
        var _b:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L268"
        if ((_x >= (8.148143905337944e+90 : stdgo.GoFloat64) : Bool)) {
            var _temp:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L283"
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
            //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L298"
            {
                var _i = (1 : stdgo.GoInt);
                while (((_i < _n : Bool) && !stdgo._internal.math.Math_isinf.isInf(_b, (-1 : stdgo.GoInt)) : Bool)) {
                    {
                        final __tmp__0 = _b;
                        final __tmp__1 = ((((((_i + _i : stdgo.GoInt) : stdgo.GoFloat64) / _x : stdgo.GoFloat64)) * _b : stdgo.GoFloat64) - _a : stdgo.GoFloat64);
                        _a = @:binopAssign __tmp__0;
                        _b = @:binopAssign __tmp__1;
                    };
                    _i++;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L302"
        if (_sign) {
            //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L303"
            return -_b;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/jn.go#L305"
        return _b;
    }
