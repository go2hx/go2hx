package stdgo._internal.crypto.x509;
function _parsePublicKey(_keyData:stdgo.Ref<stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo>):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        var _oid = ((@:checkr _keyData ?? throw "null pointer dereference").algorithm.algorithm : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
        var _params = ((@:checkr _keyData ?? throw "null pointer dereference").algorithm.parameters?.__copy__() : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue);
        var _der = ((@:checkr _keyData ?? throw "null pointer dereference").publicKey.rightAlign() : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyrsa._oidPublicKeyRSA)) {
            if (!stdgo._internal.bytes.Bytes_equal.equal(_params.fullBytes, stdgo._internal.encoding.asn1.Asn1_nullbytes.nullBytes)) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: RSA key missing NULL parameters" : stdgo.GoString)) };
            };
            var _p = (stdgo.Go.setRef(({ n : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) } : stdgo._internal.crypto.x509.X509_t_pkcs1publickey.T_pkcs1PublicKey)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_pkcs1publickey.T_pkcs1PublicKey>);
            if (!@:check2 _der.readASN1((stdgo.Go.setRef(_der) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RSA public key" : stdgo.GoString)) };
            };
            if (!@:check2 _der.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _p ?? throw "null pointer dereference").n)))) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RSA modulus" : stdgo.GoString)) };
            };
            if (!@:check2 _der.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _p ?? throw "null pointer dereference").e)))) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RSA public exponent" : stdgo.GoString)) };
            };
            if ((@:check2r (@:checkr _p ?? throw "null pointer dereference").n.sign() <= (0 : stdgo.GoInt) : Bool)) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: RSA modulus is not a positive number" : stdgo.GoString)) };
            };
            if (((@:checkr _p ?? throw "null pointer dereference").e <= (0 : stdgo.GoInt) : Bool)) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: RSA public exponent is not a positive number" : stdgo.GoString)) };
            };
            var _pub = (stdgo.Go.setRef(({ e : (@:checkr _p ?? throw "null pointer dereference").e, n : (@:checkr _p ?? throw "null pointer dereference").n } : stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>);
            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(_pub)), _1 : (null : stdgo.Error) };
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyecdsa._oidPublicKeyECDSA)) {
            var _paramsDer = (_params.fullBytes : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            var _namedCurveOID = (stdgo.Go.setRef((new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier)) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
            if (!@:check2 _paramsDer.readASN1ObjectIdentifier(_namedCurveOID)) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid ECDSA parameters" : stdgo.GoString)) };
            };
            var _namedCurve = (stdgo._internal.crypto.x509.X509__namedcurvefromoid._namedCurveFromOID((_namedCurveOID : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier)) : stdgo._internal.crypto.elliptic.Elliptic_curve.Curve);
            if (_namedCurve == null) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unsupported elliptic curve" : stdgo.GoString)) };
            };
            var __tmp__ = stdgo._internal.crypto.elliptic.Elliptic_unmarshal.unmarshal(_namedCurve, _der), _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._1;
            if ((_x == null || (_x : Dynamic).__nil__)) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to unmarshal elliptic curve point" : stdgo.GoString)) };
            };
            var _pub = (stdgo.Go.setRef(({ curve : _namedCurve, x : _x, y : _y } : stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>);
            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(_pub)), _1 : (null : stdgo.Error) };
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyed25519._oidPublicKeyEd25519)) {
            if ((_params.fullBytes.length) != ((0 : stdgo.GoInt))) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: Ed25519 key encoded with illegal parameters" : stdgo.GoString)) };
            };
            if ((_der.length) != ((32 : stdgo.GoInt))) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: wrong Ed25519 public key size" : stdgo.GoString)) };
            };
            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_der : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey))), _1 : (null : stdgo.Error) };
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyx25519._oidPublicKeyX25519)) {
            if ((_params.fullBytes.length) != ((0 : stdgo.GoInt))) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: X25519 key encoded with illegal parameters" : stdgo.GoString)) };
            };
            return stdgo._internal.crypto.ecdh.Ecdh_x25519.x25519().newPublicKey(_der);
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeydsa._oidPublicKeyDSA)) {
            var _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            if (!@:check2 _der.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface(_y)))) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid DSA public key" : stdgo.GoString)) };
            };
            var _pub = (stdgo.Go.setRef(({ y : _y, parameters : ({ p : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), q : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), g : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) } : stdgo._internal.crypto.dsa.Dsa_parameters.Parameters) } : stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey)) : stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey>);
            var _paramsDer = (_params.fullBytes : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            if ((((!@:check2 _paramsDer.readASN1((stdgo.Go.setRef(_paramsDer) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || !@:check2 _paramsDer.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _pub ?? throw "null pointer dereference").parameters.p))) : Bool) || !@:check2 _paramsDer.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _pub ?? throw "null pointer dereference").parameters.q))) : Bool) || !@:check2 _paramsDer.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _pub ?? throw "null pointer dereference").parameters.g))) : Bool)) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid DSA parameters" : stdgo.GoString)) };
            };
            if (((((@:check2r (@:checkr _pub ?? throw "null pointer dereference").y.sign() <= (0 : stdgo.GoInt) : Bool) || (@:check2r (@:checkr _pub ?? throw "null pointer dereference").parameters.p.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || (@:check2r (@:checkr _pub ?? throw "null pointer dereference").parameters.q.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || (@:check2r (@:checkr _pub ?? throw "null pointer dereference").parameters.g.sign() <= (0 : stdgo.GoInt) : Bool) : Bool)) {
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: zero or negative DSA parameter" : stdgo.GoString)) };
            };
            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(_pub)), _1 : (null : stdgo.Error) };
        } else {
            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unknown public key algorithm" : stdgo.GoString)) };
        };
    }
