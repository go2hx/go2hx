package stdgo._internal.math.big;
function _tri(_n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
        var _x = stdgo._internal.math.big.Big_newInt.newInt((1i64 : stdgo.GoInt64));
        _x.lsh(_x, _n);
        var _x2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).lsh(_x, _n);
        _x2.sub(_x2, _x);
        _x2.sub(_x2, stdgo._internal.math.big.Big__intOne._intOne);
        return _x2;
    }
