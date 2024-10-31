package stdgo._internal.math.big;
function benchmarkModSqrt225_3Mod4(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _p = stdgo._internal.math.big.Big__tri._tri((225u32 : stdgo.GoUInt));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setUint64((2i64 : stdgo.GoUInt64));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                _x.setUint64((2i64 : stdgo.GoUInt64));
_x._modSqrt3Mod4Prime(_x, _p);
                _i++;
            };
        };
    }
