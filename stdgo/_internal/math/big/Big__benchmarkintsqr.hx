package stdgo._internal.math.big;
function _benchmarkIntSqr(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _nwords:stdgo.GoInt):Void {
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        (@:checkr _x ?? throw "null pointer dereference")._abs = stdgo._internal.math.big.Big__rndnat._rndNat(_nwords);
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1831"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1832"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1833"
                _t.mul(_x, _x);
                _i++;
            };
        };
    }
