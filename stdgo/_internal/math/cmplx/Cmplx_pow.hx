package stdgo._internal.math.cmplx;
function pow(_x:stdgo.GoComplex128, _y:stdgo.GoComplex128):stdgo.GoComplex128 {
        if (_x == (((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)))) {
            if (stdgo._internal.math.cmplx.Cmplx_isnan.isNaN(_y)) {
                return stdgo._internal.math.cmplx.Cmplx_nan.naN();
            };
            var __0 = ((_y : stdgo.GoComplex128).real : stdgo.GoFloat64), __1 = ((_y : stdgo.GoComplex128).imag : stdgo.GoFloat64);
var _i = __1, _r = __0;
            if (_r == (0 : stdgo.GoFloat64)) {
                return ((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64));
            } else if ((_r < (0 : stdgo.GoFloat64) : Bool)) {
                if (_i == (0 : stdgo.GoFloat64)) {
                    return new stdgo.GoComplex128(stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)), (0 : stdgo.GoFloat64));
                };
                return stdgo._internal.math.cmplx.Cmplx_inf.inf();
            } else if ((_r > (0 : stdgo.GoFloat64) : Bool)) {
                return ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64));
            };
            throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
        };
        var _modulus = (stdgo._internal.math.cmplx.Cmplx_abs.abs(_x) : stdgo.GoFloat64);
        if (_modulus == (0 : stdgo.GoFloat64)) {
            return new stdgo.GoComplex128((0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
        };
        var _r = (stdgo._internal.math.Math_pow.pow(_modulus, (_y : stdgo.GoComplex128).real) : stdgo.GoFloat64);
        var _arg = (stdgo._internal.math.cmplx.Cmplx_phase.phase(_x) : stdgo.GoFloat64);
        var _theta = ((_y : stdgo.GoComplex128).real * _arg : stdgo.GoFloat64);
        if ((_y : stdgo.GoComplex128).imag != (0 : stdgo.GoFloat64)) {
            _r = (_r * (stdgo._internal.math.Math_exp.exp((-(_y : stdgo.GoComplex128).imag * _arg : stdgo.GoFloat64))) : stdgo.GoFloat64);
            _theta = (_theta + (((_y : stdgo.GoComplex128).imag * stdgo._internal.math.Math_log.log(_modulus) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        };
        var __tmp__ = stdgo._internal.math.Math_sincos.sincos(_theta), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
        return new stdgo.GoComplex128((_r * _c : stdgo.GoFloat64), (_r * _s : stdgo.GoFloat64));
    }
