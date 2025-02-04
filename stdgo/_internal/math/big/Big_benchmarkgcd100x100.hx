package stdgo._internal.math.big;
function benchmarkGCD100x100(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        stdgo._internal.math.big.Big__rungcd._runGCD(_b, (100u32 : stdgo.GoUInt), (100u32 : stdgo.GoUInt));
    }
