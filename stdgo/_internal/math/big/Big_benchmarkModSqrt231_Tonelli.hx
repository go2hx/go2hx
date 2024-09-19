package stdgo._internal.math.big;
function benchmarkModSqrt231_Tonelli(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _p = stdgo._internal.math.big.Big__tri._tri((231u32 : stdgo.GoUInt));
        _p.sub(_p, stdgo._internal.math.big.Big__intOne._intOne);
        _p.sub(_p, stdgo._internal.math.big.Big__intOne._intOne);
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setUint64((7i64 : stdgo.GoUInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x.setUint64((7i64 : stdgo.GoUInt64));
                _x._modSqrtTonelliShanks(_x, _p);
            });
        };
    }
