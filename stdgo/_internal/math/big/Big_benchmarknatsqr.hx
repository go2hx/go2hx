package stdgo._internal.math.big;
function benchmarkNatSqr(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        for (__8 => _n in stdgo._internal.math.big.Big__sqrbenchsizes._sqrBenchSizes) {
            if ((stdgo._internal.math.big.Big__isracebuilder._isRaceBuilder && (_n > (1000 : stdgo.GoInt) : Bool) : Bool)) {
                continue;
            };
            @:check2r _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                stdgo._internal.math.big.Big__benchmarknatsqr._benchmarkNatSqr(_b, _n);
            });
        };
    }
