package stdgo._internal.math.big;
function _altBit(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _i:stdgo.GoInt):stdgo.GoUInt {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).rsh(_x, (_i : stdgo.GoUInt));
        _z = _z.and(_z, stdgo._internal.math.big.Big_newint.newInt((1i64 : stdgo.GoInt64)));
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1301"
        if (_z.cmp((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1302"
            return (1u32 : stdgo.GoUInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1304"
        return (0u32 : stdgo.GoUInt);
    }
