package stdgo._internal.math.big;
function _computeKaratsubaThresholds():Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L74"
        stdgo._internal.fmt.Fmt_printf.printf(("Multiplication times for varying Karatsuba thresholds\n" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L75"
        stdgo._internal.fmt.Fmt_printf.printf(("(run repeatedly for good results)\n" : stdgo.GoString));
        var tb = (stdgo._internal.math.big.Big__measurekaratsuba._measureKaratsuba((1000000000 : stdgo.GoInt)) : stdgo._internal.time.Time_duration.Duration);
        //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L79"
        stdgo._internal.fmt.Fmt_printf.printf(("Tb = %10s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(tb)));
        var _th = (4 : stdgo.GoInt);
        var _th1 = (-1 : stdgo.GoInt);
        var _th2 = (-1 : stdgo.GoInt);
        var _deltaOld:stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
        //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L87"
        {
            var _count = (-1 : stdgo.GoInt);
            while (((_count != (0 : stdgo.GoInt)) && (_th < (128 : stdgo.GoInt) : Bool) : Bool)) {
                var tk = (stdgo._internal.math.big.Big__measurekaratsuba._measureKaratsuba(_th) : stdgo._internal.time.Time_duration.Duration);
var _delta = ((((tb - tk : stdgo._internal.time.Time_duration.Duration)) * (100i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) / tb : stdgo._internal.time.Time_duration.Duration);
//"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L94"
                stdgo._internal.fmt.Fmt_printf.printf(("th = %3d  Tk = %10s  %4d%%" : stdgo.GoString), stdgo.Go.toInterface(_th), stdgo.Go.toInterface(stdgo.Go.asInterface(tk)), stdgo.Go.toInterface(stdgo.Go.asInterface(_delta)));
//"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L97"
                if (((tk < tb : Bool) && (_th1 < (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _th1 = _th;
                    //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L99"
                    stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface(("  break-even point" : stdgo.GoString)));
                };
//"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L103"
                if (((((0i64 : stdgo._internal.time.Time_duration.Duration) < _delta : Bool) && (_delta < _deltaOld : Bool) : Bool) && (_th2 < (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _th2 = _th;
                    //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L105"
                    stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface(("  diminishing return" : stdgo.GoString)));
                };
_deltaOld = _delta;
//"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L109"
                stdgo._internal.fmt.Fmt_println.println();
//"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L112"
                if ((((_th1 >= (0 : stdgo.GoInt) : Bool) && (_th2 >= (0 : stdgo.GoInt) : Bool) : Bool) && (_count < (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _count = (10 : stdgo.GoInt);
                };
//"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L116"
                _th++;
                _count--;
            };
        };
    }
