package stdgo._internal.crypto.x509;
function _parseECPrivateKey(_namedCurveOID:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>, _der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        var _key = (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>), _err = (null : stdgo.Error);
        var _privKey:stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey = ({} : stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_privKey) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey>)))), __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8() : stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8>)))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        return {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to parse private key (use ParsePKCS8PrivateKey instead for this key format)" : stdgo.GoString)) };
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
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to parse private key (use ParsePKCS1PrivateKey instead for this key format)" : stdgo.GoString)) };
                            _key = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((("x509: failed to parse EC private key: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                    _key = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        if (_privKey.version != ((1 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: unknown EC private key version %d" : stdgo.GoString), stdgo.Go.toInterface(_privKey.version)) };
                _key = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _curve:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve = (null : stdgo._internal.crypto.elliptic.Elliptic_curve.Curve);
        if ((_namedCurveOID != null && ((_namedCurveOID : Dynamic).__nil__ == null || !(_namedCurveOID : Dynamic).__nil__))) {
            _curve = stdgo._internal.crypto.x509.X509__namedcurvefromoid._namedCurveFromOID((_namedCurveOID : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier));
        } else {
            _curve = stdgo._internal.crypto.x509.X509__namedcurvefromoid._namedCurveFromOID(_privKey.namedCurveOID);
        };
        if (_curve == null) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unknown elliptic curve" : stdgo.GoString)) };
                _key = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _k = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_privKey.privateKey);
        var _curveOrder = _curve.params().n;
        if ((@:check2r _k.cmp(_curveOrder) >= (0 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid elliptic curve private key value" : stdgo.GoString)) };
                _key = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _priv = (stdgo.Go.setRef(({} : stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>);
        (@:checkr _priv ?? throw "null pointer dereference").publicKey.curve = _curve;
        (@:checkr _priv ?? throw "null pointer dereference").d = _k;
        var _privateKey = (new stdgo.Slice<stdgo.GoUInt8>((((@:check2r _curveOrder.bitLen() + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while (((_privKey.privateKey.length) > (_privateKey.length) : Bool)) {
            if (_privKey.privateKey[(0 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid private key length" : stdgo.GoString)) };
                    _key = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _privKey.privateKey = (_privKey.privateKey.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        (_privateKey.__slice__(((_privateKey.length) - (_privKey.privateKey.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_privKey.privateKey);
        {
            var __tmp__ = _curve.scalarBaseMult(_privateKey);
            (@:checkr _priv ?? throw "null pointer dereference").publicKey.x = @:tmpset0 __tmp__._0;
            (@:checkr _priv ?? throw "null pointer dereference").publicKey.y = @:tmpset0 __tmp__._1;
        };
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } = { _0 : _priv, _1 : (null : stdgo.Error) };
            _key = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
