package stdgo._internal.crypto.x509;
function parsePKCS8PrivateKey(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        var _key = (null : stdgo.AnyInterface), _err = (null : stdgo.Error);
        var _privKey:stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8 = ({} : stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_privKey) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8>)))), __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey() : stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey>)))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        return {
                            final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to parse private key (use ParseECPrivateKey instead for this key format)" : stdgo.GoString)) };
                            _key = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey() : stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey>)))), __3:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        return {
                            final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to parse private key (use ParsePKCS1PrivateKey instead for this key format)" : stdgo.GoString)) };
                            _key = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
                return {
                    final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : _err };
                    _key = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        if (_privKey.algo.algorithm.equal(stdgo._internal.crypto.x509.X509__oidpublickeyrsa._oidPublicKeyRSA)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509_parsepkcs1privatekey.parsePKCS1PrivateKey(_privKey.privateKey);
                _key = stdgo.Go.toInterface(stdgo.Go.asInterface(@:tmpset0 __tmp__._0));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_((("x509: failed to parse RSA private key embedded in PKCS#8: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                    _key = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            return {
                final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : _key, _1 : (null : stdgo.Error) };
                _key = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if (_privKey.algo.algorithm.equal(stdgo._internal.crypto.x509.X509__oidpublickeyecdsa._oidPublicKeyECDSA)) {
            var _bytes = _privKey.algo.parameters.fullBytes;
            var _namedCurveOID = (stdgo.Go.setRef((new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier)) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_bytes, stdgo.Go.toInterface(stdgo.Go.asInterface(_namedCurveOID))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _namedCurveOID = null;
                };
            };
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__parseecprivatekey._parseECPrivateKey(_namedCurveOID, _privKey.privateKey);
                _key = stdgo.Go.toInterface(stdgo.Go.asInterface(@:tmpset0 __tmp__._0));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_((("x509: failed to parse EC private key embedded in PKCS#8: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                    _key = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            return {
                final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : _key, _1 : (null : stdgo.Error) };
                _key = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if (_privKey.algo.algorithm.equal(stdgo._internal.crypto.x509.X509__oidpublickeyed25519._oidPublicKeyEd25519)) {
            {
                var _l = (_privKey.algo.parameters.fullBytes.length : stdgo.GoInt);
                if (_l != ((0 : stdgo.GoInt))) {
                    return {
                        final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid Ed25519 private key parameters" : stdgo.GoString)) };
                        _key = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            var _curvePrivateKey:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_privKey.privateKey, stdgo.Go.toInterface((stdgo.Go.setRef(_curvePrivateKey) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: invalid Ed25519 private key: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                        _key = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            {
                var _l = (_curvePrivateKey.length : stdgo.GoInt);
                if (_l != ((32 : stdgo.GoInt))) {
                    return {
                        final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: invalid Ed25519 private key length: %d" : stdgo.GoString), stdgo.Go.toInterface(_l)) };
                        _key = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            return {
                final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.crypto.ed25519.Ed25519_newkeyfromseed.newKeyFromSeed(_curvePrivateKey))), _1 : (null : stdgo.Error) };
                _key = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if (_privKey.algo.algorithm.equal(stdgo._internal.crypto.x509.X509__oidpublickeyx25519._oidPublicKeyX25519)) {
            {
                var _l = (_privKey.algo.parameters.fullBytes.length : stdgo.GoInt);
                if (_l != ((0 : stdgo.GoInt))) {
                    return {
                        final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid X25519 private key parameters" : stdgo.GoString)) };
                        _key = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            var _curvePrivateKey:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_privKey.privateKey, stdgo.Go.toInterface((stdgo.Go.setRef(_curvePrivateKey) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: invalid X25519 private key: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                        _key = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            return {
                final __tmp__ = stdgo._internal.crypto.ecdh.Ecdh_x25519.x25519().newPrivateKey(_curvePrivateKey);
                _key = stdgo.Go.toInterface(stdgo.Go.asInterface(__tmp__._0));
                _err = __tmp__._1;
                { _0 : _key, _1 : _err };
            };
        } else {
            return {
                final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: PKCS#8 wrapping contained private key with unknown algorithm: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_privKey.algo.algorithm))) };
                _key = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
    }
