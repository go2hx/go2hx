package stdgo._internal.math.big;
function _tri(_n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        var _x = stdgo._internal.math.big.Big_newint.newInt((1i64 : stdgo.GoInt64));
        @:check2r _x.lsh(_x, _n);
        var _x2 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).lsh(_x, _n);
        @:check2r _x2.sub(_x2, _x);
        @:check2r _x2.sub(_x2, stdgo._internal.math.big.Big__intone._intOne);
        return _x2;
    }
