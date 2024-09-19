package stdgo._internal.crypto.tls;
function _signatureSchemesForCertificate(_version:stdgo.GoUInt16, _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>):stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme> {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_cert.privateKey : stdgo._internal.crypto.Crypto_Signer.Signer)) : stdgo._internal.crypto.Crypto_Signer.Signer), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.Crypto_Signer.Signer), _1 : false };
        }, _priv = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
        };
        var _sigAlgs:stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
        {
            final __type__ = _priv.public_();
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>))) {
                        var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__.__underlying__().value;
                        if (_version != ((772 : stdgo.GoUInt16))) {
                            _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>(4, 4, ...[(1027 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme), (1283 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme), (1539 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme), (515 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
                            break;
                        };
                        {
                            final __value__ = _pub.curve;
                            if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p256.p256()))) {
                                _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>(1, 1, ...[(1027 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
                            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p384.p384()))) {
                                _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>(1, 1, ...[(1283 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
                            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p521.p521()))) {
                                _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>(1, 1, ...[(1539 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
                            } else {
                                return (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>))) {
                        var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__.__underlying__().value;
                        var _size = (_pub.size() : stdgo.GoInt);
                        _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>((0 : stdgo.GoInt).toBasic(), (stdgo._internal.crypto.tls.Tls__rsaSignatureSchemes._rsaSignatureSchemes.length)).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
                        for (__65 => _candidate in stdgo._internal.crypto.tls.Tls__rsaSignatureSchemes._rsaSignatureSchemes) {
                            if (((_size >= _candidate._minModulusBytes : Bool) && (_version <= _candidate._maxVersion : Bool) : Bool)) {
                                _sigAlgs = (_sigAlgs.__append__(_candidate._scheme));
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey))) {
                        var _pub:stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey = __type__ == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__ == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__.__underlying__().value;
                        _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>(1, 1, ...[(2055 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
                    } else {
                        var _pub:stdgo._internal.crypto.Crypto_PublicKey.PublicKey = __type__?.__underlying__();
                        return (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
                    };
                    break;
                };
            };
        };
        if (_cert.supportedSignatureAlgorithms != null) {
            var _filteredSigAlgs:stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
            for (__65 => _sigAlg in _sigAlgs) {
                if (stdgo._internal.crypto.tls.Tls__isSupportedSignatureAlgorithm._isSupportedSignatureAlgorithm(_sigAlg, _cert.supportedSignatureAlgorithms)) {
                    _filteredSigAlgs = (_filteredSigAlgs.__append__(_sigAlg));
                };
            };
            return _filteredSigAlgs;
        };
        return _sigAlgs;
    }