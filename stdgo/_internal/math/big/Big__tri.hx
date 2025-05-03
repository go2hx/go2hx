package stdgo._internal.math.big;
function _tri(_n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        var _x = stdgo._internal.math.big.Big_newint.newInt((1i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1464"
        _x.lsh(_x, _n);
        var _x2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).lsh(_x, _n);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1466"
        _x2.sub(_x2, _x);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1467"
        _x2.sub(_x2, stdgo._internal.math.big.Big__intone._intOne);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1468"
        return _x2;
    }
