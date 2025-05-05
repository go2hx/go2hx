package stdgo._internal.math;
function _pow(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L56"
        if (((_y == (0 : stdgo.GoFloat64)) || (_x == (1 : stdgo.GoFloat64)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L58"
            return (1 : stdgo.GoFloat64);
        } else if (_y == ((1 : stdgo.GoFloat64))) {
            //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L60"
            return _x;
        } else if ((stdgo._internal.math.Math_isnan.isNaN(_x) || stdgo._internal.math.Math_isnan.isNaN(_y) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L62"
            return stdgo._internal.math.Math_nan.naN();
        } else if (_x == ((0 : stdgo.GoFloat64))) {
            //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L64"
            if ((_y < (0 : stdgo.GoFloat64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L66"
                if ((stdgo._internal.math.Math_signbit.signbit(_x) && stdgo._internal.math.Math__isoddint._isOddInt(_y) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L67"
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                };
                //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L69"
                return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
            } else if ((_y > (0 : stdgo.GoFloat64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L71"
                if ((stdgo._internal.math.Math_signbit.signbit(_x) && stdgo._internal.math.Math__isoddint._isOddInt(_y) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L72"
                    return _x;
                };
                //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L74"
                return (0 : stdgo.GoFloat64);
            };
        } else if (stdgo._internal.math.Math_isinf.isInf(_y, (0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L77"
            if (_x == ((-1 : stdgo.GoFloat64))) {
                //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L79"
                return (1 : stdgo.GoFloat64);
            } else if (((stdgo._internal.math.Math_abs.abs(_x) < (1 : stdgo.GoFloat64) : Bool)) == (stdgo._internal.math.Math_isinf.isInf(_y, (1 : stdgo.GoInt)))) {
                //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L81"
                return (0 : stdgo.GoFloat64);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L83"
                return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
            };
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L86"
            if (stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L87"
                return stdgo._internal.math.Math_pow.pow(((1 : stdgo.GoFloat64) / _x : stdgo.GoFloat64), -_y);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L89"
            if ((_y < (0 : stdgo.GoFloat64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L91"
                return (0 : stdgo.GoFloat64);
            } else if ((_y > (0 : stdgo.GoFloat64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L93"
                return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
            };
        } else if (_y == ((0.5 : stdgo.GoFloat64))) {
            //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L96"
            return stdgo._internal.math.Math_sqrt.sqrt(_x);
        } else if (_y == ((-0.5 : stdgo.GoFloat64))) {
            //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L98"
            return ((1 : stdgo.GoFloat64) / stdgo._internal.math.Math_sqrt.sqrt(_x) : stdgo.GoFloat64);
        };
        var __tmp__ = stdgo._internal.math.Math_modf.modf(stdgo._internal.math.Math_abs.abs(_y)), _yi:stdgo.GoFloat64 = __tmp__._0, _yf:stdgo.GoFloat64 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L102"
        if (((_yf != (0 : stdgo.GoFloat64)) && (_x < (0 : stdgo.GoFloat64) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L103"
            return stdgo._internal.math.Math_nan.naN();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L105"
        if ((_yi >= (9.223372036854776e+18 : stdgo.GoFloat64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L108"
            if (_x == ((-1 : stdgo.GoFloat64))) {
                //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L110"
                return (1 : stdgo.GoFloat64);
            } else if (((stdgo._internal.math.Math_abs.abs(_x) < (1 : stdgo.GoFloat64) : Bool)) == ((_y > (0 : stdgo.GoFloat64) : Bool))) {
                //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L112"
                return (0 : stdgo.GoFloat64);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L114"
                return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
            };
        };
        var _a1 = (1 : stdgo.GoFloat64);
        var _ae = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L123"
        if (_yf != ((0 : stdgo.GoFloat64))) {
            //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L124"
            if ((_yf > (0.5 : stdgo.GoFloat64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L125"
                _yf--;
                //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L126"
                _yi++;
            };
            _a1 = stdgo._internal.math.Math_exp.exp((_yf * stdgo._internal.math.Math_log.log(_x) : stdgo.GoFloat64));
        };
        var __tmp__ = stdgo._internal.math.Math_frexp.frexp(_x), _x1:stdgo.GoFloat64 = __tmp__._0, _xe:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L136"
        {
            var _i = (_yi : stdgo.GoInt64);
            while (_i != ((0i64 : stdgo.GoInt64))) {
                //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L137"
                if (((_xe < (-4096 : stdgo.GoInt) : Bool) || ((4096 : stdgo.GoInt) < _xe : Bool) : Bool)) {
                    _ae = (_ae + (_xe) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L144"
                    break;
                };
//"file:///home/runner/.go/go1.21.3/src/math/pow.go#L146"
                if ((_i & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((1i64 : stdgo.GoInt64))) {
                    _a1 = (_a1 * (_x1) : stdgo.GoFloat64);
                    _ae = (_ae + (_xe) : stdgo.GoInt);
                };
_x1 = (_x1 * (_x1) : stdgo.GoFloat64);
_xe = (_xe << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/math/pow.go#L152"
                if ((_x1 < (0.5 : stdgo.GoFloat64) : Bool)) {
                    _x1 = (_x1 + (_x1) : stdgo.GoFloat64);
                    //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L154"
                    _xe--;
                };
                _i = (_i >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L161"
        if ((_y < (0 : stdgo.GoFloat64) : Bool)) {
            _a1 = ((1 : stdgo.GoFloat64) / _a1 : stdgo.GoFloat64);
            _ae = -_ae;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/pow.go#L165"
        return stdgo._internal.math.Math_ldexp.ldexp(_a1, _ae);
    }
