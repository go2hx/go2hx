package stdgo._internal.math.big;
function benchmarkGCD10000x10000(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/gcd_test.go#L62"
        stdgo._internal.math.big.Big__rungcd._runGCD(_b, (10000u32 : stdgo.GoUInt), (10000u32 : stdgo.GoUInt));
    }
