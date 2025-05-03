package stdgo._internal.crypto.elliptic;
function _zForAffine(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L80"
        if (((_x.sign() != (0 : stdgo.GoInt)) || (_y.sign() != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L81"
            _z.setInt64((1i64 : stdgo.GoInt64));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L83"
        return _z;
    }
