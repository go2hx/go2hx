package stdgo._internal.math.big;
function benchmarkGCD1000x1000(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        stdgo._internal.math.big.Big__runGCD._runGCD(_b, (1000u32 : stdgo.GoUInt), (1000u32 : stdgo.GoUInt));
    }
