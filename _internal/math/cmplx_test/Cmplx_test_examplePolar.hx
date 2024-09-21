package _internal.math.cmplx_test;
function examplePolar():Void {
        var __tmp__ = stdgo._internal.math.cmplx.Cmplx_polar.polar(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64))), _r:stdgo.GoFloat64 = __tmp__._0, _theta:stdgo.GoFloat64 = __tmp__._1;
        stdgo._internal.fmt.Fmt_printf.printf(("r: %.1f, θ: %.1f*π" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface((_theta / (3.141592653589793 : stdgo.GoFloat64) : stdgo.GoFloat64)));
    }
