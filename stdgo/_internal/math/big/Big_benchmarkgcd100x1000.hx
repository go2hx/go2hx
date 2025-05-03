package stdgo._internal.math.big;
function benchmarkGCD100x1000(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/gcd_test.go#L56"
        stdgo._internal.math.big.Big__rungcd._runGCD(_b, (100u32 : stdgo.GoUInt), (1000u32 : stdgo.GoUInt));
    }
