package stdgo._internal.math;
function _tan(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        if (((_x == (0 : stdgo.GoFloat64)) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
            return _x;
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt))) {
            return stdgo._internal.math.Math_nan.naN();
        };
        var _sign = (false : Bool);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _x = -_x;
            _sign = true;
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
            _z = (((((_x - (_y * (0.7853981256484985 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) - (_y * (3.774894707930798e-08 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) - (_y * (2.6951514290790595e-15 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        var _zz = (_z * _z : stdgo.GoFloat64);
        if ((_zz > (1e-14 : stdgo.GoFloat64) : Bool)) {
            _y = (_z + (_z * (((_zz * (((((((stdgo._internal.math.Math___tanp.__tanP[(0 : stdgo.GoInt)] * _zz : stdgo.GoFloat64)) + stdgo._internal.math.Math___tanp.__tanP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + stdgo._internal.math.Math___tanp.__tanP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) : stdgo.GoFloat64) / (((((((((((_zz + stdgo._internal.math.Math___tanq.__tanQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + stdgo._internal.math.Math___tanq.__tanQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + stdgo._internal.math.Math___tanq.__tanQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _zz : stdgo.GoFloat64) + stdgo._internal.math.Math___tanq.__tanQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        } else {
            _y = _z;
        };
        if ((_j & (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((2i64 : stdgo.GoUInt64))) {
            _y = ((-1 : stdgo.GoFloat64) / _y : stdgo.GoFloat64);
        };
        if (_sign) {
            _y = -_y;
        };
        return _y;
    }
