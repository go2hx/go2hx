package _internal.math.big_test;
function _generatePositiveInt(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _size:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
        var _n = stdgo._internal.math.big.Big_newInt.newInt((1i64 : stdgo.GoInt64));
        _n.lsh(_n, (_rand.intn((_size * (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoUInt));
        _n.rand(_rand, _n);
        return _n;
    }
