package stdgo._internal.crypto.rsa;
function verifyPSS(_pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>, _hash:stdgo._internal.crypto.Crypto_hash.Hash, _digest:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L342"
        if (false) {
            var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringpublickey._boringPublicKey(_pub), _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L344"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L345"
                return _err;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L347"
            {
                var _err = (stdgo._internal.crypto.internal.boring.Boring_verifyrsapss.verifyRSAPSS(_bkey, _hash, _digest, _sig, _opts._saltLength()) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L348"
                    return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L350"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L352"
        if ((_sig.length) != (_pub.size())) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L353"
            return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L358"
        if ((_opts._saltLength() < (-1 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L359"
            return stdgo._internal.crypto.rsa.Rsa__invalidsaltlenerr._invalidSaltLenErr;
        };
        var _emBits = ((@:checkr _pub ?? throw "null pointer dereference").n.bitLen() - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _emLen = (((_emBits + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        var __tmp__ = stdgo._internal.crypto.rsa.Rsa__encrypt._encrypt(_pub, _sig), _em:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L365"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L366"
            return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L374"
        while ((((_em.length) > _emLen : Bool) && ((_em.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L375"
            if (_em[(0 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L376"
                return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
            };
            _em = (_em.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L381"
        return stdgo._internal.crypto.rsa.Rsa__emsapssverify._emsaPSSVerify(_digest, _em, _emBits, _opts._saltLength(), _hash.new_());
    }
