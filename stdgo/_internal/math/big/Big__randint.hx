package stdgo._internal.math.big;
function _randInt(_r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _size:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        var _n = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).lsh(stdgo._internal.math.big.Big__intone._intOne, (_size - (1u32 : stdgo.GoUInt) : stdgo.GoUInt));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).rand(_r, _n);
        //"file:///home/runner/.go/go1.21.3/src/math/big/gcd_test.go#L19"
        return _x.add(_x, _n);
    }
