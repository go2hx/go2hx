package stdgo._internal.math.big;
function benchmarkModInverse(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _p = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setInt64((1i64 : stdgo.GoInt64));
        (@:checkr _p ?? throw "null pointer dereference")._abs = (@:checkr _p ?? throw "null pointer dereference")._abs._shl((@:checkr _p ?? throw "null pointer dereference")._abs, (1279u32 : stdgo.GoUInt));
        @:check2r _p.sub(_p, stdgo._internal.math.big.Big__intone._intOne);
        var _x = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub(_p, stdgo._internal.math.big.Big__intone._intOne);
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _z.modInverse(_x, _p);
                _i++;
            };
        };
    }
