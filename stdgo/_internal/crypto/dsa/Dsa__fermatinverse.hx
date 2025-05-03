package stdgo._internal.crypto.dsa;
function _fermatInverse(_k:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, p:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        var _two = stdgo._internal.math.big.Big_newint.newInt((2i64 : stdgo.GoInt64));
        var _pMinus2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub(p, _two);
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L191"
        return (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).exp(_k, _pMinus2, p);
    }
