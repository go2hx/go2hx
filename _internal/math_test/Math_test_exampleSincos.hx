package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function exampleSincos():Void {
        var __tmp__ = stdgo._internal.math.Math_sincos.sincos((0 : stdgo.GoFloat64)), _sin:stdgo.GoFloat64 = __tmp__._0, _cos:stdgo.GoFloat64 = __tmp__._1;
        stdgo._internal.fmt.Fmt_printf.printf(("%.2f, %.2f" : stdgo.GoString), stdgo.Go.toInterface(_sin), stdgo.Go.toInterface(_cos));
    }
