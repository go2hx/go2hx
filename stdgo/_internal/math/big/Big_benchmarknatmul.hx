package stdgo._internal.math.big;
function benchmarkNatMul(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L234"
        for (__8 => _n in stdgo._internal.math.big.Big__mulbenchsizes._mulBenchSizes) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L235"
            if ((stdgo._internal.math.big.Big__isracebuilder._isRaceBuilder && (_n > (1000 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L236"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L238"
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L239"
                stdgo._internal.math.big.Big__benchmarknatmul._benchmarkNatMul(_b, _n);
            });
        };
    }
