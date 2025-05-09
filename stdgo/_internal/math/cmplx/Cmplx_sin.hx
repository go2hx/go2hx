package stdgo._internal.math.cmplx;
function sin(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/sin.go#L54"
        {
            var __0 = ((_x : stdgo.GoComplex128).real : stdgo.GoFloat64), __1 = ((_x : stdgo.GoComplex128).imag : stdgo.GoFloat64);
var _im = __1, _re = __0;
            if (((_im == (0 : stdgo.GoFloat64)) && ((stdgo._internal.math.Math_isinf.isInf(_re, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isnan.isNaN(_re) : Bool)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/sin.go#L56"
                return new stdgo.GoComplex128(stdgo._internal.math.Math_nan.naN(), _im);
            } else if (stdgo._internal.math.Math_isinf.isInf(_im, (0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/sin.go#L58"
                if (_re == ((0 : stdgo.GoFloat64))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/sin.go#L60"
                    return _x;
                } else if ((stdgo._internal.math.Math_isinf.isInf(_re, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isnan.isNaN(_re) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/sin.go#L62"
                    return new stdgo.GoComplex128(stdgo._internal.math.Math_nan.naN(), _im);
                };
            } else if (((_re == (0 : stdgo.GoFloat64)) && stdgo._internal.math.Math_isnan.isNaN(_im) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/sin.go#L65"
                return _x;
            };
        };
        var __tmp__ = stdgo._internal.math.Math_sincos.sincos((_x : stdgo.GoComplex128).real), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.cmplx.Cmplx__sinhcosh._sinhcosh((_x : stdgo.GoComplex128).imag), _sh:stdgo.GoFloat64 = __tmp__._0, _ch:stdgo.GoFloat64 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/sin.go#L69"
        return new stdgo.GoComplex128((_s * _ch : stdgo.GoFloat64), (_c * _sh : stdgo.GoFloat64));
    }
