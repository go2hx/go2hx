package stdgo._internal.math.cmplx;
function exp(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        {
            var __0 = ((_x : stdgo.GoComplex128).real : stdgo.GoFloat64), __1 = ((_x : stdgo.GoComplex128).imag : stdgo.GoFloat64);
var _im = __1, _re = __0;
            if (stdgo._internal.math.Math_isinf.isInf(_re, (0 : stdgo.GoInt))) {
                if (((_re > (0 : stdgo.GoFloat64) : Bool) && (_im == (0 : stdgo.GoFloat64)) : Bool)) {
                    return _x;
                } else if ((stdgo._internal.math.Math_isinf.isInf(_im, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isnan.isNaN(_im) : Bool)) {
                    if ((_re < (0 : stdgo.GoFloat64) : Bool)) {
                        return new stdgo.GoComplex128((0 : stdgo.GoFloat64), stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), _im));
                    } else {
                        return new stdgo.GoComplex128(stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)), stdgo._internal.math.Math_nan.naN());
                    };
                };
            } else if (stdgo._internal.math.Math_isnan.isNaN(_re)) {
                if (_im == (0 : stdgo.GoFloat64)) {
                    return new stdgo.GoComplex128(stdgo._internal.math.Math_nan.naN(), _im);
                };
            };
        };
        var _r = (stdgo._internal.math.Math_exp.exp((_x : stdgo.GoComplex128).real) : stdgo.GoFloat64);
        var __tmp__ = stdgo._internal.math.Math_sincos.sincos((_x : stdgo.GoComplex128).imag), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
        return new stdgo.GoComplex128((_r * _c : stdgo.GoFloat64), (_r * _s : stdgo.GoFloat64));
    }
