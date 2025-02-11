package stdgo._internal.crypto.x509;
function marshalPKCS8PrivateKey(_key:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _privKey:stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8 = ({} : stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8);
        {
            final __type__ = _key;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>))) {
                var _k:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>) : __type__.__underlying__().value;
                _privKey.algo = ({ algorithm : stdgo._internal.crypto.x509.X509__oidpublickeyrsa._oidPublicKeyRSA, parameters : stdgo._internal.encoding.asn1.Asn1_nullrawvalue.nullRawValue?.__copy__() } : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
                _privKey.privateKey = stdgo._internal.crypto.x509.X509_marshalpkcs1privatekey.marshalPKCS1PrivateKey(_k);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>))) {
                var _k:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>) : __type__.__underlying__().value;
                var __tmp__ = stdgo._internal.crypto.x509.X509__oidfromnamedcurve._oidFromNamedCurve((@:checkr _k ?? throw "null pointer dereference").publicKey.curve), _oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unknown curve while marshaling to PKCS#8" : stdgo.GoString)) };
                };
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_oid))), _oidBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("x509: failed to marshal curve OID: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                };
                _privKey.algo = ({ algorithm : stdgo._internal.crypto.x509.X509__oidpublickeyecdsa._oidPublicKeyECDSA, parameters : ({ fullBytes : _oidBytes } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue) } : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
                {
                    {
                        var __tmp__ = stdgo._internal.crypto.x509.X509__marshalecprivatekeywithoid._marshalECPrivateKeyWithOID(_k, null);
                        _privKey.privateKey = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("x509: failed to marshal EC private key while building PKCS#8: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey))) {
                var _k:stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey = __type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey) : __type__.__underlying__() == null ? (new stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey) : __type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey) : __type__.__underlying__().value;
                _privKey.algo = ({ algorithm : stdgo._internal.crypto.x509.X509__oidpublickeyed25519._oidPublicKeyEd25519 } : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_k.seed())), _curvePrivateKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to marshal private key: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                };
                _privKey.privateKey = _curvePrivateKey;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>))) {
                var _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>) : __type__.__underlying__().value;
                if (stdgo.Go.toInterface(@:check2r _k.curve()) == (stdgo.Go.toInterface(stdgo._internal.crypto.ecdh.Ecdh_x25519.x25519()))) {
                    _privKey.algo = ({ algorithm : stdgo._internal.crypto.x509.X509__oidpublickeyx25519._oidPublicKeyX25519 } : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
                    var _err:stdgo.Error = (null : stdgo.Error);
                    {
                        {
                            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(@:check2r _k.bytes()));
                            _privKey.privateKey = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        if (_err != null) {
                            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to marshal private key: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                        };
                    };
                } else {
                    var __tmp__ = stdgo._internal.crypto.x509.X509__oidfromecdhcurve._oidFromECDHCurve(@:check2r _k.curve()), _oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unknown curve while marshaling to PKCS#8" : stdgo.GoString)) };
                    };
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_oid))), _oidBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("x509: failed to marshal curve OID: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                    };
                    _privKey.algo = ({ algorithm : stdgo._internal.crypto.x509.X509__oidpublickeyecdsa._oidPublicKeyECDSA, parameters : ({ fullBytes : _oidBytes } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue) } : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__marshalecdhprivatekey._marshalECDHPrivateKey(_k);
                            _privKey.privateKey = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
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
        return stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_privKey)));
    }
