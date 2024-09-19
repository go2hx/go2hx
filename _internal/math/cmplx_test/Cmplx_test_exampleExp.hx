package _internal.math.cmplx_test;
function exampleExp():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("%.1f" : stdgo.GoString), stdgo.Go.toInterface((stdgo._internal.math.cmplx.Cmplx_exp.exp(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 3.141592653589793f64))) + ((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)) : stdgo.GoComplex128)));
    }
