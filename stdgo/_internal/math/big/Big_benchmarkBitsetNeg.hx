package stdgo._internal.math.big;
function benchmarkBitsetNeg(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _z = stdgo._internal.math.big.Big_newInt.newInt((-1i64 : stdgo.GoInt64));
        _z.setBit(_z, (512 : stdgo.GoInt), (0u32 : stdgo.GoUInt));
        _b.resetTimer();
        {
            var _i = (_b.n - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _z.setBit(_z, (_i & (512 : stdgo.GoInt) : stdgo.GoInt), (0u32 : stdgo.GoUInt));
                _i--;
            };
        };
    }
