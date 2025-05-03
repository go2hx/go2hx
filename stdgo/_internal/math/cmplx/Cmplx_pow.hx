package stdgo._internal.math.cmplx;
function pow(_x:stdgo.GoComplex128, _y:stdgo.GoComplex128):stdgo.GoComplex128 {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/pow.go#L51"
        if (_x == (((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)))) {
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/pow.go#L52"
            if (stdgo._internal.math.cmplx.Cmplx_isnan.isNaN(_y)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/pow.go#L53"
                return stdgo._internal.math.cmplx.Cmplx_nan.naN();
            };
            var __0 = ((_y : stdgo.GoComplex128).real : stdgo.GoFloat64), __1 = ((_y : stdgo.GoComplex128).imag : stdgo.GoFloat64);
var _i = __1, _r = __0;
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/pow.go#L56"
            if (_r == ((0 : stdgo.GoFloat64))) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/pow.go#L58"
                return ((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64));
            } else if ((_r < (0 : stdgo.GoFloat64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/pow.go#L60"
                if (_i == ((0 : stdgo.GoFloat64))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/pow.go#L61"
                    return new stdgo.GoComplex128(stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)), (0 : stdgo.GoFloat64));
                };
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/pow.go#L63"
                return stdgo._internal.math.cmplx.Cmplx_inf.inf();
            } else if ((_r > (0 : stdgo.GoFloat64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/pow.go#L65"
                return ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/pow.go#L67"
            throw stdgo.Go.toInterface(("not reached" : stdgo.GoString));
        };
        var _modulus = (stdgo._internal.math.cmplx.Cmplx_abs.abs(_x) : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/pow.go#L70"
        if (_modulus == ((0 : stdgo.GoFloat64))) {
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/pow.go#L71"
            return new stdgo.GoComplex128((0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
        };
        var _r = (stdgo._internal.math.Math_pow.pow(_modulus, (_y : stdgo.GoComplex128).real) : stdgo.GoFloat64);
        var _arg = (stdgo._internal.math.cmplx.Cmplx_phase.phase(_x) : stdgo.GoFloat64);
        var _theta = ((_y : stdgo.GoComplex128).real * _arg : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/pow.go#L76"
        if ((_y : stdgo.GoComplex128).imag != ((0 : stdgo.GoFloat64))) {
            _r = (_r * (stdgo._internal.math.Math_exp.exp((-(_y : stdgo.GoComplex128).imag * _arg : stdgo.GoFloat64))) : stdgo.GoFloat64);
            _theta = (_theta + (((_y : stdgo.GoComplex128).imag * stdgo._internal.math.Math_log.log(_modulus) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        };
        var __tmp__ = stdgo._internal.math.Math_sincos.sincos(_theta), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/pow.go#L81"
        return new stdgo.GoComplex128((_r * _c : stdgo.GoFloat64), (_r * _s : stdgo.GoFloat64));
    }
