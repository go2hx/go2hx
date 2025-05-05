package stdgo._internal.crypto.x509;
function _marshalPublicKey(_pub:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier; var _2 : stdgo.Error; } {
        var _publicKeyBytes = (null : stdgo.Slice<stdgo.GoUInt8>), _publicKeyAlgorithm = ({} : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L85"
        {
            final __type__ = _pub;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__().value);
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(({ n : (@:checkr _pub ?? throw "null pointer dereference").n, e : (@:checkr _pub ?? throw "null pointer dereference").e } : stdgo._internal.crypto.x509.X509_t_pkcs1publickey.T_pkcs1PublicKey))));
                    _publicKeyBytes = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L91"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L92"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (new stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier() : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier), _2 : _err };
                        _publicKeyBytes = __tmp__._0;
                        _publicKeyAlgorithm = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                _publicKeyAlgorithm.algorithm = stdgo._internal.crypto.x509.X509__oidpublickeyrsa._oidPublicKeyRSA;
                _publicKeyAlgorithm.parameters = stdgo._internal.encoding.asn1.Asn1_nullrawvalue.nullRawValue?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__().value);
                var __tmp__ = stdgo._internal.crypto.x509.X509__oidfromnamedcurve._oidFromNamedCurve((@:checkr _pub ?? throw "null pointer dereference").curve), _oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = __tmp__._0, _ok:Bool = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L100"
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L101"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (new stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier() : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier), _2 : stdgo._internal.errors.Errors_new_.new_(("x509: unsupported elliptic curve" : stdgo.GoString)) };
                        _publicKeyBytes = __tmp__._0;
                        _publicKeyAlgorithm = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L103"
                if (!(@:checkr _pub ?? throw "null pointer dereference").curve.isOnCurve((@:checkr _pub ?? throw "null pointer dereference").x, (@:checkr _pub ?? throw "null pointer dereference").y)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L104"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (new stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier() : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier), _2 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid elliptic curve public key" : stdgo.GoString)) };
                        _publicKeyBytes = __tmp__._0;
                        _publicKeyAlgorithm = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                _publicKeyBytes = stdgo._internal.crypto.elliptic.Elliptic_marshal.marshal((@:checkr _pub ?? throw "null pointer dereference").curve, (@:checkr _pub ?? throw "null pointer dereference").x, (@:checkr _pub ?? throw "null pointer dereference").y);
                _publicKeyAlgorithm.algorithm = stdgo._internal.crypto.x509.X509__oidpublickeyecdsa._oidPublicKeyECDSA;
                var _paramBytes:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_oid)));
                    _paramBytes = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L110"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L111"
                    return { _0 : _publicKeyBytes, _1 : _publicKeyAlgorithm, _2 : _err };
                };
                _publicKeyAlgorithm.parameters.fullBytes = _paramBytes;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey))) {
                var _pub:stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey = __type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__() == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__().value);
                _publicKeyBytes = _pub;
                _publicKeyAlgorithm.algorithm = stdgo._internal.crypto.x509.X509__oidpublickeyed25519._oidPublicKeyEd25519;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>) : __type__.__underlying__().value);
                _publicKeyBytes = _pub.bytes();
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L119"
                if (stdgo.Go.toInterface(_pub.curve()) == (stdgo.Go.toInterface(stdgo._internal.crypto.ecdh.Ecdh_x25519.x25519()))) {
                    _publicKeyAlgorithm.algorithm = stdgo._internal.crypto.x509.X509__oidpublickeyx25519._oidPublicKeyX25519;
                } else {
                    var __tmp__ = stdgo._internal.crypto.x509.X509__oidfromecdhcurve._oidFromECDHCurve(_pub.curve()), _oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = __tmp__._0, _ok:Bool = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L123"
                    if (!_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L124"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (new stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier() : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier), _2 : stdgo._internal.errors.Errors_new_.new_(("x509: unsupported elliptic curve" : stdgo.GoString)) };
                            _publicKeyBytes = __tmp__._0;
                            _publicKeyAlgorithm = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    };
                    _publicKeyAlgorithm.algorithm = stdgo._internal.crypto.x509.X509__oidpublickeyecdsa._oidPublicKeyECDSA;
                    var _paramBytes:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_oid)));
                        _paramBytes = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L129"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L130"
                        return { _0 : _publicKeyBytes, _1 : _publicKeyAlgorithm, _2 : _err };
                    };
                    _publicKeyAlgorithm.parameters.fullBytes = _paramBytes;
                };
            } else {
                var _pub:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L135"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (new stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier() : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: unsupported public key type: %T" : stdgo.GoString), _pub) };
                    _publicKeyBytes = __tmp__._0;
                    _publicKeyAlgorithm = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L138"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier; var _2 : stdgo.Error; } = { _0 : _publicKeyBytes, _1 : _publicKeyAlgorithm?.__copy__(), _2 : (null : stdgo.Error) };
            _publicKeyBytes = __tmp__._0;
            _publicKeyAlgorithm = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
