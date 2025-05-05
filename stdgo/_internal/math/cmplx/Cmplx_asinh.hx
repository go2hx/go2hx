package stdgo._internal.math.cmplx;
function asinh(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L88"
        {
            var __0 = ((_x : stdgo.GoComplex128).real : stdgo.GoFloat64), __1 = ((_x : stdgo.GoComplex128).imag : stdgo.GoFloat64);
var _im = __1, _re = __0;
            if (((_im == (0 : stdgo.GoFloat64)) && (stdgo._internal.math.Math_abs.abs(_re) <= (1 : stdgo.GoFloat64) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L90"
                return new stdgo.GoComplex128(stdgo._internal.math.Math_asinh.asinh(_re), _im);
            } else if (((_re == (0 : stdgo.GoFloat64)) && (stdgo._internal.math.Math_abs.abs(_im) <= (1 : stdgo.GoFloat64) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L92"
                return new stdgo.GoComplex128(_re, stdgo._internal.math.Math_asin.asin(_im));
            } else if (stdgo._internal.math.Math_isinf.isInf(_re, (0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L94"
                if (stdgo._internal.math.Math_isinf.isInf(_im, (0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L96"
                    return new stdgo.GoComplex128(_re, stdgo._internal.math.Math_copysign.copysign((0.7853981633974483 : stdgo.GoFloat64), _im));
                } else if (stdgo._internal.math.Math_isnan.isNaN(_im)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L98"
                    return _x;
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L100"
                    return new stdgo.GoComplex128(_re, stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), _im));
                };
            } else if (stdgo._internal.math.Math_isnan.isNaN(_re)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L103"
                if (_im == ((0 : stdgo.GoFloat64))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L105"
                    return _x;
                } else if (stdgo._internal.math.Math_isinf.isInf(_im, (0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L107"
                    return new stdgo.GoComplex128(_im, _re);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L109"
                    return stdgo._internal.math.cmplx.Cmplx_nan.naN();
                };
            } else if (stdgo._internal.math.Math_isinf.isInf(_im, (0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L112"
                return new stdgo.GoComplex128(stdgo._internal.math.Math_copysign.copysign(_im, _re), stdgo._internal.math.Math_copysign.copysign((1.5707963267948966 : stdgo.GoFloat64), _im));
            };
        };
        var _xx = (_x * _x : stdgo.GoComplex128);
        var _x1 = (new stdgo.GoComplex128(((1 : stdgo.GoFloat64) + (_xx : stdgo.GoComplex128).real : stdgo.GoFloat64), (_xx : stdgo.GoComplex128).imag) : stdgo.GoComplex128);
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L116"
        return stdgo._internal.math.cmplx.Cmplx_log.log((_x + stdgo._internal.math.cmplx.Cmplx_sqrt.sqrt(_x1) : stdgo.GoComplex128));
    }
