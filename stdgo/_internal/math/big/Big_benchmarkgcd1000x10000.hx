package stdgo._internal.math.big;
function benchmarkGCD1000x10000(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        stdgo._internal.math.big.Big__rungcd._runGCD(_b, (1000u32 : stdgo.GoUInt), (10000u32 : stdgo.GoUInt));
    }
