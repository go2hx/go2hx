package stdgo._internal.crypto.ecdsa;
function _bigIntEqual(_a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L139"
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_a.bytes(), _b.bytes()) == ((1 : stdgo.GoInt));
    }
