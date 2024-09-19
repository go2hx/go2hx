package stdgo._internal.math.big;
function benchmarkModSqrt225_Tonelli(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _p = stdgo._internal.math.big.Big__tri._tri((225u32 : stdgo.GoUInt));
        var _x = stdgo._internal.math.big.Big_newInt.newInt((2i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x.setUint64((2i64 : stdgo.GoUInt64));
                _x._modSqrtTonelliShanks(_x, _p);
            });
        };
    }
