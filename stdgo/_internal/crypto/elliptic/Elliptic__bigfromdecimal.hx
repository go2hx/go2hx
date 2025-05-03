package stdgo._internal.crypto.elliptic;
function _bigFromDecimal(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_s?.__copy__(), (10 : stdgo.GoInt)), _b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L282"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L283"
            throw stdgo.Go.toInterface(("crypto/elliptic: internal error: invalid encoding" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/nistec.go#L285"
        return _b;
    }
