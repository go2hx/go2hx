package _internal.math.big_test;
function exampleRoundingMode():Void {
        var _operands = (new stdgo.Slice<stdgo.GoFloat64>(6, 6, ...[(2.6 : stdgo.GoFloat64), (2.5 : stdgo.GoFloat64), (2.1 : stdgo.GoFloat64), (-2.1 : stdgo.GoFloat64), (-2.5 : stdgo.GoFloat64), (-2.6 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface(("   x" : stdgo.GoString)));
        {
            var _mode = (0 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode);
            stdgo.Go.cfor((_mode <= (5 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode) : Bool), _mode++, {
                stdgo._internal.fmt.Fmt_printf.printf(("  %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)));
            });
        };
        stdgo._internal.fmt.Fmt_println.println();
        for (__0 => _f64 in _operands) {
            stdgo._internal.fmt.Fmt_printf.printf(("%4g" : stdgo.GoString), stdgo.Go.toInterface(_f64));
            {
                var _mode = (0 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode);
                stdgo.Go.cfor((_mode <= (5 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode) : Bool), _mode++, {
                    var _f = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec((2u32 : stdgo.GoUInt)).setMode(_mode).setFloat64(_f64);
                    stdgo._internal.fmt.Fmt_printf.printf(("  %*g" : stdgo.GoString), stdgo.Go.toInterface(((_mode.string() : stdgo.GoString).length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
                });
            };
            stdgo._internal.fmt.Fmt_println.println();
        };
    }
