package stdgo._internal.math.cmplx;
function sinh(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        {
            var __0 = ((_x : stdgo.GoComplex128).real : stdgo.GoFloat64), __1 = ((_x : stdgo.GoComplex128).imag : stdgo.GoFloat64);
var _im = __1, _re = __0;
            if (((_re == (0 : stdgo.GoFloat64)) && ((stdgo._internal.math.Math_isinf.isInf(_im, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isnan.isNaN(_im) : Bool)) : Bool)) {
                return new stdgo.GoComplex128(_re, stdgo._internal.math.Math_nan.naN());
            } else if (stdgo._internal.math.Math_isinf.isInf(_re, (0 : stdgo.GoInt))) {
                if (_im == (0 : stdgo.GoFloat64)) {
                    return new stdgo.GoComplex128(_re, _im);
                } else if ((stdgo._internal.math.Math_isinf.isInf(_im, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isnan.isNaN(_im) : Bool)) {
                    return new stdgo.GoComplex128(_re, stdgo._internal.math.Math_nan.naN());
                };
            } else if (((_im == (0 : stdgo.GoFloat64)) && stdgo._internal.math.Math_isnan.isNaN(_re) : Bool)) {
                return new stdgo.GoComplex128(stdgo._internal.math.Math_nan.naN(), _im);
            };
        };
        var __tmp__ = stdgo._internal.math.Math_sincos.sincos((_x : stdgo.GoComplex128).imag), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.cmplx.Cmplx__sinhcosh._sinhcosh((_x : stdgo.GoComplex128).real), _sh:stdgo.GoFloat64 = __tmp__._0, _ch:stdgo.GoFloat64 = __tmp__._1;
        return new stdgo.GoComplex128((_c * _sh : stdgo.GoFloat64), (_s * _ch : stdgo.GoFloat64));
    }
