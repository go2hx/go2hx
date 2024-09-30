package stdgo._internal.crypto.x509;
function _parsePublicKey(_keyData:stdgo.Ref<stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo>):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        var _oid = (_keyData.algorithm.algorithm : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier);
        var _params = (_keyData.algorithm.parameters?.__copy__() : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue);
        var _der = (_keyData.publicKey.rightAlign() : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        if (_oid.equal(stdgo._internal.crypto.x509.X509__oidPublicKeyRSA._oidPublicKeyRSA)) {
            if (!stdgo._internal.bytes.Bytes_equal.equal(_params.fullBytes, stdgo._internal.encoding.asn1.Asn1_nullBytes.nullBytes)) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: RSA key missing NULL parameters" : stdgo.GoString)) };
            };
            var _p = (stdgo.Go.setRef(({ n : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) } : stdgo._internal.crypto.x509.X509_T_pkcs1PublicKey.T_pkcs1PublicKey)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_T_pkcs1PublicKey.T_pkcs1PublicKey>);
            if (!_der.readASN1((stdgo.Go.setRef(_der) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RSA public key" : stdgo.GoString)) };
            };
            if (!_der.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface(_p.n)))) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RSA modulus" : stdgo.GoString)) };
            };
            if (!_der.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.pointer(_p.e)))) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RSA public exponent" : stdgo.GoString)) };
            };
            if ((_p.n.sign() <= (0 : stdgo.GoInt) : Bool)) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: RSA modulus is not a positive number" : stdgo.GoString)) };
            };
            if ((_p.e <= (0 : stdgo.GoInt) : Bool)) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: RSA public exponent is not a positive number" : stdgo.GoString)) };
            };
            var _pub = (stdgo.Go.setRef(({ e : _p.e, n : _p.n } : stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>);
            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(_pub)), _1 : (null : stdgo.Error) };
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidPublicKeyECDSA._oidPublicKeyECDSA)) {
            var _paramsDer = (_params.fullBytes : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
            var _namedCurveOID = (stdgo.Go.setRef(new stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier(0, 0)) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>);
            if (!_paramsDer.readASN1ObjectIdentifier(_namedCurveOID)) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid ECDSA parameters" : stdgo.GoString)) };
            };
            var _namedCurve = (stdgo._internal.crypto.x509.X509__namedCurveFromOID._namedCurveFromOID((_namedCurveOID : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier)) : stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve);
            if (_namedCurve == null) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unsupported elliptic curve" : stdgo.GoString)) };
            };
            var __tmp__ = stdgo._internal.crypto.elliptic.Elliptic_unmarshal.unmarshal(_namedCurve, _der), _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._1;
            if (_x == null || (_x : Dynamic).__nil__) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to unmarshal elliptic curve point" : stdgo.GoString)) };
            };
            var _pub = (stdgo.Go.setRef(({ curve : _namedCurve, x : _x, y : _y } : stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>);
            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(_pub)), _1 : (null : stdgo.Error) };
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidPublicKeyEd25519._oidPublicKeyEd25519)) {
            if ((_params.fullBytes.length) != ((0 : stdgo.GoInt))) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: Ed25519 key encoded with illegal parameters" : stdgo.GoString)) };
            };
            if ((_der.length) != ((32 : stdgo.GoInt))) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: wrong Ed25519 public key size" : stdgo.GoString)) };
            };
            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_der : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey))), _1 : (null : stdgo.Error) };
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidPublicKeyX25519._oidPublicKeyX25519)) {
            if ((_params.fullBytes.length) != ((0 : stdgo.GoInt))) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: X25519 key encoded with illegal parameters" : stdgo.GoString)) };
            };
            return _internal.crypto.ecdh.Ecdh_x25519.x25519().newPublicKey(_der);
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidPublicKeyDSA._oidPublicKeyDSA)) {
            var _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            if (!_der.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface(_y)))) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid DSA public key" : stdgo.GoString)) };
            };
            var _pub = (stdgo.Go.setRef(({ y : _y, parameters : ({ p : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), q : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), g : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) } : stdgo._internal.crypto.dsa.Dsa_Parameters.Parameters) } : stdgo._internal.crypto.dsa.Dsa_PublicKey.PublicKey)) : stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_PublicKey.PublicKey>);
            var _paramsDer = (_params.fullBytes : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
            if ((((!_paramsDer.readASN1((stdgo.Go.setRef(_paramsDer) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag)) || !_paramsDer.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface(_pub.parameters.p))) : Bool) || !_paramsDer.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface(_pub.parameters.q))) : Bool) || !_paramsDer.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface(_pub.parameters.g))) : Bool)) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid DSA parameters" : stdgo.GoString)) };
            };
            if (((((_pub.y.sign() <= (0 : stdgo.GoInt) : Bool) || (_pub.parameters.p.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || (_pub.parameters.q.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || (_pub.parameters.g.sign() <= (0 : stdgo.GoInt) : Bool) : Bool)) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: zero or negative DSA parameter" : stdgo.GoString)) };
            };
            return { _0 : stdgo.Go.toInterface(_pub), _1 : (null : stdgo.Error) };
        } else {
            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unknown public key algorithm" : stdgo.GoString)) };
        };
    }
