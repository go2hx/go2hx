package stdgo._internal.crypto.x509;
function _marshalPublicKey(_pub:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier; var _2 : stdgo.Error; } {
        var _publicKeyBytes = (null : stdgo.Slice<stdgo.GoUInt8>), _publicKeyAlgorithm = ({} : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier), _err = (null : stdgo.Error);
        {
            final __type__ = _pub;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__.__underlying__().value;
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(({ n : (@:checkr _pub ?? throw "null pointer dereference").n, e : (@:checkr _pub ?? throw "null pointer dereference").e } : stdgo._internal.crypto.x509.X509_T_pkcs1PublicKey.T_pkcs1PublicKey)));
                    _publicKeyBytes = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (new stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier() : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier), _2 : _err };
                        _publicKeyBytes = __tmp__._0;
                        _publicKeyAlgorithm = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                _publicKeyAlgorithm.algorithm = stdgo._internal.crypto.x509.X509__oidPublicKeyRSA._oidPublicKeyRSA;
                _publicKeyAlgorithm.parameters = stdgo._internal.encoding.asn1.Asn1_nullRawValue.nullRawValue?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__.__underlying__().value;
                var __tmp__ = stdgo._internal.crypto.x509.X509__oidFromNamedCurve._oidFromNamedCurve((@:checkr _pub ?? throw "null pointer dereference").curve), _oid:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (new stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier() : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier), _2 : stdgo._internal.errors.Errors_new_.new_(("x509: unsupported elliptic curve" : stdgo.GoString)) };
                        _publicKeyBytes = __tmp__._0;
                        _publicKeyAlgorithm = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                if (!(@:checkr _pub ?? throw "null pointer dereference").curve.isOnCurve((@:checkr _pub ?? throw "null pointer dereference").x, (@:checkr _pub ?? throw "null pointer dereference").y)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (new stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier() : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier), _2 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid elliptic curve public key" : stdgo.GoString)) };
                        _publicKeyBytes = __tmp__._0;
                        _publicKeyAlgorithm = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                _publicKeyBytes = stdgo._internal.crypto.elliptic.Elliptic_marshal.marshal((@:checkr _pub ?? throw "null pointer dereference").curve, (@:checkr _pub ?? throw "null pointer dereference").x, (@:checkr _pub ?? throw "null pointer dereference").y);
                _publicKeyAlgorithm.algorithm = stdgo._internal.crypto.x509.X509__oidPublicKeyECDSA._oidPublicKeyECDSA;
                var _paramBytes:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_oid)));
                    _paramBytes = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _publicKeyBytes, _1 : _publicKeyAlgorithm, _2 : _err };
                };
                _publicKeyAlgorithm.parameters.fullBytes = _paramBytes;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey))) {
                var _pub:stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey = __type__ == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__ == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__.__underlying__().value;
                _publicKeyBytes = _pub;
                _publicKeyAlgorithm.algorithm = stdgo._internal.crypto.x509.X509__oidPublicKeyEd25519._oidPublicKeyEd25519;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>))) {
                var _pub:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey> = __type__ == null ? (null : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>) : __type__.__underlying__().value;
                _publicKeyBytes = @:check2r _pub.bytes();
                if (stdgo.Go.toInterface(@:check2r _pub.curve()) == (stdgo.Go.toInterface(_internal.crypto.ecdh.Ecdh_x25519.x25519()))) {
                    _publicKeyAlgorithm.algorithm = stdgo._internal.crypto.x509.X509__oidPublicKeyX25519._oidPublicKeyX25519;
                } else {
                    var __tmp__ = stdgo._internal.crypto.x509.X509__oidFromECDHCurve._oidFromECDHCurve(@:check2r _pub.curve()), _oid:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        return {
                            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (new stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier() : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier), _2 : stdgo._internal.errors.Errors_new_.new_(("x509: unsupported elliptic curve" : stdgo.GoString)) };
                            _publicKeyBytes = __tmp__._0;
                            _publicKeyAlgorithm = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    };
                    _publicKeyAlgorithm.algorithm = stdgo._internal.crypto.x509.X509__oidPublicKeyECDSA._oidPublicKeyECDSA;
                    var _paramBytes:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_oid)));
                        _paramBytes = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : _publicKeyBytes, _1 : _publicKeyAlgorithm, _2 : _err };
                    };
                    _publicKeyAlgorithm.parameters.fullBytes = _paramBytes;
                };
            } else {
                var _pub:stdgo.AnyInterface = __type__?.__underlying__();
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (new stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier() : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: unsupported public key type: %T" : stdgo.GoString), _pub) };
                    _publicKeyBytes = __tmp__._0;
                    _publicKeyAlgorithm = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier; var _2 : stdgo.Error; } = { _0 : _publicKeyBytes, _1 : _publicKeyAlgorithm?.__copy__(), _2 : (null : stdgo.Error) };
            _publicKeyBytes = __tmp__._0;
            _publicKeyAlgorithm = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
