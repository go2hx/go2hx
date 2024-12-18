package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_rsaKeyAgreement_asInterface) class T_rsaKeyAgreement_static_extension {
    @:keep
    static public function _generateClientKeyExchange( _ka:stdgo._internal.crypto.tls.Tls_T_rsaKeyAgreement.T_rsaKeyAgreement, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>; var _2 : stdgo.Error; } {
        @:recv var _ka:stdgo._internal.crypto.tls.Tls_T_rsaKeyAgreement.T_rsaKeyAgreement = _ka?.__copy__();
        var _preMasterSecret = (new stdgo.Slice<stdgo.GoUInt8>((48 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _preMasterSecret[(0 : stdgo.GoInt)] = ((_clientHello._vers >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _preMasterSecret[(1 : stdgo.GoInt)] = (_clientHello._vers : stdgo.GoUInt8);
        var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_config._rand(), (_preMasterSecret.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __69:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : null, _2 : _err };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_cert.publicKey : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>), _1 : false };
        }, _rsaKey = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: server certificate contains incorrect key type for selected ciphersuite" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.crypto.rsa.Rsa_encryptPKCS1v15.encryptPKCS1v15(_config._rand(), _rsaKey, _preMasterSecret), _encrypted:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : null, _2 : _err };
        };
        var _ckx = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>);
        _ckx._ciphertext = (new stdgo.Slice<stdgo.GoUInt8>(((_encrypted.length) + (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _ckx._ciphertext[(0 : stdgo.GoInt)] = (((_encrypted.length) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _ckx._ciphertext[(1 : stdgo.GoInt)] = (_encrypted.length : stdgo.GoUInt8);
        (_ckx._ciphertext.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_encrypted);
        return { _0 : _preMasterSecret, _1 : _ckx, _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function _processServerKeyExchange( _ka:stdgo._internal.crypto.tls.Tls_T_rsaKeyAgreement.T_rsaKeyAgreement, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, _serverHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _skx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg>):stdgo.Error {
        @:recv var _ka:stdgo._internal.crypto.tls.Tls_T_rsaKeyAgreement.T_rsaKeyAgreement = _ka?.__copy__();
        return stdgo._internal.errors.Errors_new_.new_(("tls: unexpected ServerKeyExchange" : stdgo.GoString));
    }
    @:keep
    static public function _processClientKeyExchange( _ka:stdgo._internal.crypto.tls.Tls_T_rsaKeyAgreement.T_rsaKeyAgreement, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>, _ckx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>, _version:stdgo.GoUInt16):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _ka:stdgo._internal.crypto.tls.Tls_T_rsaKeyAgreement.T_rsaKeyAgreement = _ka?.__copy__();
        if (((_ckx._ciphertext.length) < (2 : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.tls.Tls__errClientKeyExchange._errClientKeyExchange };
        };
        var _ciphertextLen = (((_ckx._ciphertext[(0 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) | (_ckx._ciphertext[(1 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
        if (_ciphertextLen != (((_ckx._ciphertext.length) - (2 : stdgo.GoInt) : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.tls.Tls__errClientKeyExchange._errClientKeyExchange };
        };
        var _ciphertext = (_ckx._ciphertext.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_cert.privateKey : stdgo._internal.crypto.Crypto_Decrypter.Decrypter)) : stdgo._internal.crypto.Crypto_Decrypter.Decrypter), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.Crypto_Decrypter.Decrypter), _1 : false };
        }, _priv = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("tls: certificate private key does not implement crypto.Decrypter" : stdgo.GoString)) };
        };
        var __tmp__ = _priv.decrypt(_config._rand(), _ciphertext, stdgo.Go.toInterface((stdgo.Go.setRef(({ sessionKeyLen : (48 : stdgo.GoInt) } : stdgo._internal.crypto.rsa.Rsa_PKCS1v15DecryptOptions.PKCS1v15DecryptOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PKCS1v15DecryptOptions.PKCS1v15DecryptOptions>))), _preMasterSecret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        return { _0 : _preMasterSecret, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _generateServerKeyExchange( _ka:stdgo._internal.crypto.tls.Tls_T_rsaKeyAgreement.T_rsaKeyAgreement, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, _hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg>; var _1 : stdgo.Error; } {
        @:recv var _ka:stdgo._internal.crypto.tls.Tls_T_rsaKeyAgreement.T_rsaKeyAgreement = _ka?.__copy__();
        return { _0 : null, _1 : (null : stdgo.Error) };
    }
}
