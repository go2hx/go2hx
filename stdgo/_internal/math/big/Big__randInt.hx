package stdgo._internal.math.big;
function _randInt(_r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _size:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
        var _n = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).lsh(stdgo._internal.math.big.Big__intOne._intOne, (_size - (1u32 : stdgo.GoUInt) : stdgo.GoUInt));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).rand(_r, _n);
        return _x.add(_x, _n);
    }
