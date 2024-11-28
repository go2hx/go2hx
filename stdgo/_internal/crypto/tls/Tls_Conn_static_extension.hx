package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.Conn_asInterface) class Conn_static_extension {
    @:keep
    static public function _sessionState( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        return { _0 : (stdgo.Go.setRef(({ _version : _c._vers, _cipherSuite : _c._cipherSuite, _createdAt : (_c._config._time().unix() : stdgo.GoUInt64), _alpnProtocol : _c._clientProtocol?.__copy__(), _peerCertificates : _c._peerCertificates, _activeCertHandles : _c._activeCertHandles, _ocspResponse : _c._ocspResponse, _scts : _c._scts, _isClient : _c._isClient, _extMasterSecret : _c._extMasterSecret, _verifiedChains : _c._verifiedChains } : stdgo._internal.crypto.tls.Tls_SessionState.SessionState)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _quicWaitForSignal( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _c._handshakeMutex.unlock();
            __deferstack__.unshift(() -> _c._handshakeMutex.lock());
            {
                var __select__ = true;
                while (__select__) {
                    if (_c._quic._blockedc != null && _c._quic._blockedc.__isSend__()) {
                        __select__ = false;
                        {
                            _c._quic._blockedc.__send__((new stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg() : stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg));
                            {};
                        };
                    } else if (_c._quic._cancelc != null && _c._quic._cancelc.__isGet__()) {
                        __select__ = false;
                        {
                            _c._quic._cancelc.__get__();
                            {
                                {
                                    final __ret__:stdgo.Error = _c._sendAlertLocked((0 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            {
                var __select__ = true;
                while (__select__) {
                    if (_c._quic._signalc != null && _c._quic._signalc.__isSend__()) {
                        __select__ = false;
                        {
                            _c._quic._signalc.__send__((new stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg() : stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg));
                            {
                                _c._hand.write(_c._quic._readbuf);
                                _c._quic._readbuf = (null : stdgo.Slice<stdgo.GoUInt8>);
                            };
                        };
                    } else if (_c._quic._cancelc != null && _c._quic._cancelc.__isGet__()) {
                        __select__ = false;
                        {
                            _c._quic._cancelc.__get__();
                            {
                                {
                                    final __ret__:stdgo.Error = _c._sendAlertLocked((0 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _quicRejectedEarlyData( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        _c._quic._events = (_c._quic._events.__append__(({ kind : (6 : stdgo._internal.crypto.tls.Tls_QUICEventKind.QUICEventKind) } : stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent)));
    }
    @:keep
    static public function _quicHandshakeComplete( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        _c._quic._events = (_c._quic._events.__append__(({ kind : (7 : stdgo._internal.crypto.tls.Tls_QUICEventKind.QUICEventKind) } : stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent)));
    }
    @:keep
    static public function _quicGetTransportParameters( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        if (_c._quic._transportParams == null) {
            _c._quic._events = (_c._quic._events.__append__(({ kind : (5 : stdgo._internal.crypto.tls.Tls_QUICEventKind.QUICEventKind) } : stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent)));
        };
        while (_c._quic._transportParams == null) {
            {
                var _err = (_c._quicWaitForSignal() : stdgo.Error);
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
            };
        };
        return { _0 : _c._quic._transportParams, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _quicSetTransportParameters( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _params:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        _c._quic._events = (_c._quic._events.__append__(({ kind : (4 : stdgo._internal.crypto.tls.Tls_QUICEventKind.QUICEventKind), data : _params } : stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent)));
    }
    @:keep
    static public function _quicWriteCryptoData( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _level:stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel, _data:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var _last:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent>);
        if (((_c._quic._events.length) > (0 : stdgo.GoInt) : Bool)) {
            _last = (stdgo.Go.setRef(_c._quic._events[((_c._quic._events.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent>);
        };
        if ((((_last == null || (_last : Dynamic).__nil__) || _last.kind != ((3 : stdgo._internal.crypto.tls.Tls_QUICEventKind.QUICEventKind)) : Bool) || (_last.level != _level) : Bool)) {
            _c._quic._events = (_c._quic._events.__append__(({ kind : (3 : stdgo._internal.crypto.tls.Tls_QUICEventKind.QUICEventKind), level : _level } : stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent)));
            _last = (stdgo.Go.setRef(_c._quic._events[((_c._quic._events.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent>);
        };
        _last.data = (_last.data.__append__(...(_data : Array<stdgo.GoUInt8>)));
    }
    @:keep
    static public function _quicSetWriteSecret( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _level:stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel, _suite:stdgo.GoUInt16, _secret:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        _c._quic._events = (_c._quic._events.__append__(({ kind : (2 : stdgo._internal.crypto.tls.Tls_QUICEventKind.QUICEventKind), level : _level, suite : _suite, data : _secret } : stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent)));
    }
    @:keep
    static public function _quicSetReadSecret( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _level:stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel, _suite:stdgo.GoUInt16, _secret:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        _c._quic._events = (_c._quic._events.__append__(({ kind : (1 : stdgo._internal.crypto.tls.Tls_QUICEventKind.QUICEventKind), level : _level, suite : _suite, data : _secret } : stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent)));
    }
    @:keep
    static public function _quicReadHandshakeBytes( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _n:stdgo.GoInt):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        while ((_c._hand.len() < _n : Bool)) {
            {
                var _err = (_c._quicWaitForSignal() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _sendSessionTicket( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _earlyData:Bool):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var _suite = stdgo._internal.crypto.tls.Tls__cipherSuiteTLS13ByID._cipherSuiteTLS13ByID(_c._cipherSuite);
        if ((_suite == null || (_suite : Dynamic).__nil__)) {
            return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: unknown cipher suite" : stdgo.GoString));
        };
        var _psk = _suite._expandLabel(_c._resumptionSecret, ("resumption" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), _suite._hash.size());
        var _m = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsgTLS13.T_newSessionTicketMsgTLS13)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsgTLS13.T_newSessionTicketMsgTLS13>);
        var __tmp__ = _c._sessionState(), _state:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _state._secret = _psk;
        _state.earlyData = _earlyData;
        if (_c._config.wrapSession != null) {
            {
                var __tmp__ = _c._config.wrapSession(_c._connectionStateLocked()?.__copy__(), _state);
                _m._label = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        } else {
            var __tmp__ = _state.bytes(), _stateBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return _err;
            };
            {
                var __tmp__ = _c._config._encryptTicket(_stateBytes, _c._ticketKeys);
                _m._label = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        _m._lifetime = ((604800i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoUInt32);
        var _ageAdd = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _c._config._rand().read(_ageAdd);
            _err = __tmp__._1;
        };
        if (_err != null) {
            return _err;
        };
        _m._ageAdd = stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32(_ageAdd);
        if (_earlyData) {
            _m._maxEarlyData = (-1u32 : stdgo.GoUInt32);
        };
        {
            var __tmp__ = _c._writeHandshakeRecord(stdgo.Go.asInterface(_m), (null : stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash)), __121:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _processCertsFromClient( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _certificate:stdgo._internal.crypto.tls.Tls_Certificate.Certificate):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var _certificates = _certificate.certificate;
        var _certs = (new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>((_certificates.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>);
        var _err:stdgo.Error = (null : stdgo.Error);
        for (_i => _asn1Data in _certificates) {
            {
                {
                    var __tmp__ = stdgo._internal.crypto.x509.X509_parseCertificate.parseCertificate(_asn1Data);
                    _certs[(_i : stdgo.GoInt)] = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_((("tls: failed to parse client certificate: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
                };
            };
            if (_certs[(_i : stdgo.GoInt)].publicKeyAlgorithm == ((1 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm))) {
                var _n = ((stdgo.Go.typeAssert((_certs[(_i : stdgo.GoInt)].publicKey : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>).n.bitLen() : stdgo.GoInt);
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__checkKeySize._checkKeySize(_n), _max:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: client sent certificate containing RSA key larger than %d bits" : stdgo.GoString), stdgo.Go.toInterface(_max));
                    };
                };
            };
        };
        if (((_certs.length == (0 : stdgo.GoInt)) && stdgo._internal.crypto.tls.Tls__requiresClientCert._requiresClientCert(_c._config.clientAuth) : Bool)) {
            if (_c._vers == ((772 : stdgo.GoUInt16))) {
                _c._sendAlert((116 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            } else {
                _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            };
            return stdgo._internal.errors.Errors_new_.new_(("tls: client didn\'t provide a certificate" : stdgo.GoString));
        };
        if (((_c._config.clientAuth >= (3 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType) : Bool) && ((_certs.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _opts = ({ roots : _c._config.clientCAs, currentTime : _c._config._time()?.__copy__(), intermediates : stdgo._internal.crypto.x509.X509_newCertPool.newCertPool(), keyUsages : (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>(1, 1, ...[(2 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>) } : stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions);
            for (__113 => _cert in (_certs.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>)) {
                _opts.intermediates.addCert(_cert);
            };
            var __tmp__ = _certs[(0 : stdgo.GoInt)].verify(_opts?.__copy__()), _chains:stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                var _errCertificateInvalid:stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError = ({} : stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError);
                if (stdgo._internal.errors.Errors_as.as(_err, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_UnknownAuthorityError.UnknownAuthorityError() : stdgo._internal.crypto.x509.X509_UnknownAuthorityError.UnknownAuthorityError)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_UnknownAuthorityError.UnknownAuthorityError>))))) {
                    _c._sendAlert((48 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                } else if ((stdgo._internal.errors.Errors_as.as(_err, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_errCertificateInvalid) : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError>)))) && (_errCertificateInvalid.reason == (1 : stdgo._internal.crypto.x509.X509_InvalidReason.InvalidReason)) : Bool)) {
                    _c._sendAlert((45 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                } else {
                    _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                };
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ unverifiedCertificates : _certs, err : _err } : stdgo._internal.crypto.tls.Tls_CertificateVerificationError.CertificateVerificationError)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateVerificationError.CertificateVerificationError>));
            };
            _c._verifiedChains = _chains;
        };
        _c._peerCertificates = _certs;
        _c._ocspResponse = _certificate.ocspstaple;
        _c._scts = _certificate.signedCertificateTimestamps;
        if (((_certs.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                final __type__ = _certs[(0 : stdgo.GoInt)].publicKey;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey))) {} else {
                    _c._sendAlert((43 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: client certificate contains an unsupported public key of type %T" : stdgo.GoString), _certs[(0 : stdgo.GoInt)].publicKey);
                };
            };
        };
        if (_c._config.verifyPeerCertificate != null) {
            {
                var _err = (_c._config.verifyPeerCertificate(_certificates, _c._verifiedChains) : stdgo.Error);
                if (_err != null) {
                    _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _readClientHello( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _ctx:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>), _1 : false };
        }, _clientHello = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return { _0 : null, _1 : stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_clientHello)), _msg) };
        };
        var _configForClient:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        var _originalConfig = _c._config;
        if (_c._config.getConfigForClient != null) {
            var _chi = stdgo._internal.crypto.tls.Tls__clientHelloInfo._clientHelloInfo(_ctx, _c, _clientHello);
            {
                {
                    var __tmp__ = _c._config.getConfigForClient(_chi);
                    _configForClient = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return { _0 : null, _1 : _err };
                } else if ((_configForClient != null && ((_configForClient : Dynamic).__nil__ == null || !(_configForClient : Dynamic).__nil__))) {
                    _c._config = _configForClient;
                };
            };
        };
        _c._ticketKeys = _originalConfig._ticketKeys(_configForClient);
        var _clientVersions = _clientHello._supportedVersions;
        if ((_clientHello._supportedVersions.length) == ((0 : stdgo.GoInt))) {
            _clientVersions = stdgo._internal.crypto.tls.Tls__supportedVersionsFromMax._supportedVersionsFromMax(_clientHello._vers);
        };
        {
            var __tmp__ = _c._config._mutualVersion(false, _clientVersions);
            _c._vers = __tmp__._0;
            _ok = __tmp__._1;
        };
        if (!_ok) {
            _c._sendAlert((70 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("tls: client offered only unsupported versions: %x" : stdgo.GoString), stdgo.Go.toInterface(_clientVersions)) };
        };
        _c._haveVers = true;
        _c._in._version = _c._vers;
        _c._out._version = _c._vers;
        return { _0 : _clientHello, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _serverHandshake( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var __tmp__ = _c._readClientHello(_ctx), _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if (_c._vers == ((772 : stdgo.GoUInt16))) {
            var _hs = ({ _c : _c, _ctx : _ctx, _clientHello : _clientHello } : stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13);
            return _hs._handshake();
        };
        var _hs = ({ _c : _c, _ctx : _ctx, _clientHello : _clientHello } : stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState);
        return _hs._handshake();
    }
    @:keep
    static public function _handleNewSessionTicket( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _msg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsgTLS13.T_newSessionTicketMsgTLS13>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        if (!_c._isClient) {
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: received new session ticket from a client" : stdgo.GoString));
        };
        if ((_c._config.sessionTicketsDisabled || (_c._config.clientSessionCache == null) : Bool)) {
            return (null : stdgo.Error);
        };
        if (_msg._lifetime == ((0u32 : stdgo.GoUInt32))) {
            return (null : stdgo.Error);
        };
        var _lifetime = ((_msg._lifetime : stdgo._internal.time.Time_Duration.Duration) * (1000000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
        if ((_lifetime > (604800000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: received a session ticket with invalid lifetime" : stdgo.GoString));
        };
        if ((((_c._quic != null && ((_c._quic : Dynamic).__nil__ == null || !(_c._quic : Dynamic).__nil__)) && _msg._maxEarlyData != ((0u32 : stdgo.GoUInt32)) : Bool) && (_msg._maxEarlyData != (-1u32 : stdgo.GoUInt32)) : Bool)) {
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: invalid early data for QUIC connection" : stdgo.GoString));
        };
        var _cipherSuite = stdgo._internal.crypto.tls.Tls__cipherSuiteTLS13ByID._cipherSuiteTLS13ByID(_c._cipherSuite);
        if (((_cipherSuite == null || (_cipherSuite : Dynamic).__nil__) || (_c._resumptionSecret == null) : Bool)) {
            return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
        };
        var _psk = _cipherSuite._expandLabel(_c._resumptionSecret, ("resumption" : stdgo.GoString), _msg._nonce, _cipherSuite._hash.size());
        var __tmp__ = _c._sessionState(), _session:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        _session._secret = _psk;
        _session._useBy = (_c._config._time().add(_lifetime).unix() : stdgo.GoUInt64);
        _session._ageAdd = _msg._ageAdd;
        _session.earlyData = ((_c._quic != null && ((_c._quic : Dynamic).__nil__ == null || !(_c._quic : Dynamic).__nil__)) && (_msg._maxEarlyData == (-1u32 : stdgo.GoUInt32)) : Bool);
        var _cs = (stdgo.Go.setRef(({ _ticket : _msg._label, _session : _session } : stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>);
        {
            var _cacheKey = (_c._clientSessionCacheKey()?.__copy__() : stdgo.GoString);
            if (_cacheKey != (stdgo.Go.str())) {
                _c._config.clientSessionCache.put(_cacheKey?.__copy__(), _cs);
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _clientSessionCacheKey( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        if (((_c._config.serverName.length) > (0 : stdgo.GoInt) : Bool)) {
            return _c._config.serverName?.__copy__();
        };
        if (_c._conn != null) {
            return (_c._conn.remoteAddr().string() : stdgo.GoString)?.__copy__();
        };
        return stdgo.Go.str()?.__copy__();
    }
    @:keep
    static public function _getClientCertificate( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _cri:stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        if (_c._config.getClientCertificate != null) {
            return _c._config.getClientCertificate(_cri);
        };
        for (__89 => _chain in _c._config.certificates) {
            {
                var _err = (_cri.supportsCertificate((stdgo.Go.setRef(_chain) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>)) : stdgo.Error);
                if (_err != null) {
                    continue;
                };
            };
            return { _0 : (stdgo.Go.setRef(_chain) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>), _1 : (null : stdgo.Error) };
        };
        return { _0 : (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_Certificate.Certificate)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _verifyServerCertificate( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _certificates:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var _activeHandles = (new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert>>((_certificates.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert>>);
        var _certs = (new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>((_certificates.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>);
        for (_i => _asn1Data in _certificates) {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__globalCertCache._globalCertCache._newCert(_asn1Data), _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_((("tls: failed to parse certificate from server: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
            };
            if (_cert._cert.publicKeyAlgorithm == ((1 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm))) {
                var _n = ((stdgo.Go.typeAssert((_cert._cert.publicKey : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>).n.bitLen() : stdgo.GoInt);
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__checkKeySize._checkKeySize(_n), _max:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: server sent certificate containing RSA key larger than %d bits" : stdgo.GoString), stdgo.Go.toInterface(_max));
                    };
                };
            };
            _activeHandles[(_i : stdgo.GoInt)] = _cert;
            _certs[(_i : stdgo.GoInt)] = _cert._cert;
        };
        if (!_c._config.insecureSkipVerify) {
            var _opts = ({ roots : _c._config.rootCAs, currentTime : _c._config._time()?.__copy__(), dnsname : _c._config.serverName?.__copy__(), intermediates : stdgo._internal.crypto.x509.X509_newCertPool.newCertPool() } : stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions);
            for (__113 => _cert in (_certs.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>)) {
                _opts.intermediates.addCert(_cert);
            };
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = _certs[(0 : stdgo.GoInt)].verify(_opts?.__copy__());
                _c._verifiedChains = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ unverifiedCertificates : _certs, err : _err } : stdgo._internal.crypto.tls.Tls_CertificateVerificationError.CertificateVerificationError)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateVerificationError.CertificateVerificationError>));
            };
        };
        {
            final __type__ = _certs[(0 : stdgo.GoInt)].publicKey;
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey))) {
                        break;
                    } else {
                        _c._sendAlert((43 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: server\'s certificate contains an unsupported type of public key: %T" : stdgo.GoString), _certs[(0 : stdgo.GoInt)].publicKey);
                    };
                    break;
                };
            };
        };
        _c._activeCertHandles = _activeHandles;
        _c._peerCertificates = _certs;
        if (_c._config.verifyPeerCertificate != null) {
            {
                var _err = (_c._config.verifyPeerCertificate(_certificates, _c._verifiedChains) : stdgo.Error);
                if (_err != null) {
                    _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return _err;
                };
            };
        };
        if (_c._config.verifyConnection != null) {
            {
                var _err = (_c._config.verifyConnection(_c._connectionStateLocked()?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _pickTLSVersion( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _serverHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var _peerVersion = (_serverHello._vers : stdgo.GoUInt16);
        if (_serverHello._supportedVersion != ((0 : stdgo.GoUInt16))) {
            _peerVersion = _serverHello._supportedVersion;
        };
        var __tmp__ = _c._config._mutualVersion(true, (new stdgo.Slice<stdgo.GoUInt16>(1, 1, ...[_peerVersion]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>)), _vers:stdgo.GoUInt16 = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _c._sendAlert((70 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: server selected unsupported protocol version %x" : stdgo.GoString), stdgo.Go.toInterface(_peerVersion));
        };
        _c._vers = _vers;
        _c._haveVers = true;
        _c._in._version = _vers;
        _c._out._version = _vers;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _loadSession( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var _session = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>), _earlySecret = (null : stdgo.Slice<stdgo.GoUInt8>), _binderKey = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        if ((_c._config.sessionTicketsDisabled || (_c._config.clientSessionCache == null) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        _hello._ticketSupported = true;
        if (_hello._supportedVersions[(0 : stdgo.GoInt)] == ((772 : stdgo.GoUInt16))) {
            _hello._pskModes = (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (_c._handshakes != ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        var _cacheKey = (_c._clientSessionCacheKey()?.__copy__() : stdgo.GoString);
        if (_cacheKey == (stdgo.Go.str())) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        var __tmp__ = _c._config.clientSessionCache.get(_cacheKey?.__copy__()), _cs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState> = __tmp__._0, _ok:Bool = __tmp__._1;
        if ((!_ok || (_cs == null || (_cs : Dynamic).__nil__) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        _session = _cs._session;
        var _versOk = (false : Bool);
        for (__117 => _v in _hello._supportedVersions) {
            if (_v == (_session._version)) {
                _versOk = true;
                break;
            };
        };
        if (!_versOk) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        if (_c._config._time().after(_session._peerCertificates[(0 : stdgo.GoInt)].notAfter?.__copy__())) {
            _c._config.clientSessionCache.put(_cacheKey?.__copy__(), null);
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        if (!_c._config.insecureSkipVerify) {
            if ((_session._verifiedChains.length) == ((0 : stdgo.GoInt))) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                    _session = __tmp__._0;
                    _earlySecret = __tmp__._1;
                    _binderKey = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
            };
            {
                var _err = (_session._peerCertificates[(0 : stdgo.GoInt)].verifyHostname(_c._config.serverName?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                        _session = __tmp__._0;
                        _earlySecret = __tmp__._1;
                        _binderKey = __tmp__._2;
                        _err = __tmp__._3;
                        __tmp__;
                    };
                };
            };
        };
        if (_session._version != ((772 : stdgo.GoUInt16))) {
            if ((stdgo._internal.crypto.tls.Tls__mutualCipherSuite._mutualCipherSuite(_hello._cipherSuites, _session._cipherSuite) == null || (stdgo._internal.crypto.tls.Tls__mutualCipherSuite._mutualCipherSuite(_hello._cipherSuites, _session._cipherSuite) : Dynamic).__nil__)) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                    _session = __tmp__._0;
                    _earlySecret = __tmp__._1;
                    _binderKey = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
            };
            _hello._sessionTicket = _cs._ticket;
            return { _0 : _session, _1 : _earlySecret, _2 : _binderKey, _3 : _err };
        };
        if (_c._config._time().after(stdgo._internal.time.Time_unix.unix((_session._useBy : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__())) {
            _c._config.clientSessionCache.put(_cacheKey?.__copy__(), null);
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        var _cipherSuite = stdgo._internal.crypto.tls.Tls__cipherSuiteTLS13ByID._cipherSuiteTLS13ByID(_session._cipherSuite);
        if ((_cipherSuite == null || (_cipherSuite : Dynamic).__nil__)) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        var _cipherSuiteOk = (false : Bool);
        for (__154 => _offeredID in _hello._cipherSuites) {
            var _offeredSuite = stdgo._internal.crypto.tls.Tls__cipherSuiteTLS13ByID._cipherSuiteTLS13ByID(_offeredID);
            if (((_offeredSuite != null && ((_offeredSuite : Dynamic).__nil__ == null || !(_offeredSuite : Dynamic).__nil__)) && (_offeredSuite._hash == _cipherSuite._hash) : Bool)) {
                _cipherSuiteOk = true;
                break;
            };
        };
        if (!_cipherSuiteOk) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        if (((_c._quic != null && ((_c._quic : Dynamic).__nil__ == null || !(_c._quic : Dynamic).__nil__)) && _session.earlyData : Bool)) {
            if ((stdgo._internal.crypto.tls.Tls__mutualCipherSuiteTLS13._mutualCipherSuiteTLS13(_hello._cipherSuites, _session._cipherSuite) != null && ((stdgo._internal.crypto.tls.Tls__mutualCipherSuiteTLS13._mutualCipherSuiteTLS13(_hello._cipherSuites, _session._cipherSuite) : Dynamic).__nil__ == null || !(stdgo._internal.crypto.tls.Tls__mutualCipherSuiteTLS13._mutualCipherSuiteTLS13(_hello._cipherSuites, _session._cipherSuite) : Dynamic).__nil__))) {
                for (__163 => _alpn in _hello._alpnProtocols) {
                    if (_alpn == (_session._alpnProtocol)) {
                        _hello._earlyData = true;
                        break;
                    };
                };
            };
        };
        var _ticketAge = (_c._config._time().sub(stdgo._internal.time.Time_unix.unix((_session._createdAt : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
        var _identity = ({ _label : _cs._ticket, _obfuscatedTicketAge : (((_ticketAge / (1000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoUInt32) + _session._ageAdd : stdgo.GoUInt32) } : stdgo._internal.crypto.tls.Tls_T_pskIdentity.T_pskIdentity);
        _hello._pskIdentities = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_pskIdentity.T_pskIdentity>(1, 1, ...[_identity?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_T_pskIdentity.T_pskIdentity)])) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_pskIdentity.T_pskIdentity>);
        _hello._pskBinders = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(1, 1, ...[(new stdgo.Slice<stdgo.GoUInt8>((_cipherSuite._hash.size() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        _earlySecret = _cipherSuite._extract(_session._secret, (null : stdgo.Slice<stdgo.GoUInt8>));
        _binderKey = _cipherSuite._deriveSecret(_earlySecret, ("res binder" : stdgo.GoString), (null : stdgo._internal.hash.Hash_Hash.Hash));
        var _transcript = (_cipherSuite._hash.new_() : stdgo._internal.hash.Hash_Hash.Hash);
        var __tmp__ = _hello._marshalWithoutBinders(), _helloBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : _err };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        _transcript.write(_helloBytes);
        var _pskBinders = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(1, 1, ...[_cipherSuite._finishedHash(_binderKey, _transcript)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        {
            var _err = (_hello._updateBinders(_pskBinders) : stdgo.Error);
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : _err };
                    _session = __tmp__._0;
                    _earlySecret = __tmp__._1;
                    _binderKey = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
            };
        };
        return { _0 : _session, _1 : _earlySecret, _2 : _binderKey, _3 : _err };
    }
    @:keep
    static public function _clientHandshake( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        var _err = (null : stdgo.Error);
        try {
            if ((_c._config == null || (_c._config : Dynamic).__nil__)) {
                _c._config = stdgo._internal.crypto.tls.Tls__defaultConfig._defaultConfig();
            };
            _c._didResume = false;
            var __tmp__ = _c._makeClientHello(), _hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg> = __tmp__._0, _ecdheKey:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return _err;
            };
            _c._serverName = _hello._serverName?.__copy__();
            var __tmp__ = _c._loadSession(_hello), _session:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = __tmp__._0, _earlySecret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _binderKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._2, _err:stdgo.Error = __tmp__._3;
            if (_err != null) {
                return _err;
            };
            if ((_session != null && ((_session : Dynamic).__nil__ == null || !(_session : Dynamic).__nil__))) {
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        if (_err != null) {
                            {
                                var _cacheKey = (_c._clientSessionCacheKey()?.__copy__() : stdgo.GoString);
                                if (_cacheKey != (stdgo.Go.str())) {
                                    _c._config.clientSessionCache.put(_cacheKey?.__copy__(), null);
                                };
                            };
                        };
                    };
                    a();
                }));
            };
            {
                var __tmp__ = _c._writeHandshakeRecord(stdgo.Go.asInterface(_hello), (null : stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash)), __113:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            if (_hello._earlyData) {
                var _suite = stdgo._internal.crypto.tls.Tls__cipherSuiteTLS13ByID._cipherSuiteTLS13ByID(_session._cipherSuite);
                var _transcript = (_suite._hash.new_() : stdgo._internal.hash.Hash_Hash.Hash);
                {
                    var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_hello), _transcript) : stdgo.Error);
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return _err;
                        };
                    };
                };
                var _earlyTrafficSecret = _suite._deriveSecret(_earlySecret, ("c e traffic" : stdgo.GoString), _transcript);
                _c._quicSetWriteSecret((1 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _suite._id, _earlyTrafficSecret);
            };
            var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>), _1 : false };
            }, _serverHello = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                {
                    final __ret__:stdgo.Error = _err = stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_serverHello)), _msg);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                var _err = (_c._pickTLSVersion(_serverHello) : stdgo.Error);
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            var _maxVers = (_c._config._maxSupportedVersion(true) : stdgo.GoUInt16);
            var _tls12Downgrade = (((_serverHello._random.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) == (stdgo.Go.str("DOWNGRD", 1)) : Bool);
            var _tls11Downgrade = (((_serverHello._random.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) == (stdgo.Go.str("DOWNGRD", 0)) : Bool);
            if ((((_maxVers == ((772 : stdgo.GoUInt16)) && (_c._vers <= (771 : stdgo.GoUInt16) : Bool) : Bool) && ((_tls12Downgrade || _tls11Downgrade : Bool)) : Bool) || ((_maxVers == ((771 : stdgo.GoUInt16)) && (_c._vers <= (770 : stdgo.GoUInt16) : Bool) : Bool) && _tls11Downgrade : Bool) : Bool)) {
                _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                {
                    final __ret__:stdgo.Error = _err = stdgo._internal.errors.Errors_new_.new_(("tls: downgrade attempt detected, possibly due to a MitM attack or a broken middlebox" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (_c._vers == ((772 : stdgo.GoUInt16))) {
                var _hs = (stdgo.Go.setRef(({ _c : _c, _ctx : _ctx, _serverHello : _serverHello, _hello : _hello, _ecdheKey : _ecdheKey, _session : _session, _earlySecret : _earlySecret, _binderKey : _binderKey } : stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13>);
                {
                    final __ret__:stdgo.Error = _err = _hs._handshake();
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _hs = (stdgo.Go.setRef(({ _c : _c, _ctx : _ctx, _serverHello : _serverHello, _hello : _hello, _session : _session } : stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>);
            {
                var _err = (_hs._handshake() : stdgo.Error);
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            {
                final __ret__:stdgo.Error = _err = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _err;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _err;
        };
    }
    @:keep
    static public function _makeClientHello( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>; var _1 : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var _config = _c._config;
        if (((_config.serverName.length == (0 : stdgo.GoInt)) && !_config.insecureSkipVerify : Bool)) {
            return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: either ServerName or InsecureSkipVerify must be specified in the tls.Config" : stdgo.GoString)) };
        };
        var _nextProtosLength = (0 : stdgo.GoInt);
        for (__85 => _proto in _config.nextProtos) {
            {
                var _l = (_proto.length : stdgo.GoInt);
                if (((_l == (0 : stdgo.GoInt)) || (_l > (255 : stdgo.GoInt) : Bool) : Bool)) {
                    return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid NextProtos value" : stdgo.GoString)) };
                } else {
                    _nextProtosLength = (_nextProtosLength + (((1 : stdgo.GoInt) + _l : stdgo.GoInt)) : stdgo.GoInt);
                };
            };
        };
        if ((_nextProtosLength > (65535 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: NextProtos values too large" : stdgo.GoString)) };
        };
        var _supportedVersions = _config._supportedVersions(true);
        if ((_supportedVersions.length) == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: no supported versions satisfy MinVersion and MaxVersion" : stdgo.GoString)) };
        };
        var _clientHelloVersion = (_config._maxSupportedVersion(true) : stdgo.GoUInt16);
        if ((_clientHelloVersion > (771 : stdgo.GoUInt16) : Bool)) {
            _clientHelloVersion = (771 : stdgo.GoUInt16);
        };
        var _hello = (stdgo.Go.setRef(({ _vers : _clientHelloVersion, _compressionMethods : (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _random : (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _extendedMasterSecret : true, _ocspStapling : true, _scts : true, _serverName : stdgo._internal.crypto.tls.Tls__hostnameInSNI._hostnameInSNI(_config.serverName?.__copy__())?.__copy__(), _supportedCurves : _config._curvePreferences(), _supportedPoints : (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _secureRenegotiationSupported : true, _alpnProtocols : _config.nextProtos, _supportedVersions : _supportedVersions } : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>);
        if ((_c._handshakes > (0 : stdgo.GoInt) : Bool)) {
            _hello._secureRenegotiation = (_c._clientFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _preferenceOrder = stdgo._internal.crypto.tls.Tls__cipherSuitesPreferenceOrder._cipherSuitesPreferenceOrder;
        if (!stdgo._internal.crypto.tls.Tls__hasAESGCMHardwareSupport._hasAESGCMHardwareSupport) {
            _preferenceOrder = stdgo._internal.crypto.tls.Tls__cipherSuitesPreferenceOrderNoAES._cipherSuitesPreferenceOrderNoAES;
        };
        var _configCipherSuites = _config._cipherSuites();
        _hello._cipherSuites = (new stdgo.Slice<stdgo.GoUInt16>((0 : stdgo.GoInt).toBasic(), (_configCipherSuites.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        for (__118 => _suiteId in _preferenceOrder) {
            var _suite = stdgo._internal.crypto.tls.Tls__mutualCipherSuite._mutualCipherSuite(_configCipherSuites, _suiteId);
            if ((_suite == null || (_suite : Dynamic).__nil__)) {
                continue;
            };
            if (((_hello._vers < (771 : stdgo.GoUInt16) : Bool) && ((_suite._flags & (4 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                continue;
            };
            _hello._cipherSuites = (_hello._cipherSuites.__append__(_suiteId));
        };
        var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_config._rand(), _hello._random), __123:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_((("tls: short read from Rand: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        if ((_c._quic == null || (_c._quic : Dynamic).__nil__)) {
            _hello._sessionId = (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_config._rand(), _hello._sessionId), __136:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_((("tls: short read from Rand: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                };
            };
        };
        if ((_hello._vers >= (771 : stdgo.GoUInt16) : Bool)) {
            _hello._supportedSignatureAlgorithms = stdgo._internal.crypto.tls.Tls__supportedSignatureAlgorithms._supportedSignatureAlgorithms();
        };
        if (stdgo._internal.crypto.tls.Tls__testingOnlyForceClientHelloSignatureAlgorithms._testingOnlyForceClientHelloSignatureAlgorithms != null) {
            _hello._supportedSignatureAlgorithms = stdgo._internal.crypto.tls.Tls__testingOnlyForceClientHelloSignatureAlgorithms._testingOnlyForceClientHelloSignatureAlgorithms;
        };
        var _key:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey> = (null : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>);
        if (_hello._supportedVersions[(0 : stdgo.GoInt)] == ((772 : stdgo.GoUInt16))) {
            if ((_hello._supportedVersions.length) == ((1 : stdgo.GoInt))) {
                _hello._cipherSuites = (null : stdgo.Slice<stdgo.GoUInt16>);
            };
            if (stdgo._internal.crypto.tls.Tls__hasAESGCMHardwareSupport._hasAESGCMHardwareSupport) {
                _hello._cipherSuites = (_hello._cipherSuites.__append__(...(stdgo._internal.crypto.tls.Tls__defaultCipherSuitesTLS13._defaultCipherSuitesTLS13 : Array<stdgo.GoUInt16>)));
            } else {
                _hello._cipherSuites = (_hello._cipherSuites.__append__(...(stdgo._internal.crypto.tls.Tls__defaultCipherSuitesTLS13NoAES._defaultCipherSuitesTLS13NoAES : Array<stdgo.GoUInt16>)));
            };
            var _curveID = (_config._curvePreferences()[(0 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_CurveID.CurveID);
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__curveForCurveID._curveForCurveID(_curveID), __136:_internal.crypto.ecdh.Ecdh_Curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: CurvePreferences includes unsupported curve" : stdgo.GoString)) };
                };
            };
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__generateECDHEKey._generateECDHEKey(_config._rand(), _curveID);
                _key = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : null, _2 : _err };
            };
            _hello._keyShares = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare>(1, 1, ...[({ _group : _curveID, _data : _key.publicKey().bytes() } : stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare)])) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare>);
        };
        if ((_c._quic != null && ((_c._quic : Dynamic).__nil__ == null || !(_c._quic : Dynamic).__nil__))) {
            var __tmp__ = _c._quicGetTransportParameters(), _p:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : null, _2 : _err };
            };
            if (_p == null) {
                _p = (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            };
            _hello._quicTransportParameters = _p;
        };
        return { _0 : _hello, _1 : _key, _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function verifyHostname( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _host:stdgo.GoString):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _c._handshakeMutex.lock();
            __deferstack__.unshift(() -> _c._handshakeMutex.unlock());
            if (!_c._isClient) {
                {
                    final __ret__:stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("tls: VerifyHostname called on TLS server connection" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (!_c._isHandshakeComplete.load()) {
                {
                    final __ret__:stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("tls: handshake has not yet been performed" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if ((_c._verifiedChains.length) == ((0 : stdgo.GoInt))) {
                {
                    final __ret__:stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("tls: handshake did not verify certificate chain" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo.Error = _c._peerCertificates[(0 : stdgo.GoInt)].verifyHostname(_host?.__copy__());
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function ocspresponse( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _c._handshakeMutex.lock();
            __deferstack__.unshift(() -> _c._handshakeMutex.unlock());
            {
                final __ret__:stdgo.Slice<stdgo.GoUInt8> = _c._ocspResponse;
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _connectionStateLocked( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var _state:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState = ({} : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState);
        _state.handshakeComplete = _c._isHandshakeComplete.load();
        _state.version = _c._vers;
        _state.negotiatedProtocol = _c._clientProtocol?.__copy__();
        _state.didResume = _c._didResume;
        _state.negotiatedProtocolIsMutual = true;
        _state.serverName = _c._serverName?.__copy__();
        _state.cipherSuite = _c._cipherSuite;
        _state.peerCertificates = _c._peerCertificates;
        _state.verifiedChains = _c._verifiedChains;
        _state.signedCertificateTimestamps = _c._scts;
        _state.ocspresponse = _c._ocspResponse;
        if ((((!_c._didResume || _c._extMasterSecret : Bool)) && (_c._vers != (772 : stdgo.GoUInt16)) : Bool)) {
            if (_c._clientFinishedIsFirst) {
                _state.tlsunique = (_c._clientFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                _state.tlsunique = (_c._serverFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        if (_c._config.renegotiation != ((0 : stdgo._internal.crypto.tls.Tls_RenegotiationSupport.RenegotiationSupport))) {
            _state._ekm = stdgo._internal.crypto.tls.Tls__noExportedKeyingMaterial._noExportedKeyingMaterial;
        } else {
            _state._ekm = _c._ekm;
        };
        return _state?.__copy__();
    }
    @:keep
    static public function connectionState( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _c._handshakeMutex.lock();
            __deferstack__.unshift(() -> _c._handshakeMutex.unlock());
            {
                final __ret__:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState = _c._connectionStateLocked()?.__copy__();
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState = ({} : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState = ({} : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _handshakeContext( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        var _ret = (null : stdgo.Error);
        try {
            if (_c._isHandshakeComplete.load()) {
                return _ret = (null : stdgo.Error);
            };
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_ctx), _handshakeCtx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            __deferstack__.unshift(() -> _cancel());
            if ((_c._quic != null && ((_c._quic : Dynamic).__nil__ == null || !(_c._quic : Dynamic).__nil__))) {
                _c._quic._cancelc = _handshakeCtx.done();
                _c._quic._cancel = _cancel;
            } else if (_ctx.done() != null) {
                var _done = (new stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>(0, () -> ({} : stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg)) : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>);
                var _interruptRes = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        if (_done != null) _done.__close__();
                        {
                            var _ctxErr = (_interruptRes.__get__() : stdgo.Error);
                            if (_ctxErr != null) {
                                _ret = _ctxErr;
                            };
                        };
                    };
                    a();
                }));
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        {
                            var __select__ = true;
                            while (__select__) {
                                if (_handshakeCtx.done() != null && _handshakeCtx.done().__isGet__()) {
                                    __select__ = false;
                                    {
                                        _handshakeCtx.done().__get__();
                                        {
                                            var __blank__ = _c._conn.close();
                                            _interruptRes.__send__(_handshakeCtx.err());
                                        };
                                    };
                                } else if (_done != null && _done.__isGet__()) {
                                    __select__ = false;
                                    {
                                        _done.__get__();
                                        {
                                            _interruptRes.__send__(null);
                                        };
                                    };
                                };
                                #if !js Sys.sleep(0.01) #else null #end;
                                stdgo._internal.internal.Async.tick();
                            };
                        };
                    };
                    a();
                }));
            };
            _c._handshakeMutex.lock();
            __deferstack__.unshift(() -> _c._handshakeMutex.unlock());
            {
                var _err = (_c._handshakeErr : stdgo.Error);
                if (_err != null) {
                    {
                        final __ret__:stdgo.Error = _ret = _err;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            if (_c._isHandshakeComplete.load()) {
                {
                    final __ret__:stdgo.Error = _ret = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _c._in.lock();
            __deferstack__.unshift(() -> _c._in.unlock());
            _c._handshakeErr = _c._handshakeFn(_handshakeCtx);
            if (_c._handshakeErr == null) {
                _c._handshakes++;
            } else {
                _c._flush();
            };
            if (((_c._handshakeErr == null) && !_c._isHandshakeComplete.load() : Bool)) {
                _c._handshakeErr = stdgo._internal.errors.Errors_new_.new_(("tls: internal error: handshake should have had a result" : stdgo.GoString));
            };
            if (((_c._handshakeErr != null) && _c._isHandshakeComplete.load() : Bool)) {
                throw stdgo.Go.toInterface(("tls: internal error: handshake returned an error but is marked successful" : stdgo.GoString));
            };
            if ((_c._quic != null && ((_c._quic : Dynamic).__nil__ == null || !(_c._quic : Dynamic).__nil__))) {
                if (_c._handshakeErr == null) {
                    _c._quicHandshakeComplete();
                    _c._quicSetReadSecret((3 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _c._cipherSuite, _c._in._trafficSecret);
                } else {
                    var _a:stdgo._internal.crypto.tls.Tls_T_alert.T_alert = ((0 : stdgo.GoUInt8) : stdgo._internal.crypto.tls.Tls_T_alert.T_alert);
                    _c._out.lock();
                    if (!stdgo._internal.errors.Errors_as.as(_c._out._err, stdgo.Go.toInterface(stdgo.Go.pointer(_a)))) {
                        _a = (80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert);
                    };
                    _c._out.unlock();
                    _c._handshakeErr = stdgo._internal.fmt.Fmt_errorf.errorf(("%w%.0w" : stdgo.GoString), stdgo.Go.toInterface(_c._handshakeErr), stdgo.Go.toInterface(stdgo.Go.asInterface((_a : stdgo._internal.crypto.tls.Tls_AlertError.AlertError))));
                };
                if (_c._quic._blockedc != null) _c._quic._blockedc.__close__();
                if (_c._quic._signalc != null) _c._quic._signalc.__close__();
            };
            {
                final __ret__:stdgo.Error = _ret = _c._handshakeErr;
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _ret;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _ret;
        };
    }
    @:keep
    static public function handshakeContext( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        return _c._handshakeContext(_ctx);
    }
    @:keep
    static public function handshake( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        return _c.handshakeContext(stdgo._internal.context.Context_background.background());
    }
    @:keep
    static public function _closeNotify( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _c._out.lock();
            __deferstack__.unshift(() -> _c._out.unlock());
            if (!_c._closeNotifySent) {
                _c.setWriteDeadline(stdgo._internal.time.Time_now.now().add((5000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__());
                _c._closeNotifyErr = _c._sendAlertLocked((0 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                _c._closeNotifySent = true;
                _c.setWriteDeadline(stdgo._internal.time.Time_now.now()?.__copy__());
            };
            {
                final __ret__:stdgo.Error = _c._closeNotifyErr;
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function closeWrite( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        if (!_c._isHandshakeComplete.load()) {
            return stdgo._internal.crypto.tls.Tls__errEarlyCloseWrite._errEarlyCloseWrite;
        };
        return _c._closeNotify();
    }
    @:keep
    static public function close( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var _x:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        while (true) {
            _x = _c._activeCall.load();
            if ((_x & (1 : stdgo.GoInt32) : stdgo.GoInt32) != ((0 : stdgo.GoInt32))) {
                return stdgo._internal.net.Net_errClosed.errClosed;
            };
            if (_c._activeCall.compareAndSwap(_x, (_x | (1 : stdgo.GoInt32) : stdgo.GoInt32))) {
                break;
            };
        };
        if (_x != ((0 : stdgo.GoInt32))) {
            return _c._conn.close();
        };
        var _alertErr:stdgo.Error = (null : stdgo.Error);
        if (_c._isHandshakeComplete.load()) {
            {
                var _err = (_c._closeNotify() : stdgo.Error);
                if (_err != null) {
                    _alertErr = stdgo._internal.fmt.Fmt_errorf.errorf(("tls: failed to send closeNotify alert (but connection was closed anyway): %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
        };
        {
            var _err = (_c._conn.close() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return _alertErr;
    }
    @:keep
    static public function read( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _err = (_c.handshake() : stdgo.Error);
                if (_err != null) {
                    return { _0 : (0 : stdgo.GoInt), _1 : _err };
                };
            };
            if ((_b.length) == ((0 : stdgo.GoInt))) {
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
            _c._in.lock();
            __deferstack__.unshift(() -> _c._in.unlock());
            while (_c._input.len() == ((0 : stdgo.GoInt))) {
                {
                    var _err = (_c._readRecord() : stdgo.Error);
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
                while ((_c._hand.len() > (0 : stdgo.GoInt) : Bool)) {
                    {
                        var _err = (_c._handlePostHandshakeMessage() : stdgo.Error);
                        if (_err != null) {
                            {
                                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return __ret__;
                            };
                        };
                    };
                };
            };
            var __tmp__ = _c._input.read(_b), _n:stdgo.GoInt = __tmp__._0, __105:stdgo.Error = __tmp__._1;
            if ((((_n != ((0 : stdgo.GoInt)) && _c._input.len() == ((0 : stdgo.GoInt)) : Bool) && (_c._rawInput.len() > (0 : stdgo.GoInt) : Bool) : Bool) && ((_c._rawInput.bytes()[(0 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType) == (21 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType)) : Bool)) {
                {
                    var _err = (_c._readRecord() : stdgo.Error);
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _handleKeyUpdate( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _keyUpdate:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((_c._quic != null && ((_c._quic : Dynamic).__nil__ == null || !(_c._quic : Dynamic).__nil__))) {
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return _c._in._setErrorLocked(stdgo._internal.errors.Errors_new_.new_(("tls: received unexpected key update message" : stdgo.GoString)));
            };
            var _cipherSuite = stdgo._internal.crypto.tls.Tls__cipherSuiteTLS13ByID._cipherSuiteTLS13ByID(_c._cipherSuite);
            if ((_cipherSuite == null || (_cipherSuite : Dynamic).__nil__)) {
                return _c._in._setErrorLocked(_c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)));
            };
            var _newSecret = _cipherSuite._nextTrafficSecret(_c._in._trafficSecret);
            _c._in._setTrafficSecret(_cipherSuite, (0 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _newSecret);
            if (_keyUpdate._updateRequested) {
                _c._out.lock();
                __deferstack__.unshift(() -> _c._out.unlock());
                var _msg = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg() : stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg>);
                var __tmp__ = _msg._marshal(), _msgBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
                {
                    var __tmp__ = _c._writeRecordLocked((22 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType), _msgBytes);
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _c._out._setErrorLocked(_err);
                    {
                        final __ret__:stdgo.Error = (null : stdgo.Error);
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                var _newSecret = _cipherSuite._nextTrafficSecret(_c._out._trafficSecret);
                _c._out._setTrafficSecret(_cipherSuite, (0 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _newSecret);
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _handlePostHandshakeMessage( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        if (_c._vers != ((772 : stdgo.GoUInt16))) {
            return _c._handleRenegotiation();
        };
        var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _c._retryCount++;
        if ((_c._retryCount > (16 : stdgo.GoInt) : Bool)) {
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _c._in._setErrorLocked(stdgo._internal.errors.Errors_new_.new_(("tls: too many non-advancing records" : stdgo.GoString)));
        };
        {
            final __type__ = _msg;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsgTLS13.T_newSessionTicketMsgTLS13>))) {
                var _msg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsgTLS13.T_newSessionTicketMsgTLS13> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsgTLS13.T_newSessionTicketMsgTLS13>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsgTLS13.T_newSessionTicketMsgTLS13>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsgTLS13.T_newSessionTicketMsgTLS13>) : __type__.__underlying__().value;
                return _c._handleNewSessionTicket(_msg);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg>))) {
                var _msg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg>) : __type__.__underlying__().value;
                return _c._handleKeyUpdate(_msg);
            };
        };
        _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: received unexpected handshake message of type %T" : stdgo.GoString), _msg);
    }
    @:keep
    static public function _handleRenegotiation( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_c._vers == ((772 : stdgo.GoUInt16))) {
                return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: unexpected renegotiation" : stdgo.GoString));
            };
            var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_helloRequestMsg.T_helloRequestMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_helloRequestMsg.T_helloRequestMsg>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_helloRequestMsg.T_helloRequestMsg>), _1 : false };
            }, _helloReq = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_helloReq)), _msg);
            };
            if (!_c._isClient) {
                return _c._sendAlert((100 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            };
            {
                final __value__ = _c._config.renegotiation;
                if (__value__ == ((0 : stdgo._internal.crypto.tls.Tls_RenegotiationSupport.RenegotiationSupport))) {
                    return _c._sendAlert((100 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                } else if (__value__ == ((1 : stdgo._internal.crypto.tls.Tls_RenegotiationSupport.RenegotiationSupport))) {
                    if ((_c._handshakes > (1 : stdgo.GoInt) : Bool)) {
                        return _c._sendAlert((100 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    };
                } else if (__value__ == ((2 : stdgo._internal.crypto.tls.Tls_RenegotiationSupport.RenegotiationSupport))) {} else {
                    _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: unknown Renegotiation value" : stdgo.GoString));
                };
            };
            _c._handshakeMutex.lock();
            __deferstack__.unshift(() -> _c._handshakeMutex.unlock());
            _c._isHandshakeComplete.store(false);
            {
                _c._handshakeErr = _c._clientHandshake(stdgo._internal.context.Context_background.background());
                if (_c._handshakeErr == null) {
                    _c._handshakes++;
                };
            };
            {
                final __ret__:stdgo.Error = _c._handshakeErr;
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function write( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            while (true) {
                var _x = (_c._activeCall.load() : stdgo.GoInt32);
                if ((_x & (1 : stdgo.GoInt32) : stdgo.GoInt32) != ((0 : stdgo.GoInt32))) {
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.Net_errClosed.errClosed };
                };
                if (_c._activeCall.compareAndSwap(_x, (_x + (2 : stdgo.GoInt32) : stdgo.GoInt32))) {
                    break;
                };
            };
            {
                var _a0 = (-2 : stdgo.GoInt32);
                __deferstack__.unshift(() -> _c._activeCall.add(_a0));
            };
            {
                var _err = (_c.handshake() : stdgo.Error);
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            _c._out.lock();
            __deferstack__.unshift(() -> _c._out.unlock());
            {
                var _err = (_c._out._err : stdgo.Error);
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            if (!_c._isHandshakeComplete.load()) {
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (_c._closeNotifySent) {
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.crypto.tls.Tls__errShutdown._errShutdown };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _m:stdgo.GoInt = (0 : stdgo.GoInt);
            if ((((_b.length) > (1 : stdgo.GoInt) : Bool) && (_c._vers == (769 : stdgo.GoUInt16)) : Bool)) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_c._out._cipher : stdgo._internal.crypto.cipher.Cipher_BlockMode.BlockMode)) : stdgo._internal.crypto.cipher.Cipher_BlockMode.BlockMode), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.crypto.cipher.Cipher_BlockMode.BlockMode), _1 : false };
                    }, __143 = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        var __tmp__ = _c._writeRecordLocked((23 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType), (_b.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            {
                                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _c._out._setErrorLocked(_err) };
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return __ret__;
                            };
                        };
                        {
                            final __tmp__0 = (1 : stdgo.GoInt);
                            final __tmp__1 = (_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                            _m = __tmp__0;
                            _b = __tmp__1;
                        };
                    };
                };
            };
            var __tmp__ = _c._writeRecordLocked((23 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType), _b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_n + _m : stdgo.GoInt), _1 : _c._out._setErrorLocked(_err) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _unmarshalHandshakeMessage( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _data:stdgo.Slice<stdgo.GoUInt8>, _transcript:stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash):{ var _0 : stdgo._internal.crypto.tls.Tls_T_handshakeMessage.T_handshakeMessage; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var _m:stdgo._internal.crypto.tls.Tls_T_handshakeMessage.T_handshakeMessage = (null : stdgo._internal.crypto.tls.Tls_T_handshakeMessage.T_handshakeMessage);
        {
            final __value__ = _data[(0 : stdgo.GoInt)];
            if (__value__ == ((0 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_helloRequestMsg.T_helloRequestMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_helloRequestMsg.T_helloRequestMsg>));
            } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>));
            } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>));
            } else if (__value__ == ((4 : stdgo.GoUInt8))) {
                if (_c._vers == ((772 : stdgo.GoUInt16))) {
                    _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsgTLS13.T_newSessionTicketMsgTLS13)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsgTLS13.T_newSessionTicketMsgTLS13>));
                } else {
                    _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsg.T_newSessionTicketMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsg.T_newSessionTicketMsg>));
                };
            } else if (__value__ == ((11 : stdgo.GoUInt8))) {
                if (_c._vers == ((772 : stdgo.GoUInt16))) {
                    _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13>));
                } else {
                    _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg>));
                };
            } else if (__value__ == ((13 : stdgo.GoUInt8))) {
                if (_c._vers == ((772 : stdgo.GoUInt16))) {
                    _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13>));
                } else {
                    _m = stdgo.Go.asInterface((stdgo.Go.setRef(({ _hasSignatureAlgorithm : (_c._vers >= (771 : stdgo.GoUInt16) : Bool) } : stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg>));
                };
            } else if (__value__ == ((22 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_certificateStatusMsg.T_certificateStatusMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateStatusMsg.T_certificateStatusMsg>));
            } else if (__value__ == ((12 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg>));
            } else if (__value__ == ((14 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_serverHelloDoneMsg.T_serverHelloDoneMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloDoneMsg.T_serverHelloDoneMsg>));
            } else if (__value__ == ((16 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>));
            } else if (__value__ == ((15 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({ _hasSignatureAlgorithm : (_c._vers >= (771 : stdgo.GoUInt16) : Bool) } : stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg>));
            } else if (__value__ == ((20 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>));
            } else if (__value__ == ((8 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_encryptedExtensionsMsg.T_encryptedExtensionsMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_encryptedExtensionsMsg.T_encryptedExtensionsMsg>));
            } else if (__value__ == ((5 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>));
            } else if (__value__ == ((24 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg>));
            } else {
                return { _0 : (null : stdgo._internal.crypto.tls.Tls_T_handshakeMessage.T_handshakeMessage), _1 : _c._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert))) };
            };
        };
        _data = ((null : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_data : Array<stdgo.GoUInt8>)));
        if (!_m._unmarshal(_data)) {
            return { _0 : (null : stdgo._internal.crypto.tls.Tls_T_handshakeMessage.T_handshakeMessage), _1 : _c._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert))) };
        };
        if (_transcript != null) {
            _transcript.write(_data);
        };
        return { _0 : _m, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _readHandshake( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _transcript:stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        {
            var _err = (_c._readHandshakeBytes((4 : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo.AnyInterface), _1 : _err };
            };
        };
        var _data = _c._hand.bytes();
        var _n = ((((_data[(1 : stdgo.GoInt)] : stdgo.GoInt) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt) | ((_data[(2 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) | (_data[(3 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
        if ((_n > (65536 : stdgo.GoInt) : Bool)) {
            _c._sendAlertLocked((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return { _0 : (null : stdgo.AnyInterface), _1 : _c._in._setErrorLocked(stdgo._internal.fmt.Fmt_errorf.errorf(("tls: handshake message of length %d bytes exceeds maximum of %d bytes" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((65536 : stdgo.GoInt)))) };
        };
        {
            var _err = (_c._readHandshakeBytes(((4 : stdgo.GoInt) + _n : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo.AnyInterface), _1 : _err };
            };
        };
        _data = _c._hand.next(((4 : stdgo.GoInt) + _n : stdgo.GoInt));
        return _c._unmarshalHandshakeMessage(_data, _transcript);
    }
    @:keep
    static public function _readHandshakeBytes( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _n:stdgo.GoInt):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        if ((_c._quic != null && ((_c._quic : Dynamic).__nil__ == null || !(_c._quic : Dynamic).__nil__))) {
            return _c._quicReadHandshakeBytes(_n);
        };
        while ((_c._hand.len() < _n : Bool)) {
            {
                var _err = (_c._readRecord() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _writeChangeCipherRecord( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _c._out.lock();
            __deferstack__.unshift(() -> _c._out.unlock());
            var __tmp__ = _c._writeRecordLocked((20 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), __89:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _writeHandshakeRecord( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _msg:stdgo._internal.crypto.tls.Tls_T_handshakeMessage.T_handshakeMessage, _transcript:stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _c._out.lock();
            __deferstack__.unshift(() -> _c._out.unlock());
            var __tmp__ = _msg._marshal(), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (_transcript != null) {
                _transcript.write(_data);
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = _c._writeRecordLocked((22 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType), _data);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _writeRecordLocked( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _typ:stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((_c._quic != null && ((_c._quic : Dynamic).__nil__ == null || !(_c._quic : Dynamic).__nil__))) {
                if (_typ != ((22 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType))) {
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("tls: internal error: sending non-handshake message to QUIC transport" : stdgo.GoString)) };
                };
                _c._quicWriteCryptoData(_c._out._level, _data);
                if (!_c._buffering) {
                    {
                        var __tmp__ = _c._flush(), __105:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return { _0 : (0 : stdgo.GoInt), _1 : _err };
                        };
                    };
                };
                return { _0 : (_data.length), _1 : (null : stdgo.Error) };
            };
            var _outBufPtr = (stdgo.Go.typeAssert((stdgo._internal.crypto.tls.Tls__outBufPool._outBufPool.get() : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
            var _outBuf = (_outBufPtr : stdgo.Slice<stdgo.GoUInt8>);
            __deferstack__.unshift(() -> ({
                var a = function():Void {
                    (_outBufPtr : stdgo.Slice<stdgo.GoUInt8>).__setData__(_outBuf);
                    stdgo._internal.crypto.tls.Tls__outBufPool._outBufPool.put(stdgo.Go.toInterface(_outBufPtr));
                };
                a();
            }));
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            while (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
                var _m = (_data.length : stdgo.GoInt);
                {
                    var _maxPayload = (_c._maxPayloadSizeForWrite(_typ) : stdgo.GoInt);
                    if ((_m > _maxPayload : Bool)) {
                        _m = _maxPayload;
                    };
                };
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__sliceForAppend._sliceForAppend((_outBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (5 : stdgo.GoInt));
                    _outBuf = __tmp__._1;
                };
                _outBuf[(0 : stdgo.GoInt)] = (_typ : stdgo.GoUInt8);
                var _vers = (_c._vers : stdgo.GoUInt16);
                if (_vers == ((0 : stdgo.GoUInt16))) {
                    _vers = (769 : stdgo.GoUInt16);
                } else if (_vers == ((772 : stdgo.GoUInt16))) {
                    _vers = (771 : stdgo.GoUInt16);
                };
                _outBuf[(1 : stdgo.GoInt)] = ((_vers >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
                _outBuf[(2 : stdgo.GoInt)] = (_vers : stdgo.GoUInt8);
                _outBuf[(3 : stdgo.GoInt)] = ((_m >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
                _outBuf[(4 : stdgo.GoInt)] = (_m : stdgo.GoUInt8);
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = _c._out._encrypt(_outBuf, (_data.__slice__(0, _m) : stdgo.Slice<stdgo.GoUInt8>), _c._config._rand());
                    _outBuf = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                {
                    var __tmp__ = _c._write(_outBuf), __117:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
                _n = (_n + (_m) : stdgo.GoInt);
                _data = (_data.__slice__(_m) : stdgo.Slice<stdgo.GoUInt8>);
            };
            if (((_typ == (20 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType)) && (_c._vers != (772 : stdgo.GoUInt16)) : Bool)) {
                {
                    var _err = (_c._out._changeCipherSpec() : stdgo.Error);
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _c._sendAlertLocked((stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)) : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _flush( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        if ((_c._sendBuf.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _c._conn.write(_c._sendBuf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _c._bytesSent = (_c._bytesSent + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        _c._sendBuf = (null : stdgo.Slice<stdgo.GoUInt8>);
        _c._buffering = false;
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function _write( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        if (_c._buffering) {
            _c._sendBuf = (_c._sendBuf.__append__(...(_data : Array<stdgo.GoUInt8>)));
            return { _0 : (_data.length), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _c._conn.write(_data), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _c._bytesSent = (_c._bytesSent + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function _maxPayloadSizeForWrite( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _typ:stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        if ((_c._config.dynamicRecordSizingDisabled || (_typ != (23 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType)) : Bool)) {
            return (16384 : stdgo.GoInt);
        };
        if ((_c._bytesSent >= (131072i64 : stdgo.GoInt64) : Bool)) {
            return (16384 : stdgo.GoInt);
        };
        var _payloadBytes = ((1203 : stdgo.GoInt) - _c._out._explicitNonceLen() : stdgo.GoInt);
        if (_c._out._cipher != null) {
            {
                final __type__ = _c._out._cipher;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.cipher.Cipher_Stream.Stream))) {
                    var _ciph:stdgo._internal.crypto.cipher.Cipher_Stream.Stream = __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_Stream.Stream) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.cipher.Cipher_Stream.Stream) : __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_Stream.Stream) : __type__.__underlying__().value;
                    _payloadBytes = (_payloadBytes - (_c._out._mac.size()) : stdgo.GoInt);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD))) {
                    var _ciph:stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD = __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD) : __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD) : __type__.__underlying__().value;
                    _payloadBytes = (_payloadBytes - (_ciph.overhead()) : stdgo.GoInt);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode))) {
                    var _ciph:stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode) : __type__.__underlying__().value;
                    var _blockSize = (_ciph.blockSize() : stdgo.GoInt);
                    _payloadBytes = (((_payloadBytes & (-1 ^ (_blockSize - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _payloadBytes = (_payloadBytes - (_c._out._mac.size()) : stdgo.GoInt);
                } else {
                    var _ciph:stdgo.AnyInterface = __type__?.__underlying__();
                    throw stdgo.Go.toInterface(("unknown cipher type" : stdgo.GoString));
                };
            };
        };
        if (_c._vers == ((772 : stdgo.GoUInt16))) {
            _payloadBytes--;
        };
        var _pkt = (_c._packetsSent : stdgo.GoInt64);
        _c._packetsSent++;
        if ((_pkt > (1000i64 : stdgo.GoInt64) : Bool)) {
            return (16384 : stdgo.GoInt);
        };
        var _n = (_payloadBytes * ((_pkt + (1i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt) : stdgo.GoInt);
        if ((_n > (16384 : stdgo.GoInt) : Bool)) {
            _n = (16384 : stdgo.GoInt);
        };
        return _n;
    }
    @:keep
    static public function _sendAlert( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _err:stdgo._internal.crypto.tls.Tls_T_alert.T_alert):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _c._out.lock();
            __deferstack__.unshift(() -> _c._out.unlock());
            {
                final __ret__:stdgo.Error = _c._sendAlertLocked(_err);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _sendAlertLocked( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _err:stdgo._internal.crypto.tls.Tls_T_alert.T_alert):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        if ((_c._quic != null && ((_c._quic : Dynamic).__nil__ == null || !(_c._quic : Dynamic).__nil__))) {
            return _c._out._setErrorLocked(stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("local error" : stdgo.GoString), err : stdgo.Go.asInterface(_err) } : stdgo._internal.net.Net_OpError.OpError)) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>)));
        };
        {
            final __value__ = _err;
            if (__value__ == ((100 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)) || __value__ == ((0 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert))) {
                _c._tmp[(0 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
            } else {
                _c._tmp[(0 : stdgo.GoInt)] = (2 : stdgo.GoUInt8);
            };
        };
        _c._tmp[(1 : stdgo.GoInt)] = (_err : stdgo.GoUInt8);
        var __tmp__ = _c._writeRecordLocked((21 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType), (_c._tmp.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __97:stdgo.GoInt = __tmp__._0, _writeErr:stdgo.Error = __tmp__._1;
        if (_err == ((0 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert))) {
            return _writeErr;
        };
        return _c._out._setErrorLocked(stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("local error" : stdgo.GoString), err : stdgo.Go.asInterface(_err) } : stdgo._internal.net.Net_OpError.OpError)) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>)));
    }
    @:keep
    static public function _readFromUntil( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _r:stdgo._internal.io.Io_Reader.Reader, _n:stdgo.GoInt):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        if ((_c._rawInput.len() >= _n : Bool)) {
            return (null : stdgo.Error);
        };
        var _needs = (_n - _c._rawInput.len() : stdgo.GoInt);
        _c._rawInput.grow((_needs + (512 : stdgo.GoInt) : stdgo.GoInt));
        var __tmp__ = _c._rawInput.readFrom(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_T_atLeastReader.T_atLeastReader(_r, (_needs : stdgo.GoInt64)) : stdgo._internal.crypto.tls.Tls_T_atLeastReader.T_atLeastReader)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_atLeastReader.T_atLeastReader>))), __97:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    static public function _retryReadRecord( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _expectChangeCipherSpec:Bool):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        _c._retryCount++;
        if ((_c._retryCount > (16 : stdgo.GoInt) : Bool)) {
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _c._in._setErrorLocked(stdgo._internal.errors.Errors_new_.new_(("tls: too many ignored records" : stdgo.GoString)));
        };
        return _c._readRecordOrCCS(_expectChangeCipherSpec);
    }
    @:keep
    static public function _readRecordOrCCS( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _expectChangeCipherSpec:Bool):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        if (_c._in._err != null) {
            return _c._in._err;
        };
        var _handshakeComplete = (_c._isHandshakeComplete.load() : Bool);
        if (_c._input.len() != ((0 : stdgo.GoInt))) {
            return _c._in._setErrorLocked(stdgo._internal.errors.Errors_new_.new_(("tls: internal error: attempted to read record with pending application data" : stdgo.GoString)));
        };
        _c._input.reset((null : stdgo.Slice<stdgo.GoUInt8>));
        if ((_c._quic != null && ((_c._quic : Dynamic).__nil__ == null || !(_c._quic : Dynamic).__nil__))) {
            return _c._in._setErrorLocked(stdgo._internal.errors.Errors_new_.new_(("tls: internal error: attempted to read record with QUIC transport" : stdgo.GoString)));
        };
        {
            var _err = (_c._readFromUntil(_c._conn, (5 : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF)) && (_c._rawInput.len() == (0 : stdgo.GoInt)) : Bool)) {
                    _err = stdgo._internal.io.Io_eof.eof;
                };
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.Net_Error.Error)) : stdgo._internal.net.Net_Error.Error), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.net.Net_Error.Error), _1 : false };
                    }, _e = __tmp__._0, _ok = __tmp__._1;
                    if ((!_ok || !_e.temporary() : Bool)) {
                        _c._in._setErrorLocked(_err);
                    };
                };
                return _err;
            };
        };
        var _hdr = (_c._rawInput.bytes().__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _typ = (_hdr[(0 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType);
        if ((!_handshakeComplete && (_typ == (128 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType)) : Bool)) {
            _c._sendAlert((70 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _c._in._setErrorLocked(stdgo.Go.asInterface(_c._newRecordHeaderError((null : stdgo._internal.net.Net_Conn.Conn), ("unsupported SSLv2 handshake received" : stdgo.GoString))));
        };
        var _vers = (((_hdr[(1 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_hdr[(2 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
        var _expectedVers = (_c._vers : stdgo.GoUInt16);
        if (_expectedVers == ((772 : stdgo.GoUInt16))) {
            _expectedVers = (771 : stdgo.GoUInt16);
        };
        var _n = (((_hdr[(3 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) | (_hdr[(4 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
        if ((_c._haveVers && (_vers != _expectedVers) : Bool)) {
            _c._sendAlert((70 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            var _msg = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("received record with version %x when expecting version %x" : stdgo.GoString), stdgo.Go.toInterface(_vers), stdgo.Go.toInterface(_expectedVers))?.__copy__() : stdgo.GoString);
            return _c._in._setErrorLocked(stdgo.Go.asInterface(_c._newRecordHeaderError((null : stdgo._internal.net.Net_Conn.Conn), _msg?.__copy__())));
        };
        if (!_c._haveVers) {
            if (((((_typ != (21 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType)) && (_typ != (22 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType)) : Bool)) || (_vers >= (4096 : stdgo.GoUInt16) : Bool) : Bool)) {
                return _c._in._setErrorLocked(stdgo.Go.asInterface(_c._newRecordHeaderError(_c._conn, ("first record does not look like a TLS handshake" : stdgo.GoString))));
            };
        };
        if (((_c._vers == ((772 : stdgo.GoUInt16)) && (_n > (16640 : stdgo.GoInt) : Bool) : Bool) || (_n > (18432 : stdgo.GoInt) : Bool) : Bool)) {
            _c._sendAlert((22 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            var _msg = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("oversized record received with length %d" : stdgo.GoString), stdgo.Go.toInterface(_n))?.__copy__() : stdgo.GoString);
            return _c._in._setErrorLocked(stdgo.Go.asInterface(_c._newRecordHeaderError((null : stdgo._internal.net.Net_Conn.Conn), _msg?.__copy__())));
        };
        {
            var _err = (_c._readFromUntil(_c._conn, ((5 : stdgo.GoInt) + _n : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.Net_Error.Error)) : stdgo._internal.net.Net_Error.Error), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.net.Net_Error.Error), _1 : false };
                    }, _e = __tmp__._0, _ok = __tmp__._1;
                    if ((!_ok || !_e.temporary() : Bool)) {
                        _c._in._setErrorLocked(_err);
                    };
                };
                return _err;
            };
        };
        var _record = _c._rawInput.next(((5 : stdgo.GoInt) + _n : stdgo.GoInt));
        var __tmp__ = _c._in._decrypt(_record), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _typ:stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _c._in._setErrorLocked(_c._sendAlert((stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)) : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)));
        };
        if (((_data.length) > (16384 : stdgo.GoInt) : Bool)) {
            return _c._in._setErrorLocked(_c._sendAlert((22 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)));
        };
        if (((_c._in._cipher == null) && (_typ == (23 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType)) : Bool)) {
            return _c._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)));
        };
        if (((_typ != ((21 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType)) && _typ != ((20 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType)) : Bool) && ((_data.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _c._retryCount = (0 : stdgo.GoInt);
        };
        if (((_c._vers == ((772 : stdgo.GoUInt16)) && _typ != ((22 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType)) : Bool) && (_c._hand.len() > (0 : stdgo.GoInt) : Bool) : Bool)) {
            return _c._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)));
        };
        {
            final __value__ = _typ;
            if (__value__ == ((21 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType))) {
                if ((_c._quic != null && ((_c._quic : Dynamic).__nil__ == null || !(_c._quic : Dynamic).__nil__))) {
                    return _c._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)));
                };
                if ((_data.length) != ((2 : stdgo.GoInt))) {
                    return _c._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)));
                };
                if ((_data[(1 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_T_alert.T_alert) == ((0 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert))) {
                    return _c._in._setErrorLocked(stdgo._internal.io.Io_eof.eof);
                };
                if (_c._vers == ((772 : stdgo.GoUInt16))) {
                    return _c._in._setErrorLocked(stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("remote error" : stdgo.GoString), err : stdgo.Go.asInterface((_data[(1 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)) } : stdgo._internal.net.Net_OpError.OpError)) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>)));
                };
                {
                    final __value__ = _data[(0 : stdgo.GoInt)];
                    if (__value__ == ((1 : stdgo.GoUInt8))) {
                        return _c._retryReadRecord(_expectChangeCipherSpec);
                    } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                        return _c._in._setErrorLocked(stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("remote error" : stdgo.GoString), err : stdgo.Go.asInterface((_data[(1 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)) } : stdgo._internal.net.Net_OpError.OpError)) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>)));
                    } else {
                        return _c._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)));
                    };
                };
            } else if (__value__ == ((20 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType))) {
                if (((_data.length != (1 : stdgo.GoInt)) || (_data[(0 : stdgo.GoInt)] != (1 : stdgo.GoUInt8)) : Bool)) {
                    return _c._in._setErrorLocked(_c._sendAlert((50 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)));
                };
                if ((_c._hand.len() > (0 : stdgo.GoInt) : Bool)) {
                    return _c._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)));
                };
                if (_c._vers == ((772 : stdgo.GoUInt16))) {
                    return _c._retryReadRecord(_expectChangeCipherSpec);
                };
                if (!_expectChangeCipherSpec) {
                    return _c._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)));
                };
                {
                    var _err = (_c._in._changeCipherSpec() : stdgo.Error);
                    if (_err != null) {
                        return _c._in._setErrorLocked(_c._sendAlert((stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)) : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)));
                    };
                };
            } else if (__value__ == ((23 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType))) {
                if ((!_handshakeComplete || _expectChangeCipherSpec : Bool)) {
                    return _c._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)));
                };
                if ((_data.length) == ((0 : stdgo.GoInt))) {
                    return _c._retryReadRecord(_expectChangeCipherSpec);
                };
                _c._input.reset(_data);
            } else if (__value__ == ((22 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType))) {
                if (((_data.length == (0 : stdgo.GoInt)) || _expectChangeCipherSpec : Bool)) {
                    return _c._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)));
                };
                _c._hand.write(_data);
            } else {
                return _c._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _readChangeCipherSpec( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        return _c._readRecordOrCCS(true);
    }
    @:keep
    static public function _readRecord( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        return _c._readRecordOrCCS(false);
    }
    @:keep
    static public function _newRecordHeaderError( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _conn:stdgo._internal.net.Net_Conn.Conn, _msg:stdgo.GoString):stdgo._internal.crypto.tls.Tls_RecordHeaderError.RecordHeaderError {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        var _err = ({} : stdgo._internal.crypto.tls.Tls_RecordHeaderError.RecordHeaderError);
        _err.msg = _msg?.__copy__();
        _err.conn = _conn;
        stdgo.Go.copySlice((_err.recordHeader.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _c._rawInput.bytes());
        return _err = _err?.__copy__();
    }
    @:keep
    static public function netConn( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):stdgo._internal.net.Net_Conn.Conn {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        return _c._conn;
    }
    @:keep
    static public function setWriteDeadline( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        return _c._conn.setWriteDeadline(_t?.__copy__());
    }
    @:keep
    static public function setReadDeadline( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        return _c._conn.setReadDeadline(_t?.__copy__());
    }
    @:keep
    static public function setDeadline( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        return _c._conn.setDeadline(_t?.__copy__());
    }
    @:keep
    static public function remoteAddr( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):stdgo._internal.net.Net_Addr.Addr {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        return _c._conn.remoteAddr();
    }
    @:keep
    static public function localAddr( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):stdgo._internal.net.Net_Addr.Addr {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = _c;
        return _c._conn.localAddr();
    }
}
