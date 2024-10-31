package stdgo._internal.math.big;
function _benchmarkIntSqr(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _nwords:stdgo.GoInt):Void {
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        _x._abs = stdgo._internal.math.big.Big__rndNat._rndNat(_nwords);
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                _t.mul(_x, _x);
                _i++;
            };
        };
    }
