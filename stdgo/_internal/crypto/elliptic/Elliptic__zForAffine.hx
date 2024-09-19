package stdgo._internal.crypto.elliptic;
function _zForAffine(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        if (((_x.sign() != (0 : stdgo.GoInt)) || (_y.sign() != (0 : stdgo.GoInt)) : Bool)) {
            _z.setInt64((1i64 : stdgo.GoInt64));
        };
        return _z;
    }
