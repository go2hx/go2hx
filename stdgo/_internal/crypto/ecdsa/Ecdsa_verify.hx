package stdgo._internal.crypto.ecdsa;
function verify(_pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>, _hash:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _s:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        if (((@:check2r _r.sign() <= (0 : stdgo.GoInt) : Bool) || (@:check2r _s.sign() <= (0 : stdgo.GoInt) : Bool) : Bool)) {
            return false;
        };
        var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__encodesignature._encodeSignature(@:check2r _r.bytes(), @:check2r _s.bytes()), _sig:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        return stdgo._internal.crypto.ecdsa.Ecdsa_verifyasn1.verifyASN1(_pub, _hash, _sig);
    }
