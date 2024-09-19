package stdgo._internal.math.big;
function _altBit(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _i:stdgo.GoInt):stdgo.GoUInt {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).rsh(_x, (_i : stdgo.GoUInt));
        _z = _z.and(_z, stdgo._internal.math.big.Big_newInt.newInt((1i64 : stdgo.GoInt64)));
        if (_z.cmp((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)) != ((0 : stdgo.GoInt))) {
            return (1u32 : stdgo.GoUInt);
        };
        return (0u32 : stdgo.GoUInt);
    }
