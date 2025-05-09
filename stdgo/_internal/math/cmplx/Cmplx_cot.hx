package stdgo._internal.math.cmplx;
function cot(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        var _d = (stdgo._internal.math.Math_cosh.cosh(((2 : stdgo.GoFloat64) * (_x : stdgo.GoComplex128).imag : stdgo.GoFloat64)) - stdgo._internal.math.Math_cos.cos(((2 : stdgo.GoFloat64) * (_x : stdgo.GoComplex128).real : stdgo.GoFloat64)) : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/tan.go#L290"
        if ((stdgo._internal.math.Math_abs.abs(_d) < (0.25 : stdgo.GoFloat64) : Bool)) {
            _d = stdgo._internal.math.cmplx.Cmplx__tanseries._tanSeries(_x);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/tan.go#L293"
        if (_d == ((0 : stdgo.GoFloat64))) {
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/tan.go#L294"
            return stdgo._internal.math.cmplx.Cmplx_inf.inf();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/tan.go#L296"
        return new stdgo.GoComplex128((stdgo._internal.math.Math_sin.sin(((2 : stdgo.GoFloat64) * (_x : stdgo.GoComplex128).real : stdgo.GoFloat64)) / _d : stdgo.GoFloat64), (-stdgo._internal.math.Math_sinh.sinh(((2 : stdgo.GoFloat64) * (_x : stdgo.GoComplex128).imag : stdgo.GoFloat64)) / _d : stdgo.GoFloat64));
    }
