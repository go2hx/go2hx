package stdgo._internal.math;
function _pow(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (((_y == (0 : stdgo.GoFloat64)) || (_x == (1 : stdgo.GoFloat64)) : Bool)) {
            return (1 : stdgo.GoFloat64);
        } else if (_y == (1 : stdgo.GoFloat64)) {
            return _x;
        } else if ((stdgo._internal.math.Math_isnan.isNaN(_x) || stdgo._internal.math.Math_isnan.isNaN(_y) : Bool)) {
            return stdgo._internal.math.Math_nan.naN();
        } else if (_x == (0 : stdgo.GoFloat64)) {
            if ((_y < (0 : stdgo.GoFloat64) : Bool)) {
                if ((stdgo._internal.math.Math_signbit.signbit(_x) && stdgo._internal.math.Math__isoddint._isOddInt(_y) : Bool)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                };
                return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
            } else if ((_y > (0 : stdgo.GoFloat64) : Bool)) {
                if ((stdgo._internal.math.Math_signbit.signbit(_x) && stdgo._internal.math.Math__isoddint._isOddInt(_y) : Bool)) {
                    return _x;
                };
                return (0 : stdgo.GoFloat64);
            };
        } else if (stdgo._internal.math.Math_isinf.isInf(_y, (0 : stdgo.GoInt))) {
            if (_x == (-1 : stdgo.GoFloat64)) {
                return (1 : stdgo.GoFloat64);
            } else if (((stdgo._internal.math.Math_abs.abs(_x) < (1 : stdgo.GoFloat64) : Bool)) == (stdgo._internal.math.Math_isinf.isInf(_y, (1 : stdgo.GoInt)))) {
                return (0 : stdgo.GoFloat64);
            } else {
                return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
            };
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt))) {
            if (stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt))) {
                return stdgo._internal.math.Math_pow.pow(((1 : stdgo.GoFloat64) / _x : stdgo.GoFloat64), -_y);
            };
            if ((_y < (0 : stdgo.GoFloat64) : Bool)) {
                return (0 : stdgo.GoFloat64);
            } else if ((_y > (0 : stdgo.GoFloat64) : Bool)) {
                return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
            };
        } else if (_y == (0.5 : stdgo.GoFloat64)) {
            return stdgo._internal.math.Math_sqrt.sqrt(_x);
        } else if (_y == (-0.5 : stdgo.GoFloat64)) {
            return ((1 : stdgo.GoFloat64) / stdgo._internal.math.Math_sqrt.sqrt(_x) : stdgo.GoFloat64);
        };
        var __tmp__ = stdgo._internal.math.Math_modf.modf(stdgo._internal.math.Math_abs.abs(_y)), _yi:stdgo.GoFloat64 = __tmp__._0, _yf:stdgo.GoFloat64 = __tmp__._1;
        if (((_yf != (0 : stdgo.GoFloat64)) && (_x < (0 : stdgo.GoFloat64) : Bool) : Bool)) {
            return stdgo._internal.math.Math_nan.naN();
        };
        if ((_yi >= (9.223372036854776e+18 : stdgo.GoFloat64) : Bool)) {
            if (_x == (-1 : stdgo.GoFloat64)) {
                return (1 : stdgo.GoFloat64);
            } else if (((stdgo._internal.math.Math_abs.abs(_x) < (1 : stdgo.GoFloat64) : Bool)) == ((_y > (0 : stdgo.GoFloat64) : Bool))) {
                return (0 : stdgo.GoFloat64);
            } else {
                return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
            };
        };
        var _a1 = (1 : stdgo.GoFloat64);
        var _ae = (0 : stdgo.GoInt);
        if (_yf != (0 : stdgo.GoFloat64)) {
            if ((_yf > (0.5 : stdgo.GoFloat64) : Bool)) {
                _yf--;
                _yi++;
            };
            _a1 = stdgo._internal.math.Math_exp.exp((_yf * stdgo._internal.math.Math_log.log(_x) : stdgo.GoFloat64));
        };
        var __tmp__ = stdgo._internal.math.Math_frexp.frexp(_x), _x1:stdgo.GoFloat64 = __tmp__._0, _xe:stdgo.GoInt = __tmp__._1;
        {
            var _i = (_yi : stdgo.GoInt64);
            while (_i != ((0i64 : stdgo.GoInt64))) {
                if (((_xe < (-4096 : stdgo.GoInt) : Bool) || ((4096 : stdgo.GoInt) < _xe : Bool) : Bool)) {
                    _ae = (_ae + (_xe) : stdgo.GoInt);
                    break;
                };
if ((_i & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((1i64 : stdgo.GoInt64))) {
                    _a1 = (_a1 * (_x1) : stdgo.GoFloat64);
                    _ae = (_ae + (_xe) : stdgo.GoInt);
                };
_x1 = (_x1 * (_x1) : stdgo.GoFloat64);
_xe = (_xe << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
if ((_x1 < (0.5 : stdgo.GoFloat64) : Bool)) {
                    _x1 = (_x1 + (_x1) : stdgo.GoFloat64);
                    _xe--;
                };
                _i = (_i >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
            };
        };
        if ((_y < (0 : stdgo.GoFloat64) : Bool)) {
            _a1 = ((1 : stdgo.GoFloat64) / _a1 : stdgo.GoFloat64);
            _ae = -_ae;
        };
        return stdgo._internal.math.Math_ldexp.ldexp(_a1, _ae);
    }
