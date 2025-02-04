package stdgo._internal.math.big;
function _benchmarkIntSqr(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _nwords:stdgo.GoInt):Void {
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        (@:checkr _x ?? throw "null pointer dereference")._abs = stdgo._internal.math.big.Big__rndnat._rndNat(_nwords);
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _t.mul(_x, _x);
                _i++;
            };
        };
    }
