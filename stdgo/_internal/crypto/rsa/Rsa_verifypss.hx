package stdgo._internal.crypto.rsa;
function verifyPSS(_pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>, _hash:stdgo._internal.crypto.Crypto_hash.Hash, _digest:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>):stdgo.Error {
        if (false) {
            var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringpublickey._boringPublicKey(_pub), _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            {
                var _err = (stdgo._internal.crypto.internal.boring.Boring_verifyrsapss.verifyRSAPSS(_bkey, _hash, _digest, _sig, @:check2r _opts._saltLength()) : stdgo.Error);
                if (_err != null) {
                    return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
                };
            };
            return (null : stdgo.Error);
        };
        if ((_sig.length) != (@:check2r _pub.size())) {
            return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
        };
        if ((@:check2r _opts._saltLength() < (-1 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.crypto.rsa.Rsa__invalidsaltlenerr._invalidSaltLenErr;
        };
        var _emBits = (@:check2r (@:checkr _pub ?? throw "null pointer dereference").n.bitLen() - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _emLen = (((_emBits + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        var __tmp__ = stdgo._internal.crypto.rsa.Rsa__encrypt._encrypt(_pub, _sig), _em:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
        };
        while ((((_em.length) > _emLen : Bool) && ((_em.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            if (_em[(0 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
            };
            _em = (_em.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return stdgo._internal.crypto.rsa.Rsa__emsapssverify._emsaPSSVerify(_digest, _em, _emBits, @:check2r _opts._saltLength(), _hash.new_());
    }
