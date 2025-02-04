package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_rsaKeyAgreement_asInterface) class T_rsaKeyAgreement_static_extension {
    @:keep
    @:tdfield
    static public function _generateClientKeyExchange( _ka:stdgo._internal.crypto.tls.Tls_t_rsakeyagreement.T_rsaKeyAgreement, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg>; var _2 : stdgo.Error; } {
        @:recv var _ka:stdgo._internal.crypto.tls.Tls_t_rsakeyagreement.T_rsaKeyAgreement = _ka?.__copy__();
        var _preMasterSecret = (new stdgo.Slice<stdgo.GoUInt8>((48 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _preMasterSecret[(0 : stdgo.GoInt)] = (((@:checkr _clientHello ?? throw "null pointer dereference")._vers >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _preMasterSecret[(1 : stdgo.GoInt)] = ((@:checkr _clientHello ?? throw "null pointer dereference")._vers : stdgo.GoUInt8);
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull(@:check2r _config._rand(), (_preMasterSecret.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __69:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : null, _2 : _err };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert(((@:checkr _cert ?? throw "null pointer dereference").publicKey : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : false };
        }, _rsaKey = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: server certificate contains incorrect key type for selected ciphersuite" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.crypto.rsa.Rsa_encryptpkcs1v15.encryptPKCS1v15(@:check2r _config._rand(), _rsaKey, _preMasterSecret), _encrypted:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : null, _2 : _err };
        };
        var _ckx = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg>);
        (@:checkr _ckx ?? throw "null pointer dereference")._ciphertext = (new stdgo.Slice<stdgo.GoUInt8>(((_encrypted.length) + (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _ckx ?? throw "null pointer dereference")._ciphertext[(0 : stdgo.GoInt)] = (((_encrypted.length) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        (@:checkr _ckx ?? throw "null pointer dereference")._ciphertext[(1 : stdgo.GoInt)] = (_encrypted.length : stdgo.GoUInt8);
        ((@:checkr _ckx ?? throw "null pointer dereference")._ciphertext.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_encrypted);
        return { _0 : _preMasterSecret, _1 : _ckx, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _processServerKeyExchange( _ka:stdgo._internal.crypto.tls.Tls_t_rsakeyagreement.T_rsaKeyAgreement, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _serverHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _skx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg>):stdgo.Error {
        @:recv var _ka:stdgo._internal.crypto.tls.Tls_t_rsakeyagreement.T_rsaKeyAgreement = _ka?.__copy__();
        return stdgo._internal.errors.Errors_new_.new_(("tls: unexpected ServerKeyExchange" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _processClientKeyExchange( _ka:stdgo._internal.crypto.tls.Tls_t_rsakeyagreement.T_rsaKeyAgreement, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>, _ckx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg>, _version:stdgo.GoUInt16):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _ka:stdgo._internal.crypto.tls.Tls_t_rsakeyagreement.T_rsaKeyAgreement = _ka?.__copy__();
        if ((((@:checkr _ckx ?? throw "null pointer dereference")._ciphertext.length) < (2 : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.tls.Tls__errclientkeyexchange._errClientKeyExchange };
        };
        var _ciphertextLen = ((((@:checkr _ckx ?? throw "null pointer dereference")._ciphertext[(0 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) | ((@:checkr _ckx ?? throw "null pointer dereference")._ciphertext[(1 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
        if (_ciphertextLen != ((((@:checkr _ckx ?? throw "null pointer dereference")._ciphertext.length) - (2 : stdgo.GoInt) : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.tls.Tls__errclientkeyexchange._errClientKeyExchange };
        };
        var _ciphertext = ((@:checkr _ckx ?? throw "null pointer dereference")._ciphertext.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert(((@:checkr _cert ?? throw "null pointer dereference").privateKey : stdgo._internal.crypto.Crypto_decrypter.Decrypter)) : stdgo._internal.crypto.Crypto_decrypter.Decrypter), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.Crypto_decrypter.Decrypter), _1 : false };
        }, _priv = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("tls: certificate private key does not implement crypto.Decrypter" : stdgo.GoString)) };
        };
        var __tmp__ = _priv.decrypt(@:check2r _config._rand(), _ciphertext, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ sessionKeyLen : (48 : stdgo.GoInt) } : stdgo._internal.crypto.rsa.Rsa_pkcs1v15decryptoptions.PKCS1v15DecryptOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pkcs1v15decryptoptions.PKCS1v15DecryptOptions>)))), _preMasterSecret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        return { _0 : _preMasterSecret, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _generateServerKeyExchange( _ka:stdgo._internal.crypto.tls.Tls_t_rsakeyagreement.T_rsaKeyAgreement, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg>; var _1 : stdgo.Error; } {
        @:recv var _ka:stdgo._internal.crypto.tls.Tls_t_rsakeyagreement.T_rsaKeyAgreement = _ka?.__copy__();
        return { _0 : null, _1 : (null : stdgo.Error) };
    }
}
