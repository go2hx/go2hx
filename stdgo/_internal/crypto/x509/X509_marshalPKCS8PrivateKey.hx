package stdgo._internal.crypto.x509;
function marshalPKCS8PrivateKey(_key:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _privKey:stdgo._internal.crypto.x509.X509_T_pkcs8.T_pkcs8 = ({} : stdgo._internal.crypto.x509.X509_T_pkcs8.T_pkcs8);
        {
            final __type__ = _key;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>))) {
                var _k:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>) : __type__.__underlying__().value;
                _privKey.algo = ({ algorithm : stdgo._internal.crypto.x509.X509__oidPublicKeyRSA._oidPublicKeyRSA, parameters : stdgo._internal.encoding.asn1.Asn1_nullRawValue.nullRawValue?.__copy__() } : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
                _privKey.privateKey = stdgo._internal.crypto.x509.X509_marshalPKCS1PrivateKey.marshalPKCS1PrivateKey(_k);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>))) {
                var _k:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>) : __type__.__underlying__().value;
                var __tmp__ = stdgo._internal.crypto.x509.X509__oidFromNamedCurve._oidFromNamedCurve((@:checkr _k ?? throw "null pointer dereference").publicKey.curve), _oid:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unknown curve while marshaling to PKCS#8" : stdgo.GoString)) };
                };
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_oid))), _oidBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("x509: failed to marshal curve OID: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                };
                _privKey.algo = ({ algorithm : stdgo._internal.crypto.x509.X509__oidPublicKeyECDSA._oidPublicKeyECDSA, parameters : ({ fullBytes : _oidBytes } : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue) } : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
                {
                    {
                        var __tmp__ = stdgo._internal.crypto.x509.X509__marshalECPrivateKeyWithOID._marshalECPrivateKeyWithOID(_k, null);
                        _privKey.privateKey = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("x509: failed to marshal EC private key while building PKCS#8: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_PrivateKey.PrivateKey))) {
                var _k:stdgo._internal.crypto.ed25519.Ed25519_PrivateKey.PrivateKey = __type__ == null ? new stdgo._internal.crypto.ed25519.Ed25519_PrivateKey.PrivateKey(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.crypto.ed25519.Ed25519_PrivateKey.PrivateKey(0, 0) : __type__ == null ? new stdgo._internal.crypto.ed25519.Ed25519_PrivateKey.PrivateKey(0, 0) : __type__.__underlying__().value;
                _privKey.algo = ({ algorithm : stdgo._internal.crypto.x509.X509__oidPublicKeyEd25519._oidPublicKeyEd25519 } : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_k.seed())), _curvePrivateKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to marshal private key: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                };
                _privKey.privateKey = _curvePrivateKey;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>))) {
                var _k:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey> = __type__ == null ? (null : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>) : __type__ == null ? (null : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>) : __type__.__underlying__().value;
                if (stdgo.Go.toInterface(@:check2r _k.curve()) == (stdgo.Go.toInterface(_internal.crypto.ecdh.Ecdh_x25519.x25519()))) {
                    _privKey.algo = ({ algorithm : stdgo._internal.crypto.x509.X509__oidPublicKeyX25519._oidPublicKeyX25519 } : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
                    var _err:stdgo.Error = (null : stdgo.Error);
                    {
                        {
                            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(@:check2r _k.bytes()));
                            _privKey.privateKey = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to marshal private key: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                        };
                    };
                } else {
                    var __tmp__ = stdgo._internal.crypto.x509.X509__oidFromECDHCurve._oidFromECDHCurve(@:check2r _k.curve()), _oid:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unknown curve while marshaling to PKCS#8" : stdgo.GoString)) };
                    };
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_oid))), _oidBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("x509: failed to marshal curve OID: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                    };
                    _privKey.algo = ({ algorithm : stdgo._internal.crypto.x509.X509__oidPublicKeyECDSA._oidPublicKeyECDSA, parameters : ({ fullBytes : _oidBytes } : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue) } : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__marshalECDHPrivateKey._marshalECDHPrivateKey(_k);
                            _privKey.privateKey = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("x509: failed to marshal EC private key while building PKCS#8: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                        };
                    };
                };
            } else {
                var _k:stdgo.AnyInterface = __type__?.__underlying__();
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: unknown key type while marshaling PKCS#8: %T" : stdgo.GoString), _key) };
            };
        };
        return stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_privKey));
    }
