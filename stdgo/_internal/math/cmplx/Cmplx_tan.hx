package stdgo._internal.math.cmplx;
function tan(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        {
            var __0 = ((_x : stdgo.GoComplex128).real : stdgo.GoFloat64), __1 = ((_x : stdgo.GoComplex128).imag : stdgo.GoFloat64);
var _im = __1, _re = __0;
            if (stdgo._internal.math.Math_isinf.isInf(_im, (0 : stdgo.GoInt))) {
                if ((stdgo._internal.math.Math_isinf.isInf(_re, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isnan.isNaN(_re) : Bool)) {
                    return new stdgo.GoComplex128(stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), _re), stdgo._internal.math.Math_copysign.copysign((1 : stdgo.GoFloat64), _im));
                };
                return new stdgo.GoComplex128(stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), stdgo._internal.math.Math_sin.sin(((2 : stdgo.GoFloat64) * _re : stdgo.GoFloat64))), stdgo._internal.math.Math_copysign.copysign((1 : stdgo.GoFloat64), _im));
            } else if (((_re == (0 : stdgo.GoFloat64)) && stdgo._internal.math.Math_isnan.isNaN(_im) : Bool)) {
                return _x;
            };
        };
        var _d = (stdgo._internal.math.Math_cos.cos(((2 : stdgo.GoFloat64) * (_x : stdgo.GoComplex128).real : stdgo.GoFloat64)) + stdgo._internal.math.Math_cosh.cosh(((2 : stdgo.GoFloat64) * (_x : stdgo.GoComplex128).imag : stdgo.GoFloat64)) : stdgo.GoFloat64);
        if ((stdgo._internal.math.Math_abs.abs(_d) < (0.25 : stdgo.GoFloat64) : Bool)) {
            _d = stdgo._internal.math.cmplx.Cmplx__tanseries._tanSeries(_x);
        };
        if (_d == (0 : stdgo.GoFloat64)) {
            return stdgo._internal.math.cmplx.Cmplx_inf.inf();
        };
        return new stdgo.GoComplex128((stdgo._internal.math.Math_sin.sin(((2 : stdgo.GoFloat64) * (_x : stdgo.GoComplex128).real : stdgo.GoFloat64)) / _d : stdgo.GoFloat64), (stdgo._internal.math.Math_sinh.sinh(((2 : stdgo.GoFloat64) * (_x : stdgo.GoComplex128).imag : stdgo.GoFloat64)) / _d : stdgo.GoFloat64));
    }
