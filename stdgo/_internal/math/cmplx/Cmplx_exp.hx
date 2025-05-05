package stdgo._internal.math.cmplx;
function exp(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/exp.go#L52"
        {
            var __0 = ((_x : stdgo.GoComplex128).real : stdgo.GoFloat64), __1 = ((_x : stdgo.GoComplex128).imag : stdgo.GoFloat64);
var _im = __1, _re = __0;
            if (stdgo._internal.math.Math_isinf.isInf(_re, (0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/exp.go#L54"
                if (((_re > (0 : stdgo.GoFloat64) : Bool) && (_im == (0 : stdgo.GoFloat64)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/exp.go#L56"
                    return _x;
                } else if ((stdgo._internal.math.Math_isinf.isInf(_im, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isnan.isNaN(_im) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/exp.go#L58"
                    if ((_re < (0 : stdgo.GoFloat64) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/exp.go#L59"
                        return new stdgo.GoComplex128((0 : stdgo.GoFloat64), stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), _im));
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/exp.go#L61"
                        return new stdgo.GoComplex128(stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)), stdgo._internal.math.Math_nan.naN());
                    };
                };
            } else if (stdgo._internal.math.Math_isnan.isNaN(_re)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/exp.go#L65"
                if (_im == ((0 : stdgo.GoFloat64))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/exp.go#L66"
                    return new stdgo.GoComplex128(stdgo._internal.math.Math_nan.naN(), _im);
                };
            };
        };
        var _r = (stdgo._internal.math.Math_exp.exp((_x : stdgo.GoComplex128).real) : stdgo.GoFloat64);
        var __tmp__ = stdgo._internal.math.Math_sincos.sincos((_x : stdgo.GoComplex128).imag), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/exp.go#L71"
        return new stdgo.GoComplex128((_r * _c : stdgo.GoFloat64), (_r * _s : stdgo.GoFloat64));
    }
