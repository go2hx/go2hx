package stdgo._internal.crypto.ecdsa;
function verify(_pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>, _hash:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _s:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L119"
        if (((_r.sign() <= (0 : stdgo.GoInt) : Bool) || (_s.sign() <= (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L120"
            return false;
        };
        var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__encodesignature._encodeSignature(_r.bytes(), _s.bytes()), _sig:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L123"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L124"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L126"
        return stdgo._internal.crypto.ecdsa.Ecdsa_verifyasn1.verifyASN1(_pub, _hash, _sig);
    }
