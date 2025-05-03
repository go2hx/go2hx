package stdgo._internal.math.cmplx;
function asin(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L52"
        {
            var __0 = ((_x : stdgo.GoComplex128).real : stdgo.GoFloat64), __1 = ((_x : stdgo.GoComplex128).imag : stdgo.GoFloat64);
var _im = __1, _re = __0;
            if (((_im == (0 : stdgo.GoFloat64)) && (stdgo._internal.math.Math_abs.abs(_re) <= (1 : stdgo.GoFloat64) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L54"
                return new stdgo.GoComplex128(stdgo._internal.math.Math_asin.asin(_re), _im);
            } else if (((_re == (0 : stdgo.GoFloat64)) && (stdgo._internal.math.Math_abs.abs(_im) <= (1 : stdgo.GoFloat64) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L56"
                return new stdgo.GoComplex128(_re, stdgo._internal.math.Math_asinh.asinh(_im));
            } else if (stdgo._internal.math.Math_isnan.isNaN(_im)) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L58"
                if (_re == ((0 : stdgo.GoFloat64))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L60"
                    return new stdgo.GoComplex128(_re, stdgo._internal.math.Math_nan.naN());
                } else if (stdgo._internal.math.Math_isinf.isInf(_re, (0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L62"
                    return new stdgo.GoComplex128(stdgo._internal.math.Math_nan.naN(), _re);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L64"
                    return stdgo._internal.math.cmplx.Cmplx_nan.naN();
                };
            } else if (stdgo._internal.math.Math_isinf.isInf(_im, (0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L67"
                if (stdgo._internal.math.Math_isnan.isNaN(_re)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L69"
                    return _x;
                } else if (stdgo._internal.math.Math_isinf.isInf(_re, (0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L71"
                    return new stdgo.GoComplex128(stdgo._internal.math.Math_copysign.copysign((0.7853981633974483 : stdgo.GoFloat64), _re), _im);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L73"
                    return new stdgo.GoComplex128(stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), _re), _im);
                };
            } else if (stdgo._internal.math.Math_isinf.isInf(_re, (0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L76"
                return new stdgo.GoComplex128(stdgo._internal.math.Math_copysign.copysign((1.5707963267948966 : stdgo.GoFloat64), _re), stdgo._internal.math.Math_copysign.copysign(_re, _im));
            };
        };
        var _ct = (new stdgo.GoComplex128(-(_x : stdgo.GoComplex128).imag, (_x : stdgo.GoComplex128).real) : stdgo.GoComplex128);
        var _xx = (_x * _x : stdgo.GoComplex128);
        var _x1 = (new stdgo.GoComplex128(((1 : stdgo.GoFloat64) - (_xx : stdgo.GoComplex128).real : stdgo.GoFloat64), -(_xx : stdgo.GoComplex128).imag) : stdgo.GoComplex128);
        var _x2 = (stdgo._internal.math.cmplx.Cmplx_sqrt.sqrt(_x1) : stdgo.GoComplex128);
        var _w = (stdgo._internal.math.cmplx.Cmplx_log.log((_ct + _x2 : stdgo.GoComplex128)) : stdgo.GoComplex128);
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/asin.go#L83"
        return new stdgo.GoComplex128((_w : stdgo.GoComplex128).imag, -(_w : stdgo.GoComplex128).real);
    }
