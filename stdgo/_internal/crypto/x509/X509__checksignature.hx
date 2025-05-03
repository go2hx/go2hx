package stdgo._internal.crypto.x509;
function _checkSignature(_algo:stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm, _signed:stdgo.Slice<stdgo.GoUInt8>, _signature:stdgo.Slice<stdgo.GoUInt8>, _publicKey:stdgo._internal.crypto.Crypto_publickey.PublicKey, _allowSHA1:Bool):stdgo.Error {
        var _err = (null : stdgo.Error);
        var _hashType:stdgo._internal.crypto.Crypto_hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash);
        var _pubKeyAlgo:stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L880"
        for (__1 => _details in stdgo._internal.crypto.x509.X509__signaturealgorithmdetails._signatureAlgorithmDetails) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L881"
            if (_details._algo == (_algo)) {
                _hashType = _details._hash;
                _pubKeyAlgo = _details._pubKeyAlgo;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L887"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _hashType;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (0u32 : stdgo._internal.crypto.Crypto_hash.Hash)))) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L889"
                        if (_pubKeyAlgo != ((4 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L890"
                            return _err = stdgo._internal.crypto.x509.X509_errunsupportedalgorithm.errUnsupportedAlgorithm;
                        };
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (2u32 : stdgo._internal.crypto.Crypto_hash.Hash)))) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L893"
                        return _err = stdgo.Go.asInterface((_algo : stdgo._internal.crypto.x509.X509_insecurealgorithmerror.InsecureAlgorithmError));
                        break;
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (3u32 : stdgo._internal.crypto.Crypto_hash.Hash)))) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L896"
                        if (!_allowSHA1) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L897"
                            if (stdgo._internal.crypto.x509.X509__x509sha1._x509sha1.value() != (("1" : stdgo.GoString))) {
                                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L898"
                                return _err = stdgo.Go.asInterface((_algo : stdgo._internal.crypto.x509.X509_insecurealgorithmerror.InsecureAlgorithmError));
                            };
                            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L900"
                            stdgo._internal.crypto.x509.X509__x509sha1._x509sha1.incNonDefault();
                        };
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L902"
                        @:fallthrough {
                            __switchIndex__ = 3;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L904"
                        if (!_hashType.available()) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L905"
                            return _err = stdgo._internal.crypto.x509.X509_errunsupportedalgorithm.errUnsupportedAlgorithm;
                        };
                        var _h = (_hashType.new_() : stdgo._internal.hash.Hash_hash.Hash);
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L908"
                        _h.write(_signed);
                        _signed = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                        break;
                    };
                };
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L912"
        {
            final __type__ = _publicKey;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L914"
                if (_pubKeyAlgo != ((1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L915"
                    return _err = stdgo._internal.crypto.x509.X509__signaturepublickeyalgomismatcherror._signaturePublicKeyAlgoMismatchError(_pubKeyAlgo, stdgo.Go.toInterface(stdgo.Go.asInterface(_pub)));
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L917"
                if (_algo._isRSAPSS()) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L918"
                    return _err = stdgo._internal.crypto.rsa.Rsa_verifypss.verifyPSS(_pub, _hashType, _signed, _signature, (stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt) } : stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L920"
                    return _err = stdgo._internal.crypto.rsa.Rsa_verifypkcs1v15.verifyPKCS1v15(_pub, _hashType, _signed, _signature);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L923"
                if (_pubKeyAlgo != ((3 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L924"
                    return _err = stdgo._internal.crypto.x509.X509__signaturepublickeyalgomismatcherror._signaturePublicKeyAlgoMismatchError(_pubKeyAlgo, stdgo.Go.toInterface(stdgo.Go.asInterface(_pub)));
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L926"
                if (!stdgo._internal.crypto.ecdsa.Ecdsa_verifyasn1.verifyASN1(_pub, _signed, _signature)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L927"
                    return _err = stdgo._internal.errors.Errors_new_.new_(("x509: ECDSA verification failure" : stdgo.GoString));
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L929"
                return _err;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey))) {
                var _pub:stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey = __type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__() == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L931"
                if (_pubKeyAlgo != ((4 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L932"
                    return _err = stdgo._internal.crypto.x509.X509__signaturepublickeyalgomismatcherror._signaturePublicKeyAlgoMismatchError(_pubKeyAlgo, stdgo.Go.toInterface(stdgo.Go.asInterface(_pub)));
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L934"
                if (!stdgo._internal.crypto.ed25519.Ed25519_verify.verify(_pub, _signed, _signature)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L935"
                    return _err = stdgo._internal.errors.Errors_new_.new_(("x509: Ed25519 verification failure" : stdgo.GoString));
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L937"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L939"
        return _err = stdgo._internal.crypto.x509.X509_errunsupportedalgorithm.errUnsupportedAlgorithm;
    }
