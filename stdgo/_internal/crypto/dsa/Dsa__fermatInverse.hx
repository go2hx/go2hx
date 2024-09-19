package stdgo._internal.crypto.dsa;
function _fermatInverse(_k:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, p:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
        var _two = stdgo._internal.math.big.Big_newInt.newInt((2i64 : stdgo.GoInt64));
        var _pMinus2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).sub(p, _two);
        return (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).exp(_k, _pMinus2, p);
    }
