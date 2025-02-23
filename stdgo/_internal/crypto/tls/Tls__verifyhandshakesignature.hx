package stdgo._internal.crypto.tls;
function _verifyHandshakeSignature(_sigType:stdgo.GoUInt8, _pubkey:stdgo._internal.crypto.Crypto_publickey.PublicKey, _hashFunc:stdgo._internal.crypto.Crypto_hash.Hash, _signed:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        {
            final __value__ = _sigType;
            if (__value__ == ((227 : stdgo.GoUInt8))) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_pubkey : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>), _1 : false };
                }, _pubKey = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("expected an ECDSA public key, got %T" : stdgo.GoString), stdgo.Go.toInterface(_pubkey));
                };
                if (!stdgo._internal.crypto.ecdsa.Ecdsa_verifyasn1.verifyASN1(_pubKey, _signed, _sig)) {
                    return stdgo._internal.errors.Errors_new_.new_(("ECDSA verification failure" : stdgo.GoString));
                };
            } else if (__value__ == ((228 : stdgo.GoUInt8))) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_pubkey : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey)) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey), _1 : true };
                } catch(_) {
                    { _0 : (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey), _1 : false };
                }, _pubKey = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("expected an Ed25519 public key, got %T" : stdgo.GoString), stdgo.Go.toInterface(_pubkey));
                };
                if (!stdgo._internal.crypto.ed25519.Ed25519_verify.verify(_pubKey, _signed, _sig)) {
                    return stdgo._internal.errors.Errors_new_.new_(("Ed25519 verification failure" : stdgo.GoString));
                };
            } else if (__value__ == ((225 : stdgo.GoUInt8))) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_pubkey : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : false };
                }, _pubKey = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("expected an RSA public key, got %T" : stdgo.GoString), stdgo.Go.toInterface(_pubkey));
                };
                {
                    var _err = (stdgo._internal.crypto.rsa.Rsa_verifypkcs1v15.verifyPKCS1v15(_pubKey, _hashFunc, _signed, _sig) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            } else if (__value__ == ((226 : stdgo.GoUInt8))) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_pubkey : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : false };
                }, _pubKey = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("expected an RSA public key, got %T" : stdgo.GoString), stdgo.Go.toInterface(_pubkey));
                };
                var _signOpts = (stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt) } : stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>);
                {
                    var _err = (stdgo._internal.crypto.rsa.Rsa_verifypss.verifyPSS(_pubKey, _hashFunc, _signed, _sig, _signOpts) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            } else {
                return stdgo._internal.errors.Errors_new_.new_(("internal error: unknown signature type" : stdgo.GoString));
            };
        };
        return (null : stdgo.Error);
    }
