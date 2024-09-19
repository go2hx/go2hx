package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function exampleModf():Void {
        var __tmp__ = stdgo._internal.math.Math_modf.modf((3.14 : stdgo.GoFloat64)), _int:stdgo.GoFloat64 = __tmp__._0, _frac:stdgo.GoFloat64 = __tmp__._1;
        stdgo._internal.fmt.Fmt_printf.printf(("%.2f, %.2f\n" : stdgo.GoString), stdgo.Go.toInterface(_int), stdgo.Go.toInterface(_frac));
        {
            var __tmp__ = stdgo._internal.math.Math_modf.modf((-2.71 : stdgo.GoFloat64));
            _int = __tmp__._0;
            _frac = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%.2f, %.2f\n" : stdgo.GoString), stdgo.Go.toInterface(_int), stdgo.Go.toInterface(_frac));
    }
