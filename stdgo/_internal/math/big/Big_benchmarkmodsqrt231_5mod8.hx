package stdgo._internal.math.big;
function benchmarkModSqrt231_5Mod8(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _p = stdgo._internal.math.big.Big__tri._tri((231u32 : stdgo.GoUInt));
        @:check2r _p.sub(_p, stdgo._internal.math.big.Big__intone._intOne);
        @:check2r _p.sub(_p, stdgo._internal.math.big.Big__intone._intOne);
        var _x = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setUint64((7i64 : stdgo.GoUInt64));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _x.setUint64((7i64 : stdgo.GoUInt64));
@:check2r _x._modSqrt5Mod8Prime(_x, _p);
                _i++;
            };
        };
    }
