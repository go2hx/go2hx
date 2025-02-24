package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_ecdheKeyAgreement_asInterface) class T_ecdheKeyAgreement_static_extension {
    @:keep
    @:tdfield
    static public function _generateClientKeyExchange( _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ecdhekeyagreement.T_ecdheKeyAgreement>, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg>; var _2 : stdgo.Error; } {
        @:recv var _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ecdhekeyagreement.T_ecdheKeyAgreement> = _ka;
        if (((@:checkr _ka ?? throw "null pointer dereference")._ckx == null || ((@:checkr _ka ?? throw "null pointer dereference")._ckx : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: missing ServerKeyExchange message" : stdgo.GoString)) };
        };
        return { _0 : (@:checkr _ka ?? throw "null pointer dereference")._preMasterSecret, _1 : (@:checkr _ka ?? throw "null pointer dereference")._ckx, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _processServerKeyExchange( _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ecdhekeyagreement.T_ecdheKeyAgreement>, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _serverHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _skx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg>):stdgo.Error {
        @:recv var _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ecdhekeyagreement.T_ecdheKeyAgreement> = _ka;
        if ((((@:checkr _skx ?? throw "null pointer dereference")._key.length) < (4 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.crypto.tls.Tls__errserverkeyexchange._errServerKeyExchange;
        };
        if ((@:checkr _skx ?? throw "null pointer dereference")._key[(0 : stdgo.GoInt)] != ((3 : stdgo.GoUInt8))) {
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected unsupported curve" : stdgo.GoString));
        };
        var _curveID = ((((@:checkr _skx ?? throw "null pointer dereference")._key[(1 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_curveid.CurveID) << (8i64 : stdgo.GoUInt64) : stdgo._internal.crypto.tls.Tls_curveid.CurveID) | ((@:checkr _skx ?? throw "null pointer dereference")._key[(2 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_curveid.CurveID) : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
        var _publicLen = ((@:checkr _skx ?? throw "null pointer dereference")._key[(3 : stdgo.GoInt)] : stdgo.GoInt);
        if (((_publicLen + (4 : stdgo.GoInt) : stdgo.GoInt) > ((@:checkr _skx ?? throw "null pointer dereference")._key.length) : Bool)) {
            return stdgo._internal.crypto.tls.Tls__errserverkeyexchange._errServerKeyExchange;
        };
        var _serverECDHEParams = ((@:checkr _skx ?? throw "null pointer dereference")._key.__slice__(0, ((4 : stdgo.GoInt) + _publicLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _publicKey = (_serverECDHEParams.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _sig = ((@:checkr _skx ?? throw "null pointer dereference")._key.__slice__(((4 : stdgo.GoInt) + _publicLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if (((_sig.length) < (2 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.crypto.tls.Tls__errserverkeyexchange._errServerKeyExchange;
        };
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__curveforcurveid._curveForCurveID(_curveID), __65:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return stdgo._internal.errors.Errors_new_.new_(("tls: server selected unsupported curve" : stdgo.GoString));
            };
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls__generateecdhekey._generateECDHEKey(@:check2r _config._rand(), _curveID), _key:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        (@:checkr _ka ?? throw "null pointer dereference")._key = _key;
        var __tmp__ = @:check2r _key.curve().newPublicKey(_publicKey), _peerKey:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo._internal.crypto.tls.Tls__errserverkeyexchange._errServerKeyExchange;
        };
        {
            var __tmp__ = @:check2r _key.eCDH(_peerKey);
            (@:checkr _ka ?? throw "null pointer dereference")._preMasterSecret = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return stdgo._internal.crypto.tls.Tls__errserverkeyexchange._errServerKeyExchange;
        };
        var _ourPublicKey = @:check2r @:check2r _key.publicKey().bytes();
        (@:checkr _ka ?? throw "null pointer dereference")._ckx = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg>);
        (@:checkr (@:checkr _ka ?? throw "null pointer dereference")._ckx ?? throw "null pointer dereference")._ciphertext = (new stdgo.Slice<stdgo.GoUInt8>(((1 : stdgo.GoInt) + (_ourPublicKey.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr (@:checkr _ka ?? throw "null pointer dereference")._ckx ?? throw "null pointer dereference")._ciphertext[(0 : stdgo.GoInt)] = (_ourPublicKey.length : stdgo.GoUInt8);
        ((@:checkr (@:checkr _ka ?? throw "null pointer dereference")._ckx ?? throw "null pointer dereference")._ciphertext.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_ourPublicKey);
        var _sigType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sigHash:stdgo._internal.crypto.Crypto_hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash);
        if (((@:checkr _ka ?? throw "null pointer dereference")._version >= (771 : stdgo.GoUInt16) : Bool)) {
            var _signatureAlgorithm = (((_sig[(0 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) << (8i64 : stdgo.GoUInt64) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) | (_sig[(1 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
            _sig = (_sig.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            if (((_sig.length) < (2 : stdgo.GoInt) : Bool)) {
                return stdgo._internal.crypto.tls.Tls__errserverkeyexchange._errServerKeyExchange;
            };
            if (!stdgo._internal.crypto.tls.Tls__issupportedsignaturealgorithm._isSupportedSignatureAlgorithm(_signatureAlgorithm, (@:checkr _clientHello ?? throw "null pointer dereference")._supportedSignatureAlgorithms)) {
                return stdgo._internal.errors.Errors_new_.new_(("tls: certificate used with invalid signature algorithm" : stdgo.GoString));
            };
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__typeandhashfromsignaturescheme._typeAndHashFromSignatureScheme(_signatureAlgorithm);
                _sigType = @:tmpset0 __tmp__._0;
                _sigHash = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                return _err;
            };
        } else {
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__legacytypeandhashfrompublickey._legacyTypeAndHashFromPublicKey(stdgo.Go.toInterface((@:checkr _cert ?? throw "null pointer dereference").publicKey));
                _sigType = @:tmpset0 __tmp__._0;
                _sigHash = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                return _err;
            };
        };
        if ((((_sigType == (225 : stdgo.GoUInt8)) || (_sigType == (226 : stdgo.GoUInt8)) : Bool)) != ((@:checkr _ka ?? throw "null pointer dereference")._isRSA)) {
            return stdgo._internal.crypto.tls.Tls__errserverkeyexchange._errServerKeyExchange;
        };
        var _sigLen = (((_sig[(0 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) | (_sig[(1 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
        if ((_sigLen + (2 : stdgo.GoInt) : stdgo.GoInt) != ((_sig.length))) {
            return stdgo._internal.crypto.tls.Tls__errserverkeyexchange._errServerKeyExchange;
        };
        _sig = (_sig.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _signed = stdgo._internal.crypto.tls.Tls__hashforserverkeyexchange._hashForServerKeyExchange(_sigType, _sigHash, (@:checkr _ka ?? throw "null pointer dereference")._version, (@:checkr _clientHello ?? throw "null pointer dereference")._random, (@:checkr _serverHello ?? throw "null pointer dereference")._random, _serverECDHEParams);
        {
            var _err = (stdgo._internal.crypto.tls.Tls__verifyhandshakesignature._verifyHandshakeSignature(_sigType, stdgo.Go.toInterface((@:checkr _cert ?? throw "null pointer dereference").publicKey), _sigHash, _signed, _sig) : stdgo.Error);
            if (_err != null) {
                return stdgo._internal.errors.Errors_new_.new_((("tls: invalid signature by the server certificate: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processClientKeyExchange( _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ecdhekeyagreement.T_ecdheKeyAgreement>, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>, _ckx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg>, _version:stdgo.GoUInt16):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ecdhekeyagreement.T_ecdheKeyAgreement> = _ka;
        if ((((@:checkr _ckx ?? throw "null pointer dereference")._ciphertext.length == (0 : stdgo.GoInt)) || (((@:checkr _ckx ?? throw "null pointer dereference")._ciphertext[(0 : stdgo.GoInt)] : stdgo.GoInt) != (((@:checkr _ckx ?? throw "null pointer dereference")._ciphertext.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.tls.Tls__errclientkeyexchange._errClientKeyExchange };
        };
        var __tmp__ = @:check2r (@:checkr _ka ?? throw "null pointer dereference")._key.curve().newPublicKey(((@:checkr _ckx ?? throw "null pointer dereference")._ciphertext.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _peerKey:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.tls.Tls__errclientkeyexchange._errClientKeyExchange };
        };
        var __tmp__ = @:check2r (@:checkr _ka ?? throw "null pointer dereference")._key.eCDH(_peerKey), _preMasterSecret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.tls.Tls__errclientkeyexchange._errClientKeyExchange };
        };
        return { _0 : _preMasterSecret, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _generateServerKeyExchange( _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ecdhekeyagreement.T_ecdheKeyAgreement>, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg>; var _1 : stdgo.Error; } {
        @:recv var _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ecdhekeyagreement.T_ecdheKeyAgreement> = _ka;
        var _curveID:stdgo._internal.crypto.tls.Tls_curveid.CurveID = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
        for (__65 => _c in (@:checkr _clientHello ?? throw "null pointer dereference")._supportedCurves) {
            if (@:check2r _config._supportsCurve(_c)) {
                _curveID = _c;
                break;
            };
        };
        if (_curveID == ((0 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: no supported elliptic curves offered" : stdgo.GoString)) };
        };
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__curveforcurveid._curveForCurveID(_curveID), __66:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: CurvePreferences includes unsupported curve" : stdgo.GoString)) };
            };
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls__generateecdhekey._generateECDHEKey(@:check2r _config._rand(), _curveID), _key:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        (@:checkr _ka ?? throw "null pointer dereference")._key = _key;
        var _ecdhePublic = @:check2r @:check2r _key.publicKey().bytes();
        var _serverECDHEParams = (new stdgo.Slice<stdgo.GoUInt8>(((4 : stdgo.GoInt) + (_ecdhePublic.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _serverECDHEParams[(0 : stdgo.GoInt)] = (3 : stdgo.GoUInt8);
        _serverECDHEParams[(1 : stdgo.GoInt)] = ((_curveID >> (8i64 : stdgo.GoUInt64) : stdgo._internal.crypto.tls.Tls_curveid.CurveID) : stdgo.GoUInt8);
        _serverECDHEParams[(2 : stdgo.GoInt)] = (_curveID : stdgo.GoUInt8);
        _serverECDHEParams[(3 : stdgo.GoInt)] = (_ecdhePublic.length : stdgo.GoUInt8);
        (_serverECDHEParams.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_ecdhePublic);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert(((@:checkr _cert ?? throw "null pointer dereference").privateKey : stdgo._internal.crypto.Crypto_signer.Signer)) : stdgo._internal.crypto.Crypto_signer.Signer), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.Crypto_signer.Signer), _1 : false };
        }, _priv = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("tls: certificate private key of type %T does not implement crypto.Signer" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _cert ?? throw "null pointer dereference").privateKey)) };
        };
        var _signatureAlgorithm:stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
        var _sigType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sigHash:stdgo._internal.crypto.Crypto_hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash);
        if (((@:checkr _ka ?? throw "null pointer dereference")._version >= (771 : stdgo.GoUInt16) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__selectsignaturescheme._selectSignatureScheme((@:checkr _ka ?? throw "null pointer dereference")._version, _cert, (@:checkr _clientHello ?? throw "null pointer dereference")._supportedSignatureAlgorithms);
                _signatureAlgorithm = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__typeandhashfromsignaturescheme._typeAndHashFromSignatureScheme(_signatureAlgorithm);
                _sigType = @:tmpset0 __tmp__._0;
                _sigHash = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        } else {
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__legacytypeandhashfrompublickey._legacyTypeAndHashFromPublicKey(_priv.public_());
                _sigType = @:tmpset0 __tmp__._0;
                _sigHash = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        if ((((_sigType == (225 : stdgo.GoUInt8)) || (_sigType == (226 : stdgo.GoUInt8)) : Bool)) != ((@:checkr _ka ?? throw "null pointer dereference")._isRSA)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: certificate cannot be used with the selected cipher suite" : stdgo.GoString)) };
        };
        var _signed = stdgo._internal.crypto.tls.Tls__hashforserverkeyexchange._hashForServerKeyExchange(_sigType, _sigHash, (@:checkr _ka ?? throw "null pointer dereference")._version, (@:checkr _clientHello ?? throw "null pointer dereference")._random, (@:checkr _hello ?? throw "null pointer dereference")._random, _serverECDHEParams);
        var _signOpts = (stdgo.Go.asInterface(_sigHash) : stdgo._internal.crypto.Crypto_signeropts.SignerOpts);
        if (_sigType == ((226 : stdgo.GoUInt8))) {
            _signOpts = stdgo.Go.asInterface((stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt), hash : _sigHash } : stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>));
        };
        var __tmp__ = _priv.sign(@:check2r _config._rand(), _signed, _signOpts), _sig:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((("tls: failed to sign ECDHE parameters: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        var _skx = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg>);
        var _sigAndHashLen = (0 : stdgo.GoInt);
        if (((@:checkr _ka ?? throw "null pointer dereference")._version >= (771 : stdgo.GoUInt16) : Bool)) {
            _sigAndHashLen = (2 : stdgo.GoInt);
        };
        (@:checkr _skx ?? throw "null pointer dereference")._key = (new stdgo.Slice<stdgo.GoUInt8>(((((_serverECDHEParams.length) + _sigAndHashLen : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt) + (_sig.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _skx ?? throw "null pointer dereference")._key.__copyTo__(_serverECDHEParams);
        var _k = ((@:checkr _skx ?? throw "null pointer dereference")._key.__slice__((_serverECDHEParams.length)) : stdgo.Slice<stdgo.GoUInt8>);
        if (((@:checkr _ka ?? throw "null pointer dereference")._version >= (771 : stdgo.GoUInt16) : Bool)) {
            _k[(0 : stdgo.GoInt)] = ((_signatureAlgorithm >> (8i64 : stdgo.GoUInt64) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) : stdgo.GoUInt8);
            _k[(1 : stdgo.GoInt)] = (_signatureAlgorithm : stdgo.GoUInt8);
            _k = (_k.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _k[(0 : stdgo.GoInt)] = (((_sig.length) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _k[(1 : stdgo.GoInt)] = (_sig.length : stdgo.GoUInt8);
        (_k.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_sig);
        return { _0 : _skx, _1 : (null : stdgo.Error) };
    }
}
