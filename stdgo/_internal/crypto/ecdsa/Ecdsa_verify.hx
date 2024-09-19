package stdgo._internal.crypto.ecdsa;
function verify(_pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>, _hash:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _s:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Bool {
        if (((_r.sign() <= (0 : stdgo.GoInt) : Bool) || (_s.sign() <= (0 : stdgo.GoInt) : Bool) : Bool)) {
            return false;
        };
        var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__encodeSignature._encodeSignature(_r.bytes(), _s.bytes()), _sig:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        return stdgo._internal.crypto.ecdsa.Ecdsa_verifyASN1.verifyASN1(_pub, _hash, _sig);
    }
