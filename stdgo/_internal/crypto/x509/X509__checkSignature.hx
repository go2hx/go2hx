package stdgo._internal.crypto.x509;
function _checkSignature(_algo:stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm, _signed:stdgo.Slice<stdgo.GoUInt8>, _signature:stdgo.Slice<stdgo.GoUInt8>, _publicKey:stdgo._internal.crypto.Crypto_PublicKey.PublicKey, _allowSHA1:Bool):stdgo.Error {
        var _err = (null : stdgo.Error);
        var _hashType:stdgo._internal.crypto.Crypto_Hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_Hash.Hash);
        var _pubKeyAlgo:stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm);
        for (__1 => _details in stdgo._internal.crypto.x509.X509__signatureAlgorithmDetails._signatureAlgorithmDetails) {
            if (_details._algo == (_algo)) {
                _hashType = _details._hash;
                _pubKeyAlgo = _details._pubKeyAlgo;
            };
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _hashType;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (0u32 : stdgo._internal.crypto.Crypto_Hash.Hash)))) {
                        if (_pubKeyAlgo != ((4 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm))) {
                            return _err = stdgo._internal.crypto.x509.X509_errUnsupportedAlgorithm.errUnsupportedAlgorithm;
                        };
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (2u32 : stdgo._internal.crypto.Crypto_Hash.Hash)))) {
                        return _err = stdgo.Go.asInterface((_algo : stdgo._internal.crypto.x509.X509_InsecureAlgorithmError.InsecureAlgorithmError));
                        break;
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (3u32 : stdgo._internal.crypto.Crypto_Hash.Hash)))) {
                        if (!_allowSHA1) {
                            if (stdgo._internal.crypto.x509.X509__x509sha1._x509sha1.value() != (("1" : stdgo.GoString))) {
                                return _err = stdgo.Go.asInterface((_algo : stdgo._internal.crypto.x509.X509_InsecureAlgorithmError.InsecureAlgorithmError));
                            };
                            stdgo._internal.crypto.x509.X509__x509sha1._x509sha1.incNonDefault();
                        };
                        @:fallthrough {
                            __switchIndex__ = 3;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else {
                        if (!_hashType.available()) {
                            return _err = stdgo._internal.crypto.x509.X509_errUnsupportedAlgorithm.errUnsupportedAlgorithm;
                        };
                        var _h = (_hashType.new_() : stdgo._internal.hash.Hash_Hash.Hash);
                        _h.write(_signed);
                        _signed = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                        break;
                    };
                };
                break;
            };
        };
        {
            final __type__ = _publicKey;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__.__underlying__().value;
                if (_pubKeyAlgo != ((1 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm))) {
                    return _err = stdgo._internal.crypto.x509.X509__signaturePublicKeyAlgoMismatchError._signaturePublicKeyAlgoMismatchError(_pubKeyAlgo, stdgo.Go.toInterface(stdgo.Go.asInterface(_pub)));
                };
                if (_algo._isRSAPSS()) {
                    return _err = stdgo._internal.crypto.rsa.Rsa_verifyPSS.verifyPSS(_pub, _hashType, _signed, _signature, (stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt) } : stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions>));
                } else {
                    return _err = stdgo._internal.crypto.rsa.Rsa_verifyPKCS1v15.verifyPKCS1v15(_pub, _hashType, _signed, _signature);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__.__underlying__().value;
                if (_pubKeyAlgo != ((3 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm))) {
                    return _err = stdgo._internal.crypto.x509.X509__signaturePublicKeyAlgoMismatchError._signaturePublicKeyAlgoMismatchError(_pubKeyAlgo, stdgo.Go.toInterface(stdgo.Go.asInterface(_pub)));
                };
                if (!stdgo._internal.crypto.ecdsa.Ecdsa_verifyASN1.verifyASN1(_pub, _signed, _signature)) {
                    return _err = stdgo._internal.errors.Errors_new_.new_(("x509: ECDSA verification failure" : stdgo.GoString));
                };
                return _err;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey))) {
                var _pub:stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey = __type__ == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__ == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__.__underlying__().value;
                if (_pubKeyAlgo != ((4 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm))) {
                    return _err = stdgo._internal.crypto.x509.X509__signaturePublicKeyAlgoMismatchError._signaturePublicKeyAlgoMismatchError(_pubKeyAlgo, stdgo.Go.toInterface(stdgo.Go.asInterface(_pub)));
                };
                if (!stdgo._internal.crypto.ed25519.Ed25519_verify.verify(_pub, _signed, _signature)) {
                    return _err = stdgo._internal.errors.Errors_new_.new_(("x509: Ed25519 verification failure" : stdgo.GoString));
                };
                return _err;
            };
        };
        return _err = stdgo._internal.crypto.x509.X509_errUnsupportedAlgorithm.errUnsupportedAlgorithm;
    }
