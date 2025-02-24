package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.ClientHelloInfo_asInterface) class ClientHelloInfo_static_extension {
    @:keep
    @:tdfield
    static public function supportsCertificate( _chi:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clienthelloinfo.ClientHelloInfo>, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>):stdgo.Error {
        @:recv var _chi:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clienthelloinfo.ClientHelloInfo> = _chi;
        var _config = (@:checkr _chi ?? throw "null pointer dereference")._config;
        if ((_config == null || (_config : Dynamic).__nil__)) {
            _config = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_config.Config() : stdgo._internal.crypto.tls.Tls_config.Config)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
        };
        var __tmp__ = @:check2r _config._mutualVersion(false, (@:checkr _chi ?? throw "null pointer dereference").supportedVersions), _vers:stdgo.GoUInt16 = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return stdgo._internal.errors.Errors_new_.new_(("no mutually supported protocol versions" : stdgo.GoString));
        };
        if ((@:checkr _chi ?? throw "null pointer dereference").serverName != ((stdgo.Go.str() : stdgo.GoString))) {
            var __tmp__ = @:check2r _c._leaf(), _x509Cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("failed to parse certificate: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var _err = (@:check2r _x509Cert.verifyHostname((@:checkr _chi ?? throw "null pointer dereference").serverName?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("certificate is not valid for requested server name: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
        };
        var _supportsRSAFallback = (function(_unsupported:stdgo.Error):stdgo.Error {
            if (_vers == ((772 : stdgo.GoUInt16))) {
                return _unsupported;
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert(((@:checkr _c ?? throw "null pointer dereference").privateKey : stdgo._internal.crypto.Crypto_decrypter.Decrypter)) : stdgo._internal.crypto.Crypto_decrypter.Decrypter), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.crypto.Crypto_decrypter.Decrypter), _1 : false };
                }, _priv = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_priv.public_() : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : false };
                        }, __81 = __tmp__._0, _ok = __tmp__._1;
                        if (!_ok) {
                            return _unsupported;
                        };
                    };
                } else {
                    return _unsupported;
                };
            };
            var _rsaCipherSuite = stdgo._internal.crypto.tls.Tls__selectciphersuite._selectCipherSuite((@:checkr _chi ?? throw "null pointer dereference").cipherSuites, @:check2r _config._cipherSuites(), function(_c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuite.T_cipherSuite>):Bool {
                if (((@:checkr _c ?? throw "null pointer dereference")._flags & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    return false;
                };
                if (((_vers < (771 : stdgo.GoUInt16) : Bool) && (((@:checkr _c ?? throw "null pointer dereference")._flags & (4 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                    return false;
                };
                return true;
            });
            if ((_rsaCipherSuite == null || (_rsaCipherSuite : Dynamic).__nil__)) {
                return _unsupported;
            };
            return (null : stdgo.Error);
        } : stdgo.Error -> stdgo.Error);
        if ((((@:checkr _chi ?? throw "null pointer dereference").signatureSchemes.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__selectsignaturescheme._selectSignatureScheme(_vers, _c, (@:checkr _chi ?? throw "null pointer dereference").signatureSchemes), __89:stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _supportsRSAFallback(_err);
                };
            };
        };
        if (_vers == ((772 : stdgo.GoUInt16))) {
            return (null : stdgo.Error);
        };
        if (!stdgo._internal.crypto.tls.Tls__supportsecdhe._supportsECDHE(_config, (@:checkr _chi ?? throw "null pointer dereference").supportedCurves, (@:checkr _chi ?? throw "null pointer dereference").supportedPoints)) {
            return _supportsRSAFallback(stdgo._internal.errors.Errors_new_.new_(("client doesn\'t support ECDHE, can only use legacy RSA key exchange" : stdgo.GoString)));
        };
        var _ecdsaCipherSuite:Bool = false;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert(((@:checkr _c ?? throw "null pointer dereference").privateKey : stdgo._internal.crypto.Crypto_signer.Signer)) : stdgo._internal.crypto.Crypto_signer.Signer), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.Crypto_signer.Signer), _1 : false };
            }, _priv = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    final __type__ = _priv.public_();
                    {
                        var __bool__ = true;
                        while (__bool__) {
                            __bool__ = false;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>))) {
                                var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__().value;
                                var _curve:stdgo._internal.crypto.tls.Tls_curveid.CurveID = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
                                {
                                    final __value__ = (@:checkr _pub ?? throw "null pointer dereference").curve;
                                    if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p256.p256()))) {
                                        _curve = (23 : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
                                    } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p384.p384()))) {
                                        _curve = (24 : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
                                    } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p521.p521()))) {
                                        _curve = (25 : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
                                    } else {
                                        return _supportsRSAFallback(stdgo._internal.crypto.tls.Tls__unsupportedcertificateerror._unsupportedCertificateError(_c));
                                    };
                                };
                                var _curveOk:Bool = false;
                                for (__97 => _c in (@:checkr _chi ?? throw "null pointer dereference").supportedCurves) {
                                    if (((_c == _curve) && @:check2r _config._supportsCurve(_c) : Bool)) {
                                        _curveOk = true;
                                        break;
                                    };
                                };
                                if (!_curveOk) {
                                    return stdgo._internal.errors.Errors_new_.new_(("client doesn\'t support certificate curve" : stdgo.GoString));
                                };
                                _ecdsaCipherSuite = true;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey))) {
                                var _pub:stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey = __type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__() == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__().value;
                                if (((_vers < (771 : stdgo.GoUInt16) : Bool) || ((@:checkr _chi ?? throw "null pointer dereference").signatureSchemes.length == (0 : stdgo.GoInt)) : Bool)) {
                                    return stdgo._internal.errors.Errors_new_.new_(("connection doesn\'t support Ed25519" : stdgo.GoString));
                                };
                                _ecdsaCipherSuite = true;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>))) {
                                var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__().value;
                            } else {
                                var _pub:stdgo._internal.crypto.Crypto_publickey.PublicKey = __type__?.__underlying__();
                                return _supportsRSAFallback(stdgo._internal.crypto.tls.Tls__unsupportedcertificateerror._unsupportedCertificateError(_c));
                            };
                            break;
                        };
                    };
                };
            } else {
                return _supportsRSAFallback(stdgo._internal.crypto.tls.Tls__unsupportedcertificateerror._unsupportedCertificateError(_c));
            };
        };
        var _cipherSuite = stdgo._internal.crypto.tls.Tls__selectciphersuite._selectCipherSuite((@:checkr _chi ?? throw "null pointer dereference").cipherSuites, @:check2r _config._cipherSuites(), function(_c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuite.T_cipherSuite>):Bool {
            if (((@:checkr _c ?? throw "null pointer dereference")._flags & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                return false;
            };
            if (((@:checkr _c ?? throw "null pointer dereference")._flags & (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                if (!_ecdsaCipherSuite) {
                    return false;
                };
            } else {
                if (_ecdsaCipherSuite) {
                    return false;
                };
            };
            if (((_vers < (771 : stdgo.GoUInt16) : Bool) && (((@:checkr _c ?? throw "null pointer dereference")._flags & (4 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                return false;
            };
            return true;
        });
        if ((_cipherSuite == null || (_cipherSuite : Dynamic).__nil__)) {
            return _supportsRSAFallback(stdgo._internal.errors.Errors_new_.new_(("client doesn\'t support any cipher suites compatible with the certificate" : stdgo.GoString)));
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function context( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clienthelloinfo.ClientHelloInfo>):stdgo._internal.context.Context_context.Context {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clienthelloinfo.ClientHelloInfo> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._ctx;
    }
}
