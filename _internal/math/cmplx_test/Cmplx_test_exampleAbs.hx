package _internal.math.cmplx_test;
function exampleAbs():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("%.1f" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx_abs.abs(((3f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 4f64)))));
    }
