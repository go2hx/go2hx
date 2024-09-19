package _internal.math.big_test;
function exampleFloat_Cmp():Void {
        var _inf = (stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)) : stdgo.GoFloat64);
        var _zero = (0 : stdgo.GoFloat64);
        var _operands = (new stdgo.Slice<stdgo.GoFloat64>(6, 6, ...[-_inf, (-1.2 : stdgo.GoFloat64), -_zero, (0 : stdgo.GoFloat64), (1.2 : stdgo.GoFloat64), _inf]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("   x     y  cmp" : stdgo.GoString)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("---------------" : stdgo.GoString)));
        for (__0 => _x64 in _operands) {
            var _x = stdgo._internal.math.big.Big_newFloat.newFloat(_x64);
            for (__1 => _y64 in _operands) {
                var _y = stdgo._internal.math.big.Big_newFloat.newFloat(_y64);
                stdgo._internal.fmt.Fmt_printf.printf(("%4g  %4g  %3d\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(_x.cmp(_y)));
            };
            stdgo._internal.fmt.Fmt_println.println();
        };
    }
