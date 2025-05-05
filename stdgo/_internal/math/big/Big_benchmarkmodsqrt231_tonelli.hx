package stdgo._internal.math.big;
function benchmarkModSqrt231_Tonelli(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _p = stdgo._internal.math.big.Big__tri._tri((231u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1491"
        _p.sub(_p, stdgo._internal.math.big.Big__intone._intOne);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1492"
        _p.sub(_p, stdgo._internal.math.big.Big__intone._intOne);
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setUint64((7i64 : stdgo.GoUInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1494"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1495"
                _x.setUint64((7i64 : stdgo.GoUInt64));
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1496"
                _x._modSqrtTonelliShanks(_x, _p);
                _i++;
            };
        };
    }
