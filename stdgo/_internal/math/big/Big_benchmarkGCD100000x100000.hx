package stdgo._internal.math.big;
function benchmarkGCD100000x100000(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        stdgo._internal.math.big.Big__runGCD._runGCD(_b, (100000u32 : stdgo.GoUInt), (100000u32 : stdgo.GoUInt));
    }
