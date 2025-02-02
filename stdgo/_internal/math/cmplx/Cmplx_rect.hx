package stdgo._internal.math.cmplx;
function rect(_r:stdgo.GoFloat64, __952:stdgo.GoFloat64):stdgo.GoComplex128 {
        var __tmp__ = stdgo._internal.math.Math_sincos.sincos(__952), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
        return new stdgo.GoComplex128((_r * _c : stdgo.GoFloat64), (_r * _s : stdgo.GoFloat64));
    }
