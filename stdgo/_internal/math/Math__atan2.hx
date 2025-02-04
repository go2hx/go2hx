package stdgo._internal.math;
function _atan2(_y:stdgo.GoFloat64, _x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if ((stdgo._internal.math.Math_isnan.isNaN(_y) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
            return stdgo._internal.math.Math_nan.naN();
        } else if (_y == (0 : stdgo.GoFloat64)) {
            if (((_x >= (0 : stdgo.GoFloat64) : Bool) && !stdgo._internal.math.Math_signbit.signbit(_x) : Bool)) {
                return stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), _y);
            };
            return stdgo._internal.math.Math_copysign.copysign((3.141592653589793 : stdgo.GoFloat64), _y);
        } else if (_x == (0 : stdgo.GoFloat64)) {
            return stdgo._internal.math.Math_copysign.copysign((1.5707963267948966 : stdgo.GoFloat64), _y);
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt))) {
            if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                if (stdgo._internal.math.Math_isinf.isInf(_y, (0 : stdgo.GoInt))) {
                    return stdgo._internal.math.Math_copysign.copysign((0.7853981633974483 : stdgo.GoFloat64), _y);
                } else {
                    return stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), _y);
                };
            };
            if (stdgo._internal.math.Math_isinf.isInf(_y, (0 : stdgo.GoInt))) {
                return stdgo._internal.math.Math_copysign.copysign((2.356194490192345 : stdgo.GoFloat64), _y);
            } else {
                return stdgo._internal.math.Math_copysign.copysign((3.141592653589793 : stdgo.GoFloat64), _y);
            };
        } else if (stdgo._internal.math.Math_isinf.isInf(_y, (0 : stdgo.GoInt))) {
            return stdgo._internal.math.Math_copysign.copysign((1.5707963267948966 : stdgo.GoFloat64), _y);
        };
        var _q = (stdgo._internal.math.Math_atan.atan((_y / _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            if ((_q <= (0 : stdgo.GoFloat64) : Bool)) {
                return (_q + (3.141592653589793 : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            return (_q - (3.141592653589793 : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        return _q;
    }
