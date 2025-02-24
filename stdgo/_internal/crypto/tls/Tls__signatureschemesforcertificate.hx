package stdgo._internal.crypto.tls;
function _signatureSchemesForCertificate(_version:stdgo.GoUInt16, _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>):stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme> {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert(((@:checkr _cert ?? throw "null pointer dereference").privateKey : stdgo._internal.crypto.Crypto_signer.Signer)) : stdgo._internal.crypto.Crypto_signer.Signer), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.Crypto_signer.Signer), _1 : false };
        }, _priv = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
        };
        var _sigAlgs:stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
        {
            final __type__ = _priv.public_();
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>))) {
                        var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__().value;
                        if (_version != ((772 : stdgo.GoUInt16))) {
                            _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>(4, 4, ...[(1027 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1283 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1539 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (515 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                            break;
                        };
                        {
                            final __value__ = (@:checkr _pub ?? throw "null pointer dereference").curve;
                            if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p256.p256()))) {
                                _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>(1, 1, ...[(1027 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p384.p384()))) {
                                _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>(1, 1, ...[(1283 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p521.p521()))) {
                                _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>(1, 1, ...[(1539 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                            } else {
                                return (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>))) {
                        var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__().value;
                        var _size = (@:check2r _pub.size() : stdgo.GoInt);
                        _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>((0 : stdgo.GoInt).toBasic(), (stdgo._internal.crypto.tls.Tls__rsasignatureschemes._rsaSignatureSchemes.length)).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                        for (__65 => _candidate in stdgo._internal.crypto.tls.Tls__rsasignatureschemes._rsaSignatureSchemes) {
                            if (((_size >= _candidate._minModulusBytes : Bool) && (_version <= _candidate._maxVersion : Bool) : Bool)) {
                                _sigAlgs = (_sigAlgs.__append__(_candidate._scheme));
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey))) {
                        var _pub:stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey = __type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__() == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__().value;
                        _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>(1, 1, ...[(2055 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                    } else {
                        var _pub:stdgo._internal.crypto.Crypto_publickey.PublicKey = __type__?.__underlying__();
                        return (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                    };
                    break;
                };
            };
        };
        if ((@:checkr _cert ?? throw "null pointer dereference").supportedSignatureAlgorithms != null) {
            var _filteredSigAlgs:stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
            for (__65 => _sigAlg in _sigAlgs) {
                if (stdgo._internal.crypto.tls.Tls__issupportedsignaturealgorithm._isSupportedSignatureAlgorithm(_sigAlg, (@:checkr _cert ?? throw "null pointer dereference").supportedSignatureAlgorithms)) {
                    _filteredSigAlgs = (_filteredSigAlgs.__append__(_sigAlg));
                };
            };
            return _filteredSigAlgs;
        };
        return _sigAlgs;
    }
