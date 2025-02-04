package stdgo._internal.math.big;
function testCalibrate(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        if (!stdgo._internal.math.big.Big__calibrate._calibrate.value) {
            return;
        };
        stdgo._internal.math.big.Big__computekaratsubathresholds._computeKaratsubaThresholds();
        var _minSqr = (stdgo._internal.math.big.Big__computesqrthreshold._computeSqrThreshold((10 : stdgo.GoInt), (30 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt), ("mul(x, x)" : stdgo.GoString), ("basicSqr(x)" : stdgo.GoString)) : stdgo.GoInt);
        var _maxSqr = (stdgo._internal.math.big.Big__computesqrthreshold._computeSqrThreshold((200 : stdgo.GoInt), (500 : stdgo.GoInt), (10 : stdgo.GoInt), (3 : stdgo.GoInt), ("basicSqr(x)" : stdgo.GoString), ("karatsubaSqr(x)" : stdgo.GoString)) : stdgo.GoInt);
        if (_minSqr != ((0 : stdgo.GoInt))) {
            stdgo._internal.fmt.Fmt_printf.printf(("found basicSqrThreshold = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_minSqr));
        } else {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("no basicSqrThreshold found" : stdgo.GoString)));
        };
        if (_maxSqr != ((0 : stdgo.GoInt))) {
            stdgo._internal.fmt.Fmt_printf.printf(("found karatsubaSqrThreshold = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_maxSqr));
        } else {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("no karatsubaSqrThreshold found" : stdgo.GoString)));
        };
    }
