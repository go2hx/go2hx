package stdgo._internal.math.cmplx;
function atan(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        {
            var __0 = (_x.real : stdgo.GoFloat64), __1 = (_x.imag : stdgo.GoFloat64);
var _im = __1, _re = __0;
            if (_im == (0 : stdgo.GoFloat64)) {
                return new stdgo.GoComplex128(stdgo._internal.math.Math_atan.atan(_re), _im);
            } else if (((_re == (0 : stdgo.GoFloat64)) && (stdgo._internal.math.Math_abs.abs(_im) <= (1 : stdgo.GoFloat64) : Bool) : Bool)) {
                return new stdgo.GoComplex128(_re, stdgo._internal.math.Math_atanh.atanh(_im));
            } else if ((stdgo._internal.math.Math_isInf.isInf(_im, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isInf.isInf(_re, (0 : stdgo.GoInt)) : Bool)) {
                if (stdgo._internal.math.Math_isNaN.isNaN(_re)) {
                    return new stdgo.GoComplex128(stdgo._internal.math.Math_naN.naN(), stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), _im));
                };
                return new stdgo.GoComplex128(stdgo._internal.math.Math_copysign.copysign((1.5707963267948966 : stdgo.GoFloat64), _re), stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), _im));
            } else if ((stdgo._internal.math.Math_isNaN.isNaN(_re) || stdgo._internal.math.Math_isNaN.isNaN(_im) : Bool)) {
                return stdgo._internal.math.cmplx.Cmplx_naN.naN();
            };
        };
        var _x2 = (_x.real * _x.real : stdgo.GoFloat64);
        var _a = (((1 : stdgo.GoFloat64) - _x2 : stdgo.GoFloat64) - (_x.imag * _x.imag : stdgo.GoFloat64) : stdgo.GoFloat64);
        if (_a == (0 : stdgo.GoFloat64)) {
            return stdgo._internal.math.cmplx.Cmplx_naN.naN();
        };
        var _t = ((0.5 : stdgo.GoFloat64) * stdgo._internal.math.Math_atan2.atan2(((2 : stdgo.GoFloat64) * _x.real : stdgo.GoFloat64), _a) : stdgo.GoFloat64);
        var _w = (stdgo._internal.math.cmplx.Cmplx__reducePi._reducePi(_t) : stdgo.GoFloat64);
        _t = (_x.imag - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _b = (_x2 + (_t * _t : stdgo.GoFloat64) : stdgo.GoFloat64);
        if (_b == (0 : stdgo.GoFloat64)) {
            return stdgo._internal.math.cmplx.Cmplx_naN.naN();
        };
        _t = (_x.imag + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _c = (((_x2 + (_t * _t : stdgo.GoFloat64) : stdgo.GoFloat64)) / _b : stdgo.GoFloat64);
        return new stdgo.GoComplex128(_w, ((0.25 : stdgo.GoFloat64) * stdgo._internal.math.Math_log.log(_c) : stdgo.GoFloat64));
    }
