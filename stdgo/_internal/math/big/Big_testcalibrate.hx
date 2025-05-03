package stdgo._internal.math.big;
function testCalibrate(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L38"
        if (!stdgo._internal.math.big.Big__calibrate._calibrate.value) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L39"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L42"
        stdgo._internal.math.big.Big__computekaratsubathresholds._computeKaratsubaThresholds();
        var _minSqr = (stdgo._internal.math.big.Big__computesqrthreshold._computeSqrThreshold((10 : stdgo.GoInt), (30 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt), ("mul(x, x)" : stdgo.GoString), ("basicSqr(x)" : stdgo.GoString)) : stdgo.GoInt);
        var _maxSqr = (stdgo._internal.math.big.Big__computesqrthreshold._computeSqrThreshold((200 : stdgo.GoInt), (500 : stdgo.GoInt), (10 : stdgo.GoInt), (3 : stdgo.GoInt), ("basicSqr(x)" : stdgo.GoString), ("karatsubaSqr(x)" : stdgo.GoString)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L48"
        if (_minSqr != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L49"
            stdgo._internal.fmt.Fmt_printf.printf(("found basicSqrThreshold = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_minSqr));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L51"
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("no basicSqrThreshold found" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L53"
        if (_maxSqr != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L54"
            stdgo._internal.fmt.Fmt_printf.printf(("found karatsubaSqrThreshold = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_maxSqr));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L56"
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("no karatsubaSqrThreshold found" : stdgo.GoString)));
        };
    }
