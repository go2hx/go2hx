package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_ecdheKeyAgreement_asInterface) class T_ecdheKeyAgreement_static_extension {
    @:keep
    static public function _generateClientKeyExchange( _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement.T_ecdheKeyAgreement>, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>; var _2 : stdgo.Error; } {
        @:recv var _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement.T_ecdheKeyAgreement> = _ka;
        if ((_ka._ckx == null || (_ka._ckx : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: missing ServerKeyExchange message" : stdgo.GoString)) };
        };
        return { _0 : _ka._preMasterSecret, _1 : _ka._ckx, _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function _processServerKeyExchange( _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement.T_ecdheKeyAgreement>, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, _serverHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _skx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg>):stdgo.Error {
        @:recv var _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement.T_ecdheKeyAgreement> = _ka;
        if (((_skx._key.length) < (4 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.crypto.tls.Tls__errServerKeyExchange._errServerKeyExchange;
        };
        if (_skx._key[(0 : stdgo.GoInt)] != ((3 : stdgo.GoUInt8))) {
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected unsupported curve" : stdgo.GoString));
        };
        var _curveID = (((_skx._key[(1 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_CurveID.CurveID) << (8i64 : stdgo.GoUInt64) : stdgo._internal.crypto.tls.Tls_CurveID.CurveID) | (_skx._key[(2 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_CurveID.CurveID) : stdgo._internal.crypto.tls.Tls_CurveID.CurveID);
        var _publicLen = (_skx._key[(3 : stdgo.GoInt)] : stdgo.GoInt);
        if (((_publicLen + (4 : stdgo.GoInt) : stdgo.GoInt) > (_skx._key.length) : Bool)) {
            return stdgo._internal.crypto.tls.Tls__errServerKeyExchange._errServerKeyExchange;
        };
        var _serverECDHEParams = (_skx._key.__slice__(0, ((4 : stdgo.GoInt) + _publicLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _publicKey = (_serverECDHEParams.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _sig = (_skx._key.__slice__(((4 : stdgo.GoInt) + _publicLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if (((_sig.length) < (2 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.crypto.tls.Tls__errServerKeyExchange._errServerKeyExchange;
        };
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__curveForCurveID._curveForCurveID(_curveID), __65:_internal.crypto.ecdh.Ecdh_Curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return stdgo._internal.errors.Errors_new_.new_(("tls: server selected unsupported curve" : stdgo.GoString));
            };
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls__generateECDHEKey._generateECDHEKey(_config._rand(), _curveID), _key:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _ka._key = _key;
        var __tmp__ = _key.curve().newPublicKey(_publicKey), _peerKey:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo._internal.crypto.tls.Tls__errServerKeyExchange._errServerKeyExchange;
        };
        {
            var __tmp__ = _key.ecdh(_peerKey);
            _ka._preMasterSecret = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return stdgo._internal.crypto.tls.Tls__errServerKeyExchange._errServerKeyExchange;
        };
        var _ourPublicKey = _key.publicKey().bytes();
        _ka._ckx = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>);
        _ka._ckx._ciphertext = (new stdgo.Slice<stdgo.GoUInt8>(((1 : stdgo.GoInt) + (_ourPublicKey.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _ka._ckx._ciphertext[(0 : stdgo.GoInt)] = (_ourPublicKey.length : stdgo.GoUInt8);
        stdgo.Go.copySlice((_ka._ckx._ciphertext.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _ourPublicKey);
        var _sigType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sigHash:stdgo._internal.crypto.Crypto_Hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_Hash.Hash);
        if ((_ka._version >= (771 : stdgo.GoUInt16) : Bool)) {
            var _signatureAlgorithm = (((_sig[(0 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme) << (8i64 : stdgo.GoUInt64) : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme) | (_sig[(1 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme) : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme);
            _sig = (_sig.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            if (((_sig.length) < (2 : stdgo.GoInt) : Bool)) {
                return stdgo._internal.crypto.tls.Tls__errServerKeyExchange._errServerKeyExchange;
            };
            if (!stdgo._internal.crypto.tls.Tls__isSupportedSignatureAlgorithm._isSupportedSignatureAlgorithm(_signatureAlgorithm, _clientHello._supportedSignatureAlgorithms)) {
                return stdgo._internal.errors.Errors_new_.new_(("tls: certificate used with invalid signature algorithm" : stdgo.GoString));
            };
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__typeAndHashFromSignatureScheme._typeAndHashFromSignatureScheme(_signatureAlgorithm);
                _sigType = __tmp__._0;
                _sigHash = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return _err;
            };
        } else {
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__legacyTypeAndHashFromPublicKey._legacyTypeAndHashFromPublicKey(stdgo.Go.toInterface(_cert.publicKey));
                _sigType = __tmp__._0;
                _sigHash = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return _err;
            };
        };
        if ((((_sigType == (225 : stdgo.GoUInt8)) || (_sigType == (226 : stdgo.GoUInt8)) : Bool)) != (_ka._isRSA)) {
            return stdgo._internal.crypto.tls.Tls__errServerKeyExchange._errServerKeyExchange;
        };
        var _sigLen = (((_sig[(0 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) | (_sig[(1 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
        if ((_sigLen + (2 : stdgo.GoInt) : stdgo.GoInt) != ((_sig.length))) {
            return stdgo._internal.crypto.tls.Tls__errServerKeyExchange._errServerKeyExchange;
        };
        _sig = (_sig.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _signed = stdgo._internal.crypto.tls.Tls__hashForServerKeyExchange._hashForServerKeyExchange(_sigType, _sigHash, _ka._version, _clientHello._random, _serverHello._random, _serverECDHEParams);
        {
            var _err = (stdgo._internal.crypto.tls.Tls__verifyHandshakeSignature._verifyHandshakeSignature(_sigType, stdgo.Go.toInterface(_cert.publicKey), _sigHash, _signed, _sig) : stdgo.Error);
            if (_err != null) {
                return stdgo._internal.errors.Errors_new_.new_((("tls: invalid signature by the server certificate: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _processClientKeyExchange( _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement.T_ecdheKeyAgreement>, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>, _ckx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>, _version:stdgo.GoUInt16):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement.T_ecdheKeyAgreement> = _ka;
        if (((_ckx._ciphertext.length == (0 : stdgo.GoInt)) || ((_ckx._ciphertext[(0 : stdgo.GoInt)] : stdgo.GoInt) != ((_ckx._ciphertext.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.tls.Tls__errClientKeyExchange._errClientKeyExchange };
        };
        var __tmp__ = _ka._key.curve().newPublicKey((_ckx._ciphertext.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _peerKey:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.tls.Tls__errClientKeyExchange._errClientKeyExchange };
        };
        var __tmp__ = _ka._key.ecdh(_peerKey), _preMasterSecret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.tls.Tls__errClientKeyExchange._errClientKeyExchange };
        };
        return { _0 : _preMasterSecret, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _generateServerKeyExchange( _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement.T_ecdheKeyAgreement>, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, _hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg>; var _1 : stdgo.Error; } {
        @:recv var _ka:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement.T_ecdheKeyAgreement> = _ka;
        var _curveID:stdgo._internal.crypto.tls.Tls_CurveID.CurveID = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_CurveID.CurveID);
        for (__65 => _c in _clientHello._supportedCurves) {
            if (_config._supportsCurve(_c)) {
                _curveID = _c;
                break;
            };
        };
        if (_curveID == ((0 : stdgo._internal.crypto.tls.Tls_CurveID.CurveID))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: no supported elliptic curves offered" : stdgo.GoString)) };
        };
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__curveForCurveID._curveForCurveID(_curveID), __66:_internal.crypto.ecdh.Ecdh_Curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: CurvePreferences includes unsupported curve" : stdgo.GoString)) };
            };
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls__generateECDHEKey._generateECDHEKey(_config._rand(), _curveID), _key:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        _ka._key = _key;
        var _ecdhePublic = _key.publicKey().bytes();
        var _serverECDHEParams = (new stdgo.Slice<stdgo.GoUInt8>(((4 : stdgo.GoInt) + (_ecdhePublic.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _serverECDHEParams[(0 : stdgo.GoInt)] = (3 : stdgo.GoUInt8);
        _serverECDHEParams[(1 : stdgo.GoInt)] = ((_curveID >> (8i64 : stdgo.GoUInt64) : stdgo._internal.crypto.tls.Tls_CurveID.CurveID) : stdgo.GoUInt8);
        _serverECDHEParams[(2 : stdgo.GoInt)] = (_curveID : stdgo.GoUInt8);
        _serverECDHEParams[(3 : stdgo.GoInt)] = (_ecdhePublic.length : stdgo.GoUInt8);
        stdgo.Go.copySlice((_serverECDHEParams.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _ecdhePublic);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_cert.privateKey : stdgo._internal.crypto.Crypto_Signer.Signer)) : stdgo._internal.crypto.Crypto_Signer.Signer), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.Crypto_Signer.Signer), _1 : false };
        }, _priv = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("tls: certificate private key of type %T does not implement crypto.Signer" : stdgo.GoString), stdgo.Go.toInterface(_cert.privateKey)) };
        };
        var _signatureAlgorithm:stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme);
        var _sigType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sigHash:stdgo._internal.crypto.Crypto_Hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_Hash.Hash);
        if ((_ka._version >= (771 : stdgo.GoUInt16) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__selectSignatureScheme._selectSignatureScheme(_ka._version, _cert, _clientHello._supportedSignatureAlgorithms);
                _signatureAlgorithm = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__typeAndHashFromSignatureScheme._typeAndHashFromSignatureScheme(_signatureAlgorithm);
                _sigType = __tmp__._0;
                _sigHash = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        } else {
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__legacyTypeAndHashFromPublicKey._legacyTypeAndHashFromPublicKey(_priv.public_());
                _sigType = __tmp__._0;
                _sigHash = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        if ((((_sigType == (225 : stdgo.GoUInt8)) || (_sigType == (226 : stdgo.GoUInt8)) : Bool)) != (_ka._isRSA)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: certificate cannot be used with the selected cipher suite" : stdgo.GoString)) };
        };
        var _signed = stdgo._internal.crypto.tls.Tls__hashForServerKeyExchange._hashForServerKeyExchange(_sigType, _sigHash, _ka._version, _clientHello._random, _hello._random, _serverECDHEParams);
        var _signOpts = (stdgo.Go.asInterface(_sigHash) : stdgo._internal.crypto.Crypto_SignerOpts.SignerOpts);
        if (_sigType == ((226 : stdgo.GoUInt8))) {
            _signOpts = stdgo.Go.asInterface((stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt), hash : _sigHash } : stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions>));
        };
        var __tmp__ = _priv.sign(_config._rand(), _signed, _signOpts), _sig:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((("tls: failed to sign ECDHE parameters: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        var _skx = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg>);
        var _sigAndHashLen = (0 : stdgo.GoInt);
        if ((_ka._version >= (771 : stdgo.GoUInt16) : Bool)) {
            _sigAndHashLen = (2 : stdgo.GoInt);
        };
        _skx._key = (new stdgo.Slice<stdgo.GoUInt8>(((((_serverECDHEParams.length) + _sigAndHashLen : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt) + (_sig.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.Go.copySlice(_skx._key, _serverECDHEParams);
        var _k = (_skx._key.__slice__((_serverECDHEParams.length)) : stdgo.Slice<stdgo.GoUInt8>);
        if ((_ka._version >= (771 : stdgo.GoUInt16) : Bool)) {
            _k[(0 : stdgo.GoInt)] = ((_signatureAlgorithm >> (8i64 : stdgo.GoUInt64) : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme) : stdgo.GoUInt8);
            _k[(1 : stdgo.GoInt)] = (_signatureAlgorithm : stdgo.GoUInt8);
            _k = (_k.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _k[(0 : stdgo.GoInt)] = (((_sig.length) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _k[(1 : stdgo.GoInt)] = (_sig.length : stdgo.GoUInt8);
        stdgo.Go.copySlice((_k.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _sig);
        return { _0 : _skx, _1 : (null : stdgo.Error) };
    }
}
