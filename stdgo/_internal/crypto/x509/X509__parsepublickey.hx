package stdgo._internal.crypto.x509;
function _parsePublicKey(_keyData:stdgo.Ref<stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo>):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        var _oid = ((@:checkr _keyData ?? throw "null pointer dereference").algorithm.algorithm : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
        var _params = ((@:checkr _keyData ?? throw "null pointer dereference").algorithm.parameters?.__copy__() : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue);
        var _der = ((@:checkr _keyData ?? throw "null pointer dereference").publicKey.rightAlign() : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L221"
        if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyrsa._oidPublicKeyRSA)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L225"
            if (!stdgo._internal.bytes.Bytes_equal.equal(_params.fullBytes, stdgo._internal.encoding.asn1.Asn1_nullbytes.nullBytes)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L226"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: RSA key missing NULL parameters" : stdgo.GoString)) };
            };
            var _p = (stdgo.Go.setRef(({ n : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) } : stdgo._internal.crypto.x509.X509_t_pkcs1publickey.T_pkcs1PublicKey)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_pkcs1publickey.T_pkcs1PublicKey>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L230"
            if (!_der.readASN1((stdgo.Go.setRef(_der) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L231"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RSA public key" : stdgo.GoString)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L233"
            if (!_der.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _p ?? throw "null pointer dereference").n)))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L234"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RSA modulus" : stdgo.GoString)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L236"
            if (!_der.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _p ?? throw "null pointer dereference").e)))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L237"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RSA public exponent" : stdgo.GoString)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L240"
            if (((@:checkr _p ?? throw "null pointer dereference").n.sign() <= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L241"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: RSA modulus is not a positive number" : stdgo.GoString)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L243"
            if (((@:checkr _p ?? throw "null pointer dereference").e <= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L244"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: RSA public exponent is not a positive number" : stdgo.GoString)) };
            };
            var _pub = (stdgo.Go.setRef(({ e : (@:checkr _p ?? throw "null pointer dereference").e, n : (@:checkr _p ?? throw "null pointer dereference").n } : stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L251"
            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(_pub)), _1 : (null : stdgo.Error) };
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyecdsa._oidPublicKeyECDSA)) {
            var _paramsDer = (_params.fullBytes : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            var _namedCurveOID = (stdgo.Go.setRef((new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier)) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L255"
            if (!_paramsDer.readASN1ObjectIdentifier(_namedCurveOID)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L256"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid ECDSA parameters" : stdgo.GoString)) };
            };
            var _namedCurve = (stdgo._internal.crypto.x509.X509__namedcurvefromoid._namedCurveFromOID((_namedCurveOID : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier)) : stdgo._internal.crypto.elliptic.Elliptic_curve.Curve);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L259"
            if (_namedCurve == null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L260"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unsupported elliptic curve" : stdgo.GoString)) };
            };
            var __tmp__ = stdgo._internal.crypto.elliptic.Elliptic_unmarshal.unmarshal(_namedCurve, _der), _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L263"
            if (({
                final value = _x;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L264"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to unmarshal elliptic curve point" : stdgo.GoString)) };
            };
            var _pub = (stdgo.Go.setRef(({ curve : _namedCurve, x : _x, y : _y } : stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L271"
            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(_pub)), _1 : (null : stdgo.Error) };
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyed25519._oidPublicKeyEd25519)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L275"
            if ((_params.fullBytes.length) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L276"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: Ed25519 key encoded with illegal parameters" : stdgo.GoString)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L278"
            if ((_der.length) != ((32 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L279"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: wrong Ed25519 public key size" : stdgo.GoString)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L281"
            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_der : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey))), _1 : (null : stdgo.Error) };
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyx25519._oidPublicKeyX25519)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L285"
            if ((_params.fullBytes.length) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L286"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: X25519 key encoded with illegal parameters" : stdgo.GoString)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L288"
            return ({
                @:explicitConversion final __tmp__ = stdgo._internal.crypto.ecdh.Ecdh_x25519.x25519().newPublicKey(_der);
                { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(__tmp__._0)), _1 : __tmp__._1 };
            });
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeydsa._oidPublicKeyDSA)) {
            var _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L291"
            if (!_der.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface(_y)))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L292"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid DSA public key" : stdgo.GoString)) };
            };
            var _pub = (stdgo.Go.setRef(({ y : _y, parameters : ({ p : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), q : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), g : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) } : stdgo._internal.crypto.dsa.Dsa_parameters.Parameters) } : stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey)) : stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey>);
            var _paramsDer = (_params.fullBytes : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L303"
            if ((((!_paramsDer.readASN1((stdgo.Go.setRef(_paramsDer) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || !_paramsDer.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _pub ?? throw "null pointer dereference").parameters.p))) : Bool) || !_paramsDer.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _pub ?? throw "null pointer dereference").parameters.q))) : Bool) || !_paramsDer.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _pub ?? throw "null pointer dereference").parameters.g))) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L307"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid DSA parameters" : stdgo.GoString)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L309"
            if ((((((@:checkr _pub ?? throw "null pointer dereference").y.sign() <= (0 : stdgo.GoInt) : Bool) || ((@:checkr _pub ?? throw "null pointer dereference").parameters.p.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || ((@:checkr _pub ?? throw "null pointer dereference").parameters.q.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || ((@:checkr _pub ?? throw "null pointer dereference").parameters.g.sign() <= (0 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L311"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: zero or negative DSA parameter" : stdgo.GoString)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L313"
            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(_pub)), _1 : (null : stdgo.Error) };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L315"
            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unknown public key algorithm" : stdgo.GoString)) };
        };
    }
