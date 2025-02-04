package stdgo._internal.math.big;
function benchmarkModSqrt225_Tonelli(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _p = stdgo._internal.math.big.Big__tri._tri((225u32 : stdgo.GoUInt));
        var _x = stdgo._internal.math.big.Big_newint.newInt((2i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _x.setUint64((2i64 : stdgo.GoUInt64));
@:check2r _x._modSqrtTonelliShanks(_x, _p);
                _i++;
            };
        };
    }
