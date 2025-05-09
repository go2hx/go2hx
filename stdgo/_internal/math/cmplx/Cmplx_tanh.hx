package stdgo._internal.math.cmplx;
function tanh(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/tan.go#L97"
        {
            var __0 = ((_x : stdgo.GoComplex128).real : stdgo.GoFloat64), __1 = ((_x : stdgo.GoComplex128).imag : stdgo.GoFloat64);
var _im = __1, _re = __0;
            if (stdgo._internal.math.Math_isinf.isInf(_re, (0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/tan.go#L99"
                if ((stdgo._internal.math.Math_isinf.isInf(_im, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isnan.isNaN(_im) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/tan.go#L101"
                    return new stdgo.GoComplex128(stdgo._internal.math.Math_copysign.copysign((1 : stdgo.GoFloat64), _re), stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), _im));
                };
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/tan.go#L103"
                return new stdgo.GoComplex128(stdgo._internal.math.Math_copysign.copysign((1 : stdgo.GoFloat64), _re), stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), stdgo._internal.math.Math_sin.sin(((2 : stdgo.GoFloat64) * _im : stdgo.GoFloat64))));
            } else if (((_im == (0 : stdgo.GoFloat64)) && stdgo._internal.math.Math_isnan.isNaN(_re) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/tan.go#L105"
                return _x;
            };
        };
        var _d = (stdgo._internal.math.Math_cosh.cosh(((2 : stdgo.GoFloat64) * (_x : stdgo.GoComplex128).real : stdgo.GoFloat64)) + stdgo._internal.math.Math_cos.cos(((2 : stdgo.GoFloat64) * (_x : stdgo.GoComplex128).imag : stdgo.GoFloat64)) : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/tan.go#L108"
        if (_d == ((0 : stdgo.GoFloat64))) {
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/tan.go#L109"
            return stdgo._internal.math.cmplx.Cmplx_inf.inf();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/tan.go#L111"
        return new stdgo.GoComplex128((stdgo._internal.math.Math_sinh.sinh(((2 : stdgo.GoFloat64) * (_x : stdgo.GoComplex128).real : stdgo.GoFloat64)) / _d : stdgo.GoFloat64), (stdgo._internal.math.Math_sin.sin(((2 : stdgo.GoFloat64) * (_x : stdgo.GoComplex128).imag : stdgo.GoFloat64)) / _d : stdgo.GoFloat64));
    }
