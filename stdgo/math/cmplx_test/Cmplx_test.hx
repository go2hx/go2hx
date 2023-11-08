package stdgo.math.cmplx_test;
import stdgo.math.cmplx.Cmplx;
function exampleAbs():Void {
        stdgo.fmt.Fmt.printf(("%.1f" : stdgo.GoString), stdgo.Go.toInterface(stdgo.math.cmplx.Cmplx.abs(((3f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 4f64)))));
    }
/**
    // ExampleExp computes Euler's identity.
**/
function exampleExp():Void {
        stdgo.fmt.Fmt.printf(("%.1f" : stdgo.GoString), stdgo.Go.toInterface(stdgo.math.cmplx.Cmplx.exp(((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 3.141592653589793f64))) + ((1f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64))));
    }
function examplePolar():Void {
        var __tmp__ = stdgo.math.cmplx.Cmplx.polar(((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 2f64))), _r:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _theta:stdgo.StdGoTypes.GoFloat64 = __tmp__._1;
        stdgo.fmt.Fmt.printf(("r: %.1f, θ: %.1f*π" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_theta / (3.141592653589793 : stdgo.StdGoTypes.GoFloat64)));
    }
