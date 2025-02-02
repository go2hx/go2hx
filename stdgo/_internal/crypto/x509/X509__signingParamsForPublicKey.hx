package stdgo._internal.crypto.x509;
function _signingParamsForPublicKey(_pub:stdgo.AnyInterface, _requestedSigAlgo:stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm):{ var _0 : stdgo._internal.crypto.Crypto_Hash.Hash; var _1 : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier; var _2 : stdgo.Error; } {
        var _hashFunc = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_Hash.Hash), _sigAlgo = ({} : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier), _err = (null : stdgo.Error);
        var _pubType:stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm);
        {
            final __type__ = _pub;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__.__underlying__().value;
                _pubType = (1 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm);
                _hashFunc = (5u32 : stdgo._internal.crypto.Crypto_Hash.Hash);
                _sigAlgo.algorithm = stdgo._internal.crypto.x509.X509__oidSignatureSHA256WithRSA._oidSignatureSHA256WithRSA;
                _sigAlgo.parameters = stdgo._internal.encoding.asn1.Asn1_nullRawValue.nullRawValue?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__.__underlying__().value;
                _pubType = (3 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm);
                {
                    final __value__ = (@:checkr _pub ?? throw "null pointer dereference").curve;
                    if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p224.p224())) || stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p256.p256()))) {
                        _hashFunc = (5u32 : stdgo._internal.crypto.Crypto_Hash.Hash);
                        _sigAlgo.algorithm = stdgo._internal.crypto.x509.X509__oidSignatureECDSAWithSHA256._oidSignatureECDSAWithSHA256;
                    } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p384.p384()))) {
                        _hashFunc = (6u32 : stdgo._internal.crypto.Crypto_Hash.Hash);
                        _sigAlgo.algorithm = stdgo._internal.crypto.x509.X509__oidSignatureECDSAWithSHA384._oidSignatureECDSAWithSHA384;
                    } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p521.p521()))) {
                        _hashFunc = (7u32 : stdgo._internal.crypto.Crypto_Hash.Hash);
                        _sigAlgo.algorithm = stdgo._internal.crypto.x509.X509__oidSignatureECDSAWithSHA512._oidSignatureECDSAWithSHA512;
                    } else {
                        _err = stdgo._internal.errors.Errors_new_.new_(("x509: unknown elliptic curve" : stdgo.GoString));
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey))) {
                var _pub:stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey = __type__ == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__ == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__.__underlying__().value;
                _pubType = (4 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm);
                _sigAlgo.algorithm = stdgo._internal.crypto.x509.X509__oidSignatureEd25519._oidSignatureEd25519;
            } else {
                var _pub:stdgo.AnyInterface = __type__?.__underlying__();
                _err = stdgo._internal.errors.Errors_new_.new_(("x509: only RSA, ECDSA and Ed25519 keys supported" : stdgo.GoString));
            };
        };
        if (_err != null) {
            return { _0 : _hashFunc, _1 : _sigAlgo, _2 : _err };
        };
        if (_requestedSigAlgo == ((0 : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm))) {
            return { _0 : _hashFunc, _1 : _sigAlgo, _2 : _err };
        };
        var _found = (false : Bool);
        for (__1 => _details in stdgo._internal.crypto.x509.X509__signatureAlgorithmDetails._signatureAlgorithmDetails) {
            if (_details._algo == (_requestedSigAlgo)) {
                if (_details._pubKeyAlgo != (_pubType)) {
                    _err = stdgo._internal.errors.Errors_new_.new_(("x509: requested SignatureAlgorithm does not match private key type" : stdgo.GoString));
                    return { _0 : _hashFunc, _1 : _sigAlgo, _2 : _err };
                };
                {
                    final __tmp__0 = _details._oid;
                    final __tmp__1 = _details._hash;
                    _sigAlgo.algorithm = __tmp__0;
                    _hashFunc = __tmp__1;
                };
                if (((_hashFunc == (0u32 : stdgo._internal.crypto.Crypto_Hash.Hash)) && (_pubType != (4 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm)) : Bool)) {
                    _err = stdgo._internal.errors.Errors_new_.new_(("x509: cannot sign with hash function requested" : stdgo.GoString));
                    return { _0 : _hashFunc, _1 : _sigAlgo, _2 : _err };
                };
                if (_hashFunc == ((2u32 : stdgo._internal.crypto.Crypto_Hash.Hash))) {
                    _err = stdgo._internal.errors.Errors_new_.new_(("x509: signing with MD5 is not supported" : stdgo.GoString));
                    return { _0 : _hashFunc, _1 : _sigAlgo, _2 : _err };
                };
                if (_requestedSigAlgo._isRSAPSS()) {
                    _sigAlgo.parameters = (stdgo._internal.crypto.x509.X509__hashToPSSParameters._hashToPSSParameters[_hashFunc] ?? ({} : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue))?.__copy__();
                };
                _found = true;
                break;
            };
        };
        if (!_found) {
            _err = stdgo._internal.errors.Errors_new_.new_(("x509: unknown SignatureAlgorithm" : stdgo.GoString));
        };
        return { _0 : _hashFunc, _1 : _sigAlgo, _2 : _err };
    }
