package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function example_printers():Void {
        var __0 = (3 : stdgo.GoFloat64), __1 = (4 : stdgo.GoFloat64);
var _b = __1, _a = __0;
        var _h = (stdgo._internal.math.Math_hypot.hypot(_a, _b) : stdgo.GoFloat64);
        stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface(("The vector (" : stdgo.GoString)), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface((") has length " : stdgo.GoString)), stdgo.Go.toInterface(_h), stdgo.Go.toInterface((".\n" : stdgo.GoString)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("The vector (" : stdgo.GoString)), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface((") has length" : stdgo.GoString)), stdgo.Go.toInterface(_h), stdgo.Go.toInterface(("." : stdgo.GoString)));
        stdgo._internal.fmt.Fmt_printf.printf(("The vector (%g %g) has length %g.\n" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_h));
    }
