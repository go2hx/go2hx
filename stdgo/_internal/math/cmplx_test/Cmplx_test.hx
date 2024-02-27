package stdgo._internal.math.cmplx_test;
import stdgo._internal.math.cmplx.Cmplx;
function exampleAbs():Void {
        stdgo._internal.fmt.Fmt.printf(("%.1f" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx.abs(((3f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 4f64)))));
    }
function exampleExp():Void {
        stdgo._internal.fmt.Fmt.printf(("%.1f" : stdgo.GoString), stdgo.Go.toInterface((stdgo._internal.math.cmplx.Cmplx.exp(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 3.141592653589793f64))) + ((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)) : stdgo.GoComplex128)));
    }
function examplePolar():Void {
        var __tmp__ = stdgo._internal.math.cmplx.Cmplx.polar(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64))), _r:stdgo.GoFloat64 = __tmp__._0, _theta:stdgo.GoFloat64 = __tmp__._1;
        stdgo._internal.fmt.Fmt.printf(("r: %.1f, θ: %.1f*π" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface((_theta / (3.141592653589793 : stdgo.GoFloat64) : stdgo.GoFloat64)));
    }
