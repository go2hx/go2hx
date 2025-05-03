package stdgo._internal.math.big;
function benchmarkNatSqr(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L748"
        for (__8 => _n in stdgo._internal.math.big.Big__sqrbenchsizes._sqrBenchSizes) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L749"
            if ((stdgo._internal.math.big.Big__isracebuilder._isRaceBuilder && (_n > (1000 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L750"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L752"
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L753"
                stdgo._internal.math.big.Big__benchmarknatsqr._benchmarkNatSqr(_b, _n);
            });
        };
    }
