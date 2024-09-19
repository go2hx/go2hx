package stdgo._internal.math.big;
function benchmarkBitsetNegOrig(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _z = stdgo._internal.math.big.Big_newInt.newInt((-1i64 : stdgo.GoInt64));
        stdgo._internal.math.big.Big__altSetBit._altSetBit(_z, _z, (512 : stdgo.GoInt), (0u32 : stdgo.GoUInt));
        _b.resetTimer();
        {
            var _i = (_b.n - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                stdgo._internal.math.big.Big__altSetBit._altSetBit(_z, _z, (_i & (512 : stdgo.GoInt) : stdgo.GoInt), (0u32 : stdgo.GoUInt));
            });
        };
    }
