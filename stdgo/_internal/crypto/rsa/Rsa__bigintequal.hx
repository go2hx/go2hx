package stdgo._internal.crypto.rsa;
function _bigIntEqual(_a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L149"
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_a.bytes(), _b.bytes()) == ((1 : stdgo.GoInt));
    }
