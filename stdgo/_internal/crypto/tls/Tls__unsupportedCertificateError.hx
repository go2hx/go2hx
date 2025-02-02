package stdgo._internal.crypto.tls;
function _unsupportedCertificateError(_cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>):stdgo.Error {
        {
            final __type__ = (@:checkr _cert ?? throw "null pointer dereference").privateKey;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey))) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: unsupported certificate: private key is %T, expected *%T" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _cert ?? throw "null pointer dereference").privateKey), stdgo.Go.toInterface((@:checkr _cert ?? throw "null pointer dereference").privateKey));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_PrivateKey.PrivateKey>))) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: unsupported certificate: private key is *ed25519.PrivateKey, expected ed25519.PrivateKey" : stdgo.GoString));
            };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert(((@:checkr _cert ?? throw "null pointer dereference").privateKey : stdgo._internal.crypto.Crypto_Signer.Signer)) : stdgo._internal.crypto.Crypto_Signer.Signer), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.Crypto_Signer.Signer), _1 : false };
        }, _signer = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: certificate private key (%T) does not implement crypto.Signer" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _cert ?? throw "null pointer dereference").privateKey));
        };
        {
            final __type__ = _signer.public_();
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__.__underlying__().value;
                {
                    final __value__ = (@:checkr _pub ?? throw "null pointer dereference").curve;
                    if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p256.p256()))) {} else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p384.p384()))) {} else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p521.p521()))) {} else {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: unsupported certificate curve (%s)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _pub ?? throw "null pointer dereference").curve.params().name));
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__.__underlying__().value;
                return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: certificate RSA key size too small for supported signature algorithms" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey))) {
                var _pub:stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey = __type__ == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__ == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__.__underlying__().value;
            } else {
                var _pub:stdgo._internal.crypto.Crypto_PublicKey.PublicKey = __type__?.__underlying__();
                return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: unsupported certificate key (%T)" : stdgo.GoString), stdgo.Go.toInterface(_pub));
            };
        };
        if ((@:checkr _cert ?? throw "null pointer dereference").supportedSignatureAlgorithms != null) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: peer doesn\'t support the certificate custom signature algorithms" : stdgo.GoString));
        };
        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: internal error: unsupported key (%T)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _cert ?? throw "null pointer dereference").privateKey));
    }
