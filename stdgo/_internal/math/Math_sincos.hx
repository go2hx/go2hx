package stdgo._internal.math;
function sincos(_x:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } {
        var _sin = (0 : stdgo.GoFloat64), _cos = (0 : stdgo.GoFloat64);
        {};
        if (_x == (0 : stdgo.GoFloat64)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } = { _0 : _x, _1 : (1 : stdgo.GoFloat64) };
                _sin = __tmp__._0;
                _cos = __tmp__._1;
                __tmp__;
            };
        } else if ((stdgo._internal.math.Math_isnan.isNaN(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } = { _0 : stdgo._internal.math.Math_nan.naN(), _1 : stdgo._internal.math.Math_nan.naN() };
                _sin = __tmp__._0;
                _cos = __tmp__._1;
                __tmp__;
            };
        };
        var __0 = (false : Bool), __1 = (false : Bool);
var _cosSign = __1, _sinSign = __0;
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sinSign = true;
        };
        var _j:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var __0:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), __1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
var _z = __1, _y = __0;
        if ((_x >= (5.36870912e+08 : stdgo.GoFloat64) : Bool)) {
            {
                var __tmp__ = stdgo._internal.math.Math__trigreduce._trigReduce(_x);
                _j = @:tmpset0 __tmp__._0;
                _z = @:tmpset0 __tmp__._1;
            };
        } else {
            _j = ((_x * (1.2732395447351628 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoUInt64);
            _y = (_j : stdgo.GoFloat64);
            if ((_j & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((1i64 : stdgo.GoUInt64))) {
                _j++;
                _y++;
            };
            _j = (_j & ((7i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _z = (((((_x - (_y * (0.7853981256484985 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) - (_y * (3.774894707930798e-08 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) - (_y * (2.6951514290790595e-15 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        if ((_j > (3i64 : stdgo.GoUInt64) : Bool)) {
            _j = (_j - ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            {
                final __tmp__0 = !_sinSign;
                final __tmp__1 = !_cosSign;
                _sinSign = __tmp__0;
                _cosSign = __tmp__1;
            };
        };
        if ((_j > (1i64 : stdgo.GoUInt64) : Bool)) {
            _cosSign = !_cosSign;
        };
        var _zz = (_z * _z : stdgo.GoFloat64);
        _cos = (((1 : stdgo.GoFloat64) - ((0.5 : stdgo.GoFloat64) * _zz : stdgo.GoFloat64) : stdgo.GoFloat64) + ((_zz * _zz : stdgo.GoFloat64) * ((((((((((((((((stdgo._internal.math.Math___cos.__cos[(0 : stdgo.GoInt)] * _zz : stdgo.GoFloat64)) + stdgo._internal.math.Math___cos.__cos[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + stdgo._internal.math.Math___cos.__cos[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + stdgo._internal.math.Math___cos.__cos[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + stdgo._internal.math.Math___cos.__cos[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + stdgo._internal.math.Math___cos.__cos[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        _sin = (_z + ((_z * _zz : stdgo.GoFloat64) * ((((((((((((((((stdgo._internal.math.Math___sin.__sin[(0 : stdgo.GoInt)] * _zz : stdgo.GoFloat64)) + stdgo._internal.math.Math___sin.__sin[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + stdgo._internal.math.Math___sin.__sin[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + stdgo._internal.math.Math___sin.__sin[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + stdgo._internal.math.Math___sin.__sin[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + stdgo._internal.math.Math___sin.__sin[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        if (((_j == (1i64 : stdgo.GoUInt64)) || (_j == (2i64 : stdgo.GoUInt64)) : Bool)) {
            {
                final __tmp__0 = _cos;
                final __tmp__1 = _sin;
                _sin = __tmp__0;
                _cos = __tmp__1;
            };
        };
        if (_cosSign) {
            _cos = -_cos;
        };
        if (_sinSign) {
            _sin = -_sin;
        };
        return { _0 : _sin, _1 : _cos };
    }
