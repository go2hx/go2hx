package stdgo._internal.math.big;
function benchmarkBitsetOrig(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        stdgo._internal.math.big.Big__altSetBit._altSetBit(_z, _z, (512 : stdgo.GoInt), (1u32 : stdgo.GoUInt));
        _b.resetTimer();
        {
            var _i = (_b.n - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.math.big.Big__altSetBit._altSetBit(_z, _z, (_i & (512 : stdgo.GoInt) : stdgo.GoInt), (1u32 : stdgo.GoUInt));
                _i--;
            };
        };
    }
