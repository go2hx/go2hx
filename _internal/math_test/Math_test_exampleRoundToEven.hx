package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function exampleRoundToEven():Void {
        var _u = (stdgo._internal.math.Math_roundToEven.roundToEven((11.5 : stdgo.GoFloat64)) : stdgo.GoFloat64);
        stdgo._internal.fmt.Fmt_printf.printf(("%.1f\n" : stdgo.GoString), stdgo.Go.toInterface(_u));
        var _d = (stdgo._internal.math.Math_roundToEven.roundToEven((12.5 : stdgo.GoFloat64)) : stdgo.GoFloat64);
        stdgo._internal.fmt.Fmt_printf.printf(("%.1f\n" : stdgo.GoString), stdgo.Go.toInterface(_d));
    }
