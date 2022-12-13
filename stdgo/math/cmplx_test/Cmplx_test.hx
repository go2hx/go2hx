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

function exampleAbs():Void {
	stdgo.fmt.Fmt.printf(Go.str("%.1f"), Go.toInterface(stdgo.math.cmplx.Cmplx.abs(((3 : GoFloat64) + new GoComplex128(0, 4)))));
}

/**
	// ExampleExp computes Euler's identity.
**/
function exampleExp():Void {
	stdgo.fmt.Fmt.printf(Go.str("%.1f"),
		Go.toInterface(stdgo.math.cmplx.Cmplx.exp(((0 : GoFloat64) + new GoComplex128(0, 3.141592653589793))) + ((1 : GoFloat64) + new GoComplex128(0, 0))));
}

function examplePolar():Void {
	var __tmp__ = stdgo.math.cmplx.Cmplx.polar(((0 : GoFloat64) + new GoComplex128(0, 2))),
		_r:GoFloat64 = __tmp__._0,
		_theta:GoFloat64 = __tmp__._1;
	stdgo.fmt.Fmt.printf(Go.str("r: %.1f, θ: %.1f*π"), Go.toInterface(_r), Go.toInterface(_theta / (3.141592653589793 : GoFloat64)));
}
