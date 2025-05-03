package stdgo._internal.math.big;
function _computeSqrThreshold(_from:stdgo.GoInt, _to:stdgo.GoInt, _step:stdgo.GoInt, _nruns:stdgo.GoInt, _lower:stdgo.GoString, _upper:stdgo.GoString):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L146"
        stdgo._internal.fmt.Fmt_printf.printf(("Calibrating threshold between %s and %s\n" : stdgo.GoString), stdgo.Go.toInterface(_lower), stdgo.Go.toInterface(_upper));
        //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L147"
        stdgo._internal.fmt.Fmt_printf.printf(("Looking for a timing difference for x between %d - %d words by %d step\n" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_step));
        var _initPos:Bool = false;
        var _threshold:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L150"
        {
            var _i = (_from : stdgo.GoInt);
            while ((_i <= _to : Bool)) {
                var _baseline = (stdgo._internal.math.big.Big__measuresqr._measureSqr(_i, _nruns, _lower.__copy__()) : stdgo._internal.time.Time_duration.Duration);
var _testval = (stdgo._internal.math.big.Big__measuresqr._measureSqr(_i, _nruns, _upper.__copy__()) : stdgo._internal.time.Time_duration.Duration);
var _pos = (_baseline > _testval : Bool);
var _delta = (_baseline - _testval : stdgo._internal.time.Time_duration.Duration);
var _percent = ((_delta * (100i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) / _baseline : stdgo._internal.time.Time_duration.Duration);
//"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L156"
                stdgo._internal.fmt.Fmt_printf.printf(("words = %3d deltaT = %10s (%4d%%) is %s better: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_delta)), stdgo.Go.toInterface(stdgo.Go.asInterface(_percent)), stdgo.Go.toInterface(_upper), stdgo.Go.toInterface(_pos));
//"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L157"
                if (_i == (_from)) {
                    _initPos = _pos;
                };
//"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L160"
                if (((_threshold == (0 : stdgo.GoInt)) && (_pos != _initPos) : Bool)) {
                    _threshold = _i;
                    //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L162"
                    stdgo._internal.fmt.Fmt_printf.printf(("  threshold  found" : stdgo.GoString));
                };
//"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L164"
                stdgo._internal.fmt.Fmt_println.println();
                _i = (_i + (_step) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L167"
        if (_threshold != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L168"
            stdgo._internal.fmt.Fmt_printf.printf(("Found threshold = %d between %d - %d\n" : stdgo.GoString), stdgo.Go.toInterface(_threshold), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L170"
            stdgo._internal.fmt.Fmt_printf.printf(("Found NO threshold between %d - %d\n" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/calibrate_test.go#L172"
        return _threshold;
    }
