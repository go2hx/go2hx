package stdgo._internal.crypto.tls;
function x509keyPair(_certPEMBlock:stdgo.Slice<stdgo.GoUInt8>, _keyPEMBlock:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.tls.Tls_Certificate.Certificate; var _1 : stdgo.Error; } {
        var _fail = (function(_err:stdgo.Error):{ var _0 : stdgo._internal.crypto.tls.Tls_Certificate.Certificate; var _1 : stdgo.Error; } {
            return { _0 : (new stdgo._internal.crypto.tls.Tls_Certificate.Certificate() : stdgo._internal.crypto.tls.Tls_Certificate.Certificate), _1 : _err };
        } : stdgo.Error -> { var _0 : stdgo._internal.crypto.tls.Tls_Certificate.Certificate; var _1 : stdgo.Error; });
        var _cert:stdgo._internal.crypto.tls.Tls_Certificate.Certificate = ({} : stdgo._internal.crypto.tls.Tls_Certificate.Certificate);
        var _skippedBlockTypes:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        while (true) {
            var _certDERBlock:stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block> = (null : stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block>);
            {
                var __tmp__ = stdgo._internal.encoding.pem.Pem_decode.decode(_certPEMBlock);
                _certDERBlock = __tmp__._0;
                _certPEMBlock = __tmp__._1;
            };
            if (_certDERBlock == null || (_certDERBlock : Dynamic).__nil__) {
                break;
            };
            if (_certDERBlock.type == (("CERTIFICATE" : stdgo.GoString))) {
                _cert.certificate = (_cert.certificate.__append__(_certDERBlock.bytes));
            } else {
                _skippedBlockTypes = (_skippedBlockTypes.__append__(_certDERBlock.type?.__copy__()));
            };
        };
        if ((_cert.certificate.length) == ((0 : stdgo.GoInt))) {
            if ((_skippedBlockTypes.length) == ((0 : stdgo.GoInt))) {
                return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: failed to find any PEM data in certificate input" : stdgo.GoString)));
            };
            if (((_skippedBlockTypes.length == (1 : stdgo.GoInt)) && stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_skippedBlockTypes[(0 : stdgo.GoInt)]?.__copy__(), ("PRIVATE KEY" : stdgo.GoString)) : Bool)) {
                return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: failed to find certificate PEM data in certificate input, but did find a private key; PEM inputs may have been switched" : stdgo.GoString)));
            };
            return _fail(stdgo._internal.fmt.Fmt_errorf.errorf(("tls: failed to find \"CERTIFICATE\" PEM block in certificate input after skipping PEM blocks of the following types: %v" : stdgo.GoString), stdgo.Go.toInterface(_skippedBlockTypes)));
        };
        _skippedBlockTypes = (_skippedBlockTypes.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        var _keyDERBlock:stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block> = (null : stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block>);
        while (true) {
            {
                var __tmp__ = stdgo._internal.encoding.pem.Pem_decode.decode(_keyPEMBlock);
                _keyDERBlock = __tmp__._0;
                _keyPEMBlock = __tmp__._1;
            };
            if (_keyDERBlock == null || (_keyDERBlock : Dynamic).__nil__) {
                if ((_skippedBlockTypes.length) == ((0 : stdgo.GoInt))) {
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: failed to find any PEM data in key input" : stdgo.GoString)));
                };
                if (((_skippedBlockTypes.length == (1 : stdgo.GoInt)) && (_skippedBlockTypes[(0 : stdgo.GoInt)] == ("CERTIFICATE" : stdgo.GoString)) : Bool)) {
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: found a certificate rather than a key in the PEM for the private key" : stdgo.GoString)));
                };
                return _fail(stdgo._internal.fmt.Fmt_errorf.errorf(("tls: failed to find PEM block with type ending in \"PRIVATE KEY\" in key input after skipping PEM blocks of the following types: %v" : stdgo.GoString), stdgo.Go.toInterface(_skippedBlockTypes)));
            };
            if (((_keyDERBlock.type == ("PRIVATE KEY" : stdgo.GoString)) || stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_keyDERBlock.type?.__copy__(), (" PRIVATE KEY" : stdgo.GoString)) : Bool)) {
                break;
            };
            _skippedBlockTypes = (_skippedBlockTypes.__append__(_keyDERBlock.type?.__copy__()));
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509_parseCertificate.parseCertificate(_cert.certificate[(0 : stdgo.GoInt)]), _x509Cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _fail(_err);
        };
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__parsePrivateKey._parsePrivateKey(_keyDERBlock.bytes);
            _cert.privateKey = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return _fail(_err);
        };
        {
            final __type__ = _x509Cert.publicKey;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__.__underlying__().value;
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_cert.privateKey : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>), _1 : false };
                }, _priv = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: private key type does not match public key type" : stdgo.GoString)));
                };
                if (_pub.n.cmp(_priv.publicKey.n) != ((0 : stdgo.GoInt))) {
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: private key does not match public key" : stdgo.GoString)));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__.__underlying__().value;
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_cert.privateKey : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>), _1 : false };
                }, _priv = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: private key type does not match public key type" : stdgo.GoString)));
                };
                if (((_pub.x.cmp(_priv.publicKey.x) != (0 : stdgo.GoInt)) || (_pub.y.cmp(_priv.publicKey.y) != (0 : stdgo.GoInt)) : Bool)) {
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: private key does not match public key" : stdgo.GoString)));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey))) {
                var _pub:stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey = __type__ == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__ == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__.__underlying__().value;
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_cert.privateKey : stdgo._internal.crypto.ed25519.Ed25519_PrivateKey.PrivateKey)) : stdgo._internal.crypto.ed25519.Ed25519_PrivateKey.PrivateKey), _1 : true };
                } catch(_) {
                    { _0 : new stdgo._internal.crypto.ed25519.Ed25519_PrivateKey.PrivateKey(0, 0), _1 : false };
                }, _priv = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: private key type does not match public key type" : stdgo.GoString)));
                };
                if (!stdgo._internal.bytes.Bytes_equal.equal((stdgo.Go.typeAssert((_priv.public_() : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey)) : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey), _pub)) {
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: private key does not match public key" : stdgo.GoString)));
                };
            } else {
                var _pub:stdgo.AnyInterface = __type__?.__underlying__();
                return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: unknown public key algorithm" : stdgo.GoString)));
            };
        };
        return { _0 : _cert?.__copy__(), _1 : (null : stdgo.Error) };
    }
