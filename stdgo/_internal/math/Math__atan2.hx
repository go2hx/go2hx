package stdgo._internal.math;
function _atan2(_y:stdgo.GoFloat64, _x:stdgo.GoFloat64):stdgo.GoFloat64 {
        //"file:///home/runner/.go/go1.21.3/src/math/atan2.go#L39"
        if ((stdgo._internal.math.Math_isnan.isNaN(_y) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/atan2.go#L41"
            return stdgo._internal.math.Math_nan.naN();
        } else if (_y == ((0 : stdgo.GoFloat64))) {
            //"file:///home/runner/.go/go1.21.3/src/math/atan2.go#L43"
            if (((_x >= (0 : stdgo.GoFloat64) : Bool) && !stdgo._internal.math.Math_signbit.signbit(_x) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/atan2.go#L44"
                return stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), _y);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/atan2.go#L46"
            return stdgo._internal.math.Math_copysign.copysign((3.141592653589793 : stdgo.GoFloat64), _y);
        } else if (_x == ((0 : stdgo.GoFloat64))) {
            //"file:///home/runner/.go/go1.21.3/src/math/atan2.go#L48"
            return stdgo._internal.math.Math_copysign.copysign((1.5707963267948966 : stdgo.GoFloat64), _y);
        } else if (stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/atan2.go#L50"
            if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/atan2.go#L51"
                if (stdgo._internal.math.Math_isinf.isInf(_y, (0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/atan2.go#L53"
                    return stdgo._internal.math.Math_copysign.copysign((0.7853981633974483 : stdgo.GoFloat64), _y);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/math/atan2.go#L55"
                    return stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), _y);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/atan2.go#L58"
            if (stdgo._internal.math.Math_isinf.isInf(_y, (0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/atan2.go#L60"
                return stdgo._internal.math.Math_copysign.copysign((2.356194490192345 : stdgo.GoFloat64), _y);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/math/atan2.go#L62"
                return stdgo._internal.math.Math_copysign.copysign((3.141592653589793 : stdgo.GoFloat64), _y);
            };
        } else if (stdgo._internal.math.Math_isinf.isInf(_y, (0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/atan2.go#L65"
            return stdgo._internal.math.Math_copysign.copysign((1.5707963267948966 : stdgo.GoFloat64), _y);
        };
        var _q = (stdgo._internal.math.Math_atan.atan((_y / _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/math/atan2.go#L70"
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/atan2.go#L71"
            if ((_q <= (0 : stdgo.GoFloat64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/atan2.go#L72"
                return (_q + (3.141592653589793 : stdgo.GoFloat64) : stdgo.GoFloat64);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/atan2.go#L74"
            return (_q - (3.141592653589793 : stdgo.GoFloat64) : stdgo.GoFloat64);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/atan2.go#L76"
        return _q;
    }
