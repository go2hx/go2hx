package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function exampleRound():Void {
        var _p = (stdgo._internal.math.Math_round.round((10.5 : stdgo.GoFloat64)) : stdgo.GoFloat64);
        stdgo._internal.fmt.Fmt_printf.printf(("%.1f\n" : stdgo.GoString), stdgo.Go.toInterface(_p));
        var _n = (stdgo._internal.math.Math_round.round((-10.5 : stdgo.GoFloat64)) : stdgo.GoFloat64);
        stdgo._internal.fmt.Fmt_printf.printf(("%.1f\n" : stdgo.GoString), stdgo.Go.toInterface(_n));
    }
