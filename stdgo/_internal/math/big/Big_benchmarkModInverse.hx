package stdgo._internal.math.big;
function benchmarkModInverse(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _p = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setInt64((1i64 : stdgo.GoInt64));
        _p._abs = _p._abs._shl(_p._abs, (1279u32 : stdgo.GoUInt));
        _p.sub(_p, stdgo._internal.math.big.Big__intOne._intOne);
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).sub(_p, stdgo._internal.math.big.Big__intOne._intOne);
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                _z.modInverse(_x, _p);
                _i++;
            };
        };
    }
