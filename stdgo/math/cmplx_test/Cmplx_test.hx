package stdgo.math.cmplx_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.math.cmplx.Cmplx;
function exampleAbs():Void {
        stdgo.fmt.Fmt.printf(("%.1f" : GoString), Go.toInterface(stdgo.math.cmplx.Cmplx.abs(((3f64 : GoFloat64) + new GoComplex128(0f64, 4f64)))));
    }
/**
    // ExampleExp computes Euler's identity.
**/
function exampleExp():Void {
        stdgo.fmt.Fmt.printf(("%.1f" : GoString), Go.toInterface(stdgo.math.cmplx.Cmplx.exp(((0f64 : GoFloat64) + new GoComplex128(0f64, 3.141592653589793f64))) + ((1f64 : GoFloat64) + new GoComplex128(0f64, 0f64))));
    }
function examplePolar():Void {
        var __tmp__ = stdgo.math.cmplx.Cmplx.polar(((0f64 : GoFloat64) + new GoComplex128(0f64, 2f64))), _r:GoFloat64 = __tmp__._0, _theta:GoFloat64 = __tmp__._1;
        stdgo.fmt.Fmt.printf(("r: %.1f, θ: %.1f*π" : GoString), Go.toInterface(_r), Go.toInterface(_theta / (3.141592653589793 : GoFloat64)));
    }
