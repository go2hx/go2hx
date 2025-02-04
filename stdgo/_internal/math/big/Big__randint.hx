package stdgo._internal.math.big;
function _randInt(_r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _size:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        var _n = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).lsh(stdgo._internal.math.big.Big__intone._intOne, (_size - (1u32 : stdgo.GoUInt) : stdgo.GoUInt));
        var _x = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).rand(_r, _n);
        return @:check2r _x.add(_x, _n);
    }
