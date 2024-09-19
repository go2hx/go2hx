package stdgo._internal.math.big;
function benchmarkBitset(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        _z.setBit(_z, (512 : stdgo.GoInt), (1u32 : stdgo.GoUInt));
        _b.resetTimer();
        {
            var _i = (_b.n - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _z.setBit(_z, (_i & (512 : stdgo.GoInt) : stdgo.GoInt), (1u32 : stdgo.GoUInt));
            });
        };
    }
