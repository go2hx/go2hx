package stdgo._internal.crypto.x509;
function _checkSignature(_algo:stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm, _signed:stdgo.Slice<stdgo.GoUInt8>, _signature:stdgo.Slice<stdgo.GoUInt8>, _publicKey:stdgo._internal.crypto.Crypto_publickey.PublicKey, _allowSHA1:Bool):stdgo.Error {
        var _err = (null : stdgo.Error);
        var _hashType:stdgo._internal.crypto.Crypto_hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash);
        var _pubKeyAlgo:stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
        for (__1 => _details in stdgo._internal.crypto.x509.X509__signaturealgorithmdetails._signatureAlgorithmDetails) {
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
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (0u32 : stdgo._internal.crypto.Crypto_hash.Hash)))) {
                        if (_pubKeyAlgo != ((4 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
                            return _err = stdgo._internal.crypto.x509.X509_errunsupportedalgorithm.errUnsupportedAlgorithm;
                        };
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (2u32 : stdgo._internal.crypto.Crypto_hash.Hash)))) {
                        return _err = stdgo.Go.asInterface((_algo : stdgo._internal.crypto.x509.X509_insecurealgorithmerror.InsecureAlgorithmError));
                        break;
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (3u32 : stdgo._internal.crypto.Crypto_hash.Hash)))) {
                        if (!_allowSHA1) {
                            if (@:check2r stdgo._internal.crypto.x509.X509__x509sha1._x509sha1.value() != (("1" : stdgo.GoString))) {
                                return _err = stdgo.Go.asInterface((_algo : stdgo._internal.crypto.x509.X509_insecurealgorithmerror.InsecureAlgorithmError));
                            };
                            @:check2r stdgo._internal.crypto.x509.X509__x509sha1._x509sha1.incNonDefault();
                        };
                        @:fallthrough {
                            __switchIndex__ = 3;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else {
                        if (!_hashType.available()) {
                            return _err = stdgo._internal.crypto.x509.X509_errunsupportedalgorithm.errUnsupportedAlgorithm;
                        };
                        var _h = (_hashType.new_() : stdgo._internal.hash.Hash_hash.Hash);
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
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__().value;
                if (_pubKeyAlgo != ((1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
                    return _err = stdgo._internal.crypto.x509.X509__signaturepublickeyalgomismatcherror._signaturePublicKeyAlgoMismatchError(_pubKeyAlgo, stdgo.Go.toInterface(stdgo.Go.asInterface(_pub)));
                };
                if (_algo._isRSAPSS()) {
                    return _err = stdgo._internal.crypto.rsa.Rsa_verifypss.verifyPSS(_pub, _hashType, _signed, _signature, (stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt) } : stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>));
                } else {
                    return _err = stdgo._internal.crypto.rsa.Rsa_verifypkcs1v15.verifyPKCS1v15(_pub, _hashType, _signed, _signature);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__().value;
                if (_pubKeyAlgo != ((3 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
                    return _err = stdgo._internal.crypto.x509.X509__signaturepublickeyalgomismatcherror._signaturePublicKeyAlgoMismatchError(_pubKeyAlgo, stdgo.Go.toInterface(stdgo.Go.asInterface(_pub)));
                };
                if (!stdgo._internal.crypto.ecdsa.Ecdsa_verifyasn1.verifyASN1(_pub, _signed, _signature)) {
                    return _err = stdgo._internal.errors.Errors_new_.new_(("x509: ECDSA verification failure" : stdgo.GoString));
                };
                return _err;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey))) {
                var _pub:stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey = __type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__() == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__().value;
                if (_pubKeyAlgo != ((4 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
                    return _err = stdgo._internal.crypto.x509.X509__signaturepublickeyalgomismatcherror._signaturePublicKeyAlgoMismatchError(_pubKeyAlgo, stdgo.Go.toInterface(stdgo.Go.asInterface(_pub)));
                };
                if (!stdgo._internal.crypto.ed25519.Ed25519_verify.verify(_pub, _signed, _signature)) {
                    return _err = stdgo._internal.errors.Errors_new_.new_(("x509: Ed25519 verification failure" : stdgo.GoString));
                };
                return _err;
            };
        };
        return _err = stdgo._internal.crypto.x509.X509_errunsupportedalgorithm.errUnsupportedAlgorithm;
    }
