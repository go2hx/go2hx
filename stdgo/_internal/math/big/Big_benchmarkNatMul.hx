package stdgo._internal.math.big;
function benchmarkNatMul(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__8 => _n in stdgo._internal.math.big.Big__mulBenchSizes._mulBenchSizes) {
            if ((stdgo._internal.math.big.Big__isRaceBuilder._isRaceBuilder && (_n > (1000 : stdgo.GoInt) : Bool) : Bool)) {
                continue;
            };
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                stdgo._internal.math.big.Big__benchmarkNatMul._benchmarkNatMul(_b, _n);
            });
        };
    }
