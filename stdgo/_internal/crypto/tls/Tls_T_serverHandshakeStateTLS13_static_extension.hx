package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_serverHandshakeStateTLS13_asInterface) class T_serverHandshakeStateTLS13_static_extension {
    @:keep
    static public function _readClientFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _c = _hs._c;
        var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>), _1 : false };
        }, _finished = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_finished)), _msg);
        };
        if (!stdgo._internal.crypto.hmac.Hmac_equal.equal(_hs._clientFinished, _finished._verifyData)) {
            _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: invalid client finished hash" : stdgo.GoString));
        };
        _c._in._setTrafficSecret(_hs._suite, (3 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _hs._trafficSecret);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _readClientCertificate( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _c = _hs._c;
        if (!_hs._requestClientCert()) {
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
        };
        var __tmp__ = _c._readHandshake(_hs._transcript), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13>), _1 : false };
        }, _certMsg = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_certMsg)), _msg);
        };
        {
            var _err = (_c._processCertsFromClient(_certMsg._certificate?.__copy__()) : stdgo.Error);
            if (_err != null) {
                return _err;
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
        if ((_certMsg._certificate.certificate.length) != ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash));
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg>), _1 : false };
            }, _certVerify = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_certVerify)), _msg);
            };
            if (!stdgo._internal.crypto.tls.Tls__isSupportedSignatureAlgorithm._isSupportedSignatureAlgorithm(_certVerify._signatureAlgorithm, stdgo._internal.crypto.tls.Tls__supportedSignatureAlgorithms._supportedSignatureAlgorithms())) {
                _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: client certificate used with invalid signature algorithm" : stdgo.GoString));
            };
            var __tmp__ = stdgo._internal.crypto.tls.Tls__typeAndHashFromSignatureScheme._typeAndHashFromSignatureScheme(_certVerify._signatureAlgorithm), _sigType:stdgo.GoUInt8 = __tmp__._0, _sigHash:stdgo._internal.crypto.Crypto_Hash.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            };
            if (((_sigType == (225 : stdgo.GoUInt8)) || (_sigHash == (3u32 : stdgo._internal.crypto.Crypto_Hash.Hash)) : Bool)) {
                _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: client certificate used with invalid signature algorithm" : stdgo.GoString));
            };
            var _signed = stdgo._internal.crypto.tls.Tls__signedMessage._signedMessage(_sigHash, stdgo.Go.str("TLS 1.3, client CertificateVerify", 0)?.__copy__(), _hs._transcript);
            {
                var _err = (stdgo._internal.crypto.tls.Tls__verifyHandshakeSignature._verifyHandshakeSignature(_sigType, stdgo.Go.toInterface(_c._peerCertificates[(0 : stdgo.GoInt)].publicKey), _sigHash, _signed, _certVerify._signature) : stdgo.Error);
                if (_err != null) {
                    _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_((("tls: invalid signature by the client certificate: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
                };
            };
            {
                var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_certVerify), _hs._transcript) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        {
            var _err = (_hs._sendSessionTickets() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _sendSessionTickets( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _c = _hs._c;
        _hs._clientFinished = _hs._suite._finishedHash(_c._in._trafficSecret, _hs._transcript);
        var _finishedMsg = (stdgo.Go.setRef(({ _verifyData : _hs._clientFinished } : stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>);
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_finishedMsg), _hs._transcript) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _c._resumptionSecret = _hs._suite._deriveSecret(_hs._masterSecret, ("res master" : stdgo.GoString), _hs._transcript);
        if (!_hs._shouldSendSessionTickets()) {
            return (null : stdgo.Error);
        };
        return _c._sendSessionTicket(false);
    }
    @:keep
    static public function _shouldSendSessionTickets( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):Bool {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        if (_hs._c._config.sessionTicketsDisabled) {
            return false;
        };
        if ((_hs._c._quic != null && ((_hs._c._quic : Dynamic).__nil__ == null || !(_hs._c._quic : Dynamic).__nil__))) {
            return false;
        };
        for (__109 => _pskMode in _hs._clientHello._pskModes) {
            if (_pskMode == ((1 : stdgo.GoUInt8))) {
                return true;
            };
        };
        return false;
    }
    @:keep
    static public function _sendServerFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _c = _hs._c;
        var _finished = (stdgo.Go.setRef(({ _verifyData : _hs._suite._finishedHash(_c._out._trafficSecret, _hs._transcript) } : stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>);
        {
            var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_finished), _hs._transcript), __121:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        _hs._masterSecret = _hs._suite._extract((null : stdgo.Slice<stdgo.GoUInt8>), _hs._suite._deriveSecret(_hs._handshakeSecret, ("derived" : stdgo.GoString), (null : stdgo._internal.hash.Hash_Hash.Hash)));
        _hs._trafficSecret = _hs._suite._deriveSecret(_hs._masterSecret, ("c ap traffic" : stdgo.GoString), _hs._transcript);
        var _serverSecret = _hs._suite._deriveSecret(_hs._masterSecret, ("s ap traffic" : stdgo.GoString), _hs._transcript);
        _c._out._setTrafficSecret(_hs._suite, (3 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _serverSecret);
        if ((_c._quic != null && ((_c._quic : Dynamic).__nil__ == null || !(_c._quic : Dynamic).__nil__))) {
            if (_c._hand.len() != ((0 : stdgo.GoInt))) {
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            };
            _c._quicSetWriteSecret((3 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _hs._suite._id, _serverSecret);
        };
        var _err = (_c._config._writeKeyLog(("CLIENT_TRAFFIC_SECRET_0" : stdgo.GoString), _hs._clientHello._random, _hs._trafficSecret) : stdgo.Error);
        if (_err != null) {
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        _err = _c._config._writeKeyLog(("SERVER_TRAFFIC_SECRET_0" : stdgo.GoString), _hs._clientHello._random, _serverSecret);
        if (_err != null) {
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        _c._ekm = _hs._suite._exportKeyingMaterial(_hs._masterSecret, _hs._transcript);
        if (!_hs._requestClientCert()) {
            {
                var _err = (_hs._sendSessionTickets() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _sendServerCertificate( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _c = _hs._c;
        if (_hs._usingPSK) {
            return (null : stdgo.Error);
        };
        if (_hs._requestClientCert()) {
            var _certReq = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13>);
            _certReq._ocspStapling = true;
            _certReq._scts = true;
            _certReq._supportedSignatureAlgorithms = stdgo._internal.crypto.tls.Tls__supportedSignatureAlgorithms._supportedSignatureAlgorithms();
            if ((_c._config.clientCAs != null && ((_c._config.clientCAs : Dynamic).__nil__ == null || !(_c._config.clientCAs : Dynamic).__nil__))) {
                _certReq._certificateAuthorities = _c._config.clientCAs.subjects();
            };
            {
                var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_certReq), _hs._transcript), __125:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _certMsg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13>);
        _certMsg._certificate = (_hs._cert : stdgo._internal.crypto.tls.Tls_Certificate.Certificate)?.__copy__();
        _certMsg._scts = (_hs._clientHello._scts && ((_hs._cert.signedCertificateTimestamps.length) > (0 : stdgo.GoInt) : Bool) : Bool);
        _certMsg._ocspStapling = (_hs._clientHello._ocspStapling && ((_hs._cert.ocspstaple.length) > (0 : stdgo.GoInt) : Bool) : Bool);
        {
            var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_certMsg), _hs._transcript), __153:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _certVerifyMsg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg>);
        _certVerifyMsg._hasSignatureAlgorithm = true;
        _certVerifyMsg._signatureAlgorithm = _hs._sigAlg;
        var __tmp__ = stdgo._internal.crypto.tls.Tls__typeAndHashFromSignatureScheme._typeAndHashFromSignatureScheme(_hs._sigAlg), _sigType:stdgo.GoUInt8 = __tmp__._0, _sigHash:stdgo._internal.crypto.Crypto_Hash.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
        };
        var _signed = stdgo._internal.crypto.tls.Tls__signedMessage._signedMessage(_sigHash, stdgo.Go.str("TLS 1.3, server CertificateVerify", 0)?.__copy__(), _hs._transcript);
        var _signOpts = (stdgo.Go.asInterface(_sigHash) : stdgo._internal.crypto.Crypto_SignerOpts.SignerOpts);
        if (_sigType == ((226 : stdgo.GoUInt8))) {
            _signOpts = stdgo.Go.asInterface((stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt), hash : _sigHash } : stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions>));
        };
        var __tmp__ = (stdgo.Go.typeAssert((_hs._cert.privateKey : stdgo._internal.crypto.Crypto_Signer.Signer)) : stdgo._internal.crypto.Crypto_Signer.Signer).sign(_c._config._rand(), _signed, _signOpts), _sig:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            var _public = ((stdgo.Go.typeAssert((_hs._cert.privateKey : stdgo._internal.crypto.Crypto_Signer.Signer)) : stdgo._internal.crypto.Crypto_Signer.Signer).public_() : stdgo._internal.crypto.Crypto_PublicKey.PublicKey);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_public : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>), _1 : false };
                }, _rsaKey = __tmp__._0, _ok = __tmp__._1;
                if (((_ok && _sigType == ((226 : stdgo.GoUInt8)) : Bool) && ((_rsaKey.n.bitLen() / (8 : stdgo.GoInt) : stdgo.GoInt) < ((_sigHash.size() * (2 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                    _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                } else {
                    _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                };
            };
            return stdgo._internal.errors.Errors_new_.new_((("tls: failed to sign handshake: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
        };
        _certVerifyMsg._signature = _sig;
        {
            var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_certVerifyMsg), _hs._transcript), __222:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _requestClientCert( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):Bool {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        return ((_hs._c._config.clientAuth >= (1 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType) : Bool) && !_hs._usingPSK : Bool);
    }
    @:keep
    static public function _sendServerParameters( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _c = _hs._c;
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_hs._clientHello), _hs._transcript) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_hs._hello), _hs._transcript), __121:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_hs._sendDummyChangeCipherSpec() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _earlySecret = _hs._earlySecret;
        if (_earlySecret == null) {
            _earlySecret = _hs._suite._extract((null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>));
        };
        _hs._handshakeSecret = _hs._suite._extract(_hs._sharedKey, _hs._suite._deriveSecret(_earlySecret, ("derived" : stdgo.GoString), (null : stdgo._internal.hash.Hash_Hash.Hash)));
        var _clientSecret = _hs._suite._deriveSecret(_hs._handshakeSecret, ("c hs traffic" : stdgo.GoString), _hs._transcript);
        _c._in._setTrafficSecret(_hs._suite, (2 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _clientSecret);
        var _serverSecret = _hs._suite._deriveSecret(_hs._handshakeSecret, ("s hs traffic" : stdgo.GoString), _hs._transcript);
        _c._out._setTrafficSecret(_hs._suite, (2 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _serverSecret);
        if ((_c._quic != null && ((_c._quic : Dynamic).__nil__ == null || !(_c._quic : Dynamic).__nil__))) {
            if (_c._hand.len() != ((0 : stdgo.GoInt))) {
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            };
            _c._quicSetWriteSecret((2 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _hs._suite._id, _serverSecret);
            _c._quicSetReadSecret((2 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _hs._suite._id, _clientSecret);
        };
        var _err = (_c._config._writeKeyLog(("CLIENT_HANDSHAKE_TRAFFIC_SECRET" : stdgo.GoString), _hs._clientHello._random, _clientSecret) : stdgo.Error);
        if (_err != null) {
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        _err = _c._config._writeKeyLog(("SERVER_HANDSHAKE_TRAFFIC_SECRET" : stdgo.GoString), _hs._clientHello._random, _serverSecret);
        if (_err != null) {
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        var _encryptedExtensions = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_encryptedExtensionsMsg.T_encryptedExtensionsMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_encryptedExtensionsMsg.T_encryptedExtensionsMsg>);
        _encryptedExtensions._alpnProtocol = _c._clientProtocol?.__copy__();
        if ((_c._quic != null && ((_c._quic : Dynamic).__nil__ == null || !(_c._quic : Dynamic).__nil__))) {
            var __tmp__ = _c._quicGetTransportParameters(), _p:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            _encryptedExtensions._quicTransportParameters = _p;
            _encryptedExtensions._earlyData = _hs._earlyData;
        };
        {
            var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_encryptedExtensions), _hs._transcript), __338:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _doHelloRetryRequest( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>, _selectedGroup:stdgo._internal.crypto.tls.Tls_CurveID.CurveID):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _c = _hs._c;
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_hs._clientHello), _hs._transcript) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _chHash = _hs._transcript.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        _hs._transcript.reset();
        _hs._transcript.write((new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(254 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (_chHash.length : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        _hs._transcript.write(_chHash);
        var _helloRetryRequest = (stdgo.Go.setRef(({ _vers : _hs._hello._vers, _random : stdgo._internal.crypto.tls.Tls__helloRetryRequestRandom._helloRetryRequestRandom, _sessionId : _hs._hello._sessionId, _cipherSuite : _hs._hello._cipherSuite, _compressionMethod : _hs._hello._compressionMethod, _supportedVersion : _hs._hello._supportedVersion, _selectedGroup : _selectedGroup } : stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>);
        {
            var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_helloRetryRequest), _hs._transcript), __185:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_hs._sendDummyChangeCipherSpec() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>), _1 : false };
        }, _clientHello = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_clientHello)), _msg);
        };
        if (((_clientHello._keyShares.length != (1 : stdgo.GoInt)) || (_clientHello._keyShares[(0 : stdgo.GoInt)]._group != _selectedGroup) : Bool)) {
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: client sent invalid key share in second ClientHello" : stdgo.GoString));
        };
        if (_clientHello._earlyData) {
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: client indicated early data in second ClientHello" : stdgo.GoString));
        };
        if (stdgo._internal.crypto.tls.Tls__illegalClientHelloChange._illegalClientHelloChange(_clientHello, _hs._clientHello)) {
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: client illegally modified second ClientHello" : stdgo.GoString));
        };
        _hs._clientHello = _clientHello;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _sendDummyChangeCipherSpec( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        if ((_hs._c._quic != null && ((_hs._c._quic : Dynamic).__nil__ == null || !(_hs._c._quic : Dynamic).__nil__))) {
            return (null : stdgo.Error);
        };
        if (_hs._sentDummyCCS) {
            return (null : stdgo.Error);
        };
        _hs._sentDummyCCS = true;
        return _hs._c._writeChangeCipherRecord();
    }
    @:keep
    static public function _pickCertificate( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _c = _hs._c;
        if (_hs._usingPSK) {
            return (null : stdgo.Error);
        };
        if ((_hs._clientHello._supportedSignatureAlgorithms.length) == ((0 : stdgo.GoInt))) {
            return _c._sendAlert((109 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
        };
        var __tmp__ = _c._config._getCertificate(stdgo._internal.crypto.tls.Tls__clientHelloInfo._clientHelloInfo(_hs._ctx, _c, _hs._clientHello)), _certificate:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.crypto.tls.Tls__errNoCertificates._errNoCertificates))) {
                _c._sendAlert((112 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            } else {
                _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            };
            return _err;
        };
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__selectSignatureScheme._selectSignatureScheme(_c._vers, _certificate, _hs._clientHello._supportedSignatureAlgorithms);
            _hs._sigAlg = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        _hs._cert = _certificate;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _checkForResumption( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _c = _hs._c;
        if (_c._config.sessionTicketsDisabled) {
            return (null : stdgo.Error);
        };
        var _modeOK = (false : Bool);
        for (__93 => _mode in _hs._clientHello._pskModes) {
            if (_mode == ((1 : stdgo.GoUInt8))) {
                _modeOK = true;
                break;
            };
        };
        if (!_modeOK) {
            return (null : stdgo.Error);
        };
        if ((_hs._clientHello._pskIdentities.length) != ((_hs._clientHello._pskBinders.length))) {
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: invalid or missing PSK binders" : stdgo.GoString));
        };
        if ((_hs._clientHello._pskIdentities.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        for (_i => _identity in _hs._clientHello._pskIdentities) {
            if ((_i >= (5 : stdgo.GoInt) : Bool)) {
                break;
            };
            var _sessionState:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>);
            if (_c._config.unwrapSession != null) {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = _c._config.unwrapSession(_identity._label, _c._connectionStateLocked()?.__copy__());
                    _sessionState = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
                if ((_sessionState == null || (_sessionState : Dynamic).__nil__)) {
                    continue;
                };
            } else {
                var _plaintext = _c._config._decryptTicket(_identity._label, _c._ticketKeys);
                if (_plaintext == null) {
                    continue;
                };
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls_parseSessionState.parseSessionState(_plaintext);
                    _sessionState = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    continue;
                };
            };
            if (_sessionState._version != ((772 : stdgo.GoUInt16))) {
                continue;
            };
            var _createdAt = (stdgo._internal.time.Time_unix.unix((_sessionState._createdAt : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__() : stdgo._internal.time.Time_Time.Time);
            if ((_c._config._time().sub(_createdAt?.__copy__()) > (604800000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                continue;
            };
            var _pskSuite = stdgo._internal.crypto.tls.Tls__cipherSuiteTLS13ByID._cipherSuiteTLS13ByID(_sessionState._cipherSuite);
            if (((_pskSuite == null || (_pskSuite : Dynamic).__nil__) || (_pskSuite._hash != _hs._suite._hash) : Bool)) {
                continue;
            };
            var _sessionHasClientCerts = ((_sessionState._peerCertificates.length) != ((0 : stdgo.GoInt)) : Bool);
            var _needClientCerts = (stdgo._internal.crypto.tls.Tls__requiresClientCert._requiresClientCert(_c._config.clientAuth) : Bool);
            if ((_needClientCerts && !_sessionHasClientCerts : Bool)) {
                continue;
            };
            if ((_sessionHasClientCerts && (_c._config.clientAuth == (0 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType)) : Bool)) {
                continue;
            };
            if ((_sessionHasClientCerts && _c._config._time().after(_sessionState._peerCertificates[(0 : stdgo.GoInt)].notAfter?.__copy__()) : Bool)) {
                continue;
            };
            if (((_sessionHasClientCerts && (_c._config.clientAuth >= (3 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType) : Bool) : Bool) && (_sessionState._verifiedChains.length == (0 : stdgo.GoInt)) : Bool)) {
                continue;
            };
            _hs._earlySecret = _hs._suite._extract(_sessionState._secret, (null : stdgo.Slice<stdgo.GoUInt8>));
            var _binderKey = _hs._suite._deriveSecret(_hs._earlySecret, ("res binder" : stdgo.GoString), (null : stdgo._internal.hash.Hash_Hash.Hash));
            var _transcript = (stdgo._internal.crypto.tls.Tls__cloneHash._cloneHash(_hs._transcript, _hs._suite._hash) : stdgo._internal.hash.Hash_Hash.Hash);
            if (_transcript == null) {
                _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: failed to clone hash" : stdgo.GoString));
            };
            var __tmp__ = _hs._clientHello._marshalWithoutBinders(), _clientHelloBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return _err;
            };
            _transcript.write(_clientHelloBytes);
            var _pskBinder = _hs._suite._finishedHash(_binderKey, _transcript);
            if (!stdgo._internal.crypto.hmac.Hmac_equal.equal(_hs._clientHello._pskBinders[(_i : stdgo.GoInt)], _pskBinder)) {
                _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: invalid PSK binder" : stdgo.GoString));
            };
            if (((((((_c._quic != null && ((_c._quic : Dynamic).__nil__ == null || !(_c._quic : Dynamic).__nil__)) && _hs._clientHello._earlyData : Bool) && _i == ((0 : stdgo.GoInt)) : Bool) && _sessionState.earlyData : Bool) && _sessionState._cipherSuite == (_hs._suite._id) : Bool) && (_sessionState._alpnProtocol == _c._clientProtocol) : Bool)) {
                _hs._earlyData = true;
                var _transcript = (_hs._suite._hash.new_() : stdgo._internal.hash.Hash_Hash.Hash);
                {
                    var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_hs._clientHello), _transcript) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
                var _earlyTrafficSecret = _hs._suite._deriveSecret(_hs._earlySecret, ("c e traffic" : stdgo.GoString), _transcript);
                _c._quicSetReadSecret((1 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _hs._suite._id, _earlyTrafficSecret);
            };
            _c._didResume = true;
            _c._peerCertificates = _sessionState._peerCertificates;
            _c._ocspResponse = _sessionState._ocspResponse;
            _c._scts = _sessionState._scts;
            _c._verifiedChains = _sessionState._verifiedChains;
            _hs._hello._selectedIdentityPresent = true;
            _hs._hello._selectedIdentity = (_i : stdgo.GoUInt16);
            _hs._usingPSK = true;
            return (null : stdgo.Error);
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _processClientHello( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _selectedProto_5978526:stdgo.GoString = ("" : stdgo.GoString);
        var _peerKey_5978203:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey> = (null : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>);
        var _i_5976511_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_5975157:stdgo.Error = (null : stdgo.Error);
        var _err_5977993:stdgo.Error = (null : stdgo.Error);
        var _i_5977402_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5977186_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5977135_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _clientKeyShare_5977068:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare>);
        var _suiteID_5976500:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _preferenceList_5976316:stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
        var _i_5974473_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_5977698:stdgo.Error = (null : stdgo.Error);
        var _selectedGroup_5977041:stdgo._internal.crypto.tls.Tls_CurveID.CurveID = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_CurveID.CurveID);
        var _ks_5977180:stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare = ({} : stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare);
        var _preferredGroup_5977117:stdgo._internal.crypto.tls.Tls_CurveID.CurveID = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_CurveID.CurveID);
        var _ok_5977834:Bool = false;
        var _group_5977393:stdgo._internal.crypto.tls.Tls_CurveID.CurveID = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_CurveID.CurveID);
        var _id_5974467:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _c_5973372:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        var _key_5977988:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey> = (null : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _c_5973372 = _hs._c;
                    _hs._hello = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>);
                    _hs._hello._vers = (771 : stdgo.GoUInt16);
                    _hs._hello._supportedVersion = _c_5973372._vers;
                    if ((_hs._clientHello._supportedVersions.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5973667i32;
                    } else {
                        _gotoNext = 5974460i32;
                    };
                } else if (__value__ == (5973667i32)) {
                    _c_5973372._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client used the legacy version field to negotiate TLS 1.3" : stdgo.GoString));
                    _gotoNext = 5974460i32;
                } else if (__value__ == (5974460i32)) {
                    if ((0i32 : stdgo.GoInt) < (_hs._clientHello._cipherSuites.length)) {
                        _gotoNext = 5974878i32;
                    } else {
                        _gotoNext = 5974883i32;
                    };
                } else if (__value__ == (5974464i32)) {
                    _i_5974473_0++;
                    _gotoNext = 5974879i32;
                } else if (__value__ == (5974507i32)) {
                    _id_5974467 = _hs._clientHello._cipherSuites[(_i_5974473_0 : stdgo.GoInt)];
                    if (_id_5974467 == ((22016 : stdgo.GoUInt16))) {
                        _gotoNext = 5974538i32;
                    } else {
                        _gotoNext = 5974464i32;
                    };
                } else if (__value__ == (5974538i32)) {
                    if ((_c_5973372._vers < _c_5973372._config._maxSupportedVersion(false) : Bool)) {
                        _gotoNext = 5974739i32;
                    } else {
                        _gotoNext = 5974868i32;
                    };
                } else if (__value__ == (5974739i32)) {
                    _c_5973372._sendAlert((86 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client using inappropriate protocol fallback" : stdgo.GoString));
                    _gotoNext = 5974868i32;
                } else if (__value__ == (5974868i32)) {
                    _gotoNext = 5974883i32;
                } else if (__value__ == (5974878i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _hs._clientHello._cipherSuites[(0i32 : stdgo.GoInt)];
                        _i_5974473_0 = __tmp__0;
                        _id_5974467 = __tmp__1;
                    };
                    _gotoNext = 5974879i32;
                } else if (__value__ == (5974879i32)) {
                    if (_i_5974473_0 < (_hs._clientHello._cipherSuites.length)) {
                        _gotoNext = 5974507i32;
                    } else {
                        _gotoNext = 5974883i32;
                    };
                } else if (__value__ == (5974883i32)) {
                    if (((_hs._clientHello._compressionMethods.length != (1 : stdgo.GoInt)) || (_hs._clientHello._compressionMethods[(0 : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5974991i32;
                    } else {
                        _gotoNext = 5975115i32;
                    };
                } else if (__value__ == (5974991i32)) {
                    _c_5973372._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: TLS 1.3 client supports illegal compression methods" : stdgo.GoString));
                    _gotoNext = 5975115i32;
                } else if (__value__ == (5975115i32)) {
                    _hs._hello._random = (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_c_5973372._config._rand(), _hs._hello._random);
                            _err_5975157 = __tmp__._1;
                        };
                        if (_err_5975157 != null) {
                            _gotoNext = 5975222i32;
                        } else {
                            _gotoNext = 5975276i32;
                        };
                    };
                } else if (__value__ == (5975222i32)) {
                    _c_5973372._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return _err_5975157;
                    _gotoNext = 5975276i32;
                } else if (__value__ == (5975276i32)) {
                    if ((_hs._clientHello._secureRenegotiation.length) != ((0 : stdgo.GoInt))) {
                        _gotoNext = 5975324i32;
                    } else {
                        _gotoNext = 5975452i32;
                    };
                } else if (__value__ == (5975324i32)) {
                    _c_5973372._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: initial handshake had non-empty renegotiation extension" : stdgo.GoString));
                    _gotoNext = 5975452i32;
                } else if (__value__ == (5975452i32)) {
                    if ((_hs._clientHello._earlyData && (_c_5973372._quic != null && ((_c_5973372._quic : Dynamic).__nil__ == null || !(_c_5973372._quic : Dynamic).__nil__)) : Bool)) {
                        _gotoNext = 5975497i32;
                    } else if (_hs._clientHello._earlyData) {
                        _gotoNext = 5975686i32;
                    } else {
                        _gotoNext = 5976222i32;
                    };
                } else if (__value__ == (5975497i32)) {
                    if ((_hs._clientHello._pskIdentities.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5975543i32;
                    } else {
                        _gotoNext = 5976222i32;
                    };
                } else if (__value__ == (5975543i32)) {
                    _c_5973372._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: early_data without pre_shared_key" : stdgo.GoString));
                    _gotoNext = 5976222i32;
                } else if (__value__ == (5975686i32)) {
                    _c_5973372._sendAlert((110 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client sent unexpected early data" : stdgo.GoString));
                    _gotoNext = 5976222i32;
                } else if (__value__ == (5976222i32)) {
                    _hs._hello._sessionId = _hs._clientHello._sessionId;
                    _hs._hello._compressionMethod = (0 : stdgo.GoUInt8);
                    _preferenceList_5976316 = stdgo._internal.crypto.tls.Tls__defaultCipherSuitesTLS13._defaultCipherSuitesTLS13;
                    if ((!stdgo._internal.crypto.tls.Tls__hasAESGCMHardwareSupport._hasAESGCMHardwareSupport || !stdgo._internal.crypto.tls.Tls__aesgcmPreferred._aesgcmPreferred(_hs._clientHello._cipherSuites) : Bool)) {
                        _gotoNext = 5976438i32;
                    } else {
                        _gotoNext = 5976493i32;
                    };
                } else if (__value__ == (5976438i32)) {
                    _preferenceList_5976316 = stdgo._internal.crypto.tls.Tls__defaultCipherSuitesTLS13NoAES._defaultCipherSuitesTLS13NoAES;
                    _gotoNext = 5976493i32;
                } else if (__value__ == (5976493i32)) {
                    if ((0i32 : stdgo.GoInt) < (_preferenceList_5976316.length)) {
                        _gotoNext = 5976644i32;
                    } else {
                        _gotoNext = 5976648i32;
                    };
                } else if (__value__ == (5976497i32)) {
                    _i_5976511_0++;
                    _gotoNext = 5976645i32;
                } else if (__value__ == (5976532i32)) {
                    _suiteID_5976500 = _preferenceList_5976316[(_i_5976511_0 : stdgo.GoInt)];
                    _hs._suite = stdgo._internal.crypto.tls.Tls__mutualCipherSuiteTLS13._mutualCipherSuiteTLS13(_hs._clientHello._cipherSuites, _suiteID_5976500);
                    if ((_hs._suite != null && ((_hs._suite : Dynamic).__nil__ == null || !(_hs._suite : Dynamic).__nil__))) {
                        _gotoNext = 5976629i32;
                    } else {
                        _gotoNext = 5976497i32;
                    };
                } else if (__value__ == (5976629i32)) {
                    _gotoNext = 5976648i32;
                } else if (__value__ == (5976644i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _preferenceList_5976316[(0i32 : stdgo.GoInt)];
                        _i_5976511_0 = __tmp__0;
                        _suiteID_5976500 = __tmp__1;
                    };
                    _gotoNext = 5976645i32;
                } else if (__value__ == (5976645i32)) {
                    if (_i_5976511_0 < (_preferenceList_5976316.length)) {
                        _gotoNext = 5976532i32;
                    } else {
                        _gotoNext = 5976648i32;
                    };
                } else if (__value__ == (5976648i32)) {
                    if ((_hs._suite == null || (_hs._suite : Dynamic).__nil__)) {
                        _gotoNext = 5976667i32;
                    } else {
                        _gotoNext = 5976790i32;
                    };
                } else if (__value__ == (5976667i32)) {
                    _c_5973372._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: no cipher suite supported by both client and server" : stdgo.GoString));
                    _gotoNext = 5976790i32;
                } else if (__value__ == (5976790i32)) {
                    _c_5973372._cipherSuite = _hs._suite._id;
                    _hs._hello._cipherSuite = _hs._suite._id;
                    _hs._transcript = _hs._suite._hash.new_();
                    _gotoNext = 5977093i32;
                } else if (__value__ == (5977093i32)) {
                    if ((0i32 : stdgo.GoInt) < (_c_5973372._config._curvePreferences().length)) {
                        _gotoNext = 5977518i32;
                    } else {
                        _gotoNext = 5977522i32;
                    };
                } else if (__value__ == (5977114i32)) {
                    _i_5977135_0++;
                    _gotoNext = 5977519i32;
                } else if (__value__ == (5977169i32)) {
                    _preferredGroup_5977117 = _c_5973372._config._curvePreferences()[(_i_5977135_0 : stdgo.GoInt)];
                    if ((0i32 : stdgo.GoInt) < (_hs._clientHello._keyShares.length)) {
                        _gotoNext = 5977339i32;
                    } else {
                        _gotoNext = 5977344i32;
                    };
                } else if (__value__ == (5977177i32)) {
                    _i_5977186_0++;
                    _gotoNext = 5977340i32;
                } else if (__value__ == (5977217i32)) {
                    _ks_5977180 = _hs._clientHello._keyShares[(_i_5977186_0 : stdgo.GoInt)];
                    if (_ks_5977180._group == (_preferredGroup_5977117)) {
                        _gotoNext = 5977252i32;
                    } else {
                        _gotoNext = 5977177i32;
                    };
                } else if (__value__ == (5977252i32)) {
                    _selectedGroup_5977041 = _ks_5977180._group;
                    _clientKeyShare_5977068 = (stdgo.Go.setRef(_ks_5977180) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare>);
                    stdgo._internal.crypto.tls.Tls_groupSelectionBreak.groupSelectionBreak = true;
                    _gotoNext = 5977519i32;
                } else if (__value__ == (5977339i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _hs._clientHello._keyShares[(0i32 : stdgo.GoInt)];
                        _i_5977186_0 = __tmp__0;
                        _ks_5977180 = __tmp__1;
                    };
                    _gotoNext = 5977340i32;
                } else if (__value__ == (5977340i32)) {
                    if (_i_5977186_0 < (_hs._clientHello._keyShares.length)) {
                        _gotoNext = 5977217i32;
                    } else {
                        _gotoNext = 5977344i32;
                    };
                } else if (__value__ == (5977344i32)) {
                    if (_selectedGroup_5977041 != ((0 : stdgo._internal.crypto.tls.Tls_CurveID.CurveID))) {
                        _gotoNext = 5977366i32;
                    } else {
                        _gotoNext = 5977386i32;
                    };
                } else if (__value__ == (5977366i32)) {
                    _i_5977135_0++;
                    _gotoNext = 5977519i32;
                } else if (__value__ == (5977386i32)) {
                    if ((0i32 : stdgo.GoInt) < (_hs._clientHello._supportedCurves.length)) {
                        _gotoNext = 5977515i32;
                    } else {
                        _gotoNext = 5977114i32;
                    };
                } else if (__value__ == (5977390i32)) {
                    _i_5977402_0++;
                    _gotoNext = 5977516i32;
                } else if (__value__ == (5977439i32)) {
                    _group_5977393 = _hs._clientHello._supportedCurves[(_i_5977402_0 : stdgo.GoInt)];
                    if (_group_5977393 == (_preferredGroup_5977117)) {
                        _gotoNext = 5977471i32;
                    } else {
                        _gotoNext = 5977390i32;
                    };
                } else if (__value__ == (5977471i32)) {
                    _selectedGroup_5977041 = _group_5977393;
                    _gotoNext = 5977114i32;
                } else if (__value__ == (5977515i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _hs._clientHello._supportedCurves[(0i32 : stdgo.GoInt)];
                        _i_5977402_0 = __tmp__0;
                        _group_5977393 = __tmp__1;
                    };
                    _gotoNext = 5977516i32;
                } else if (__value__ == (5977516i32)) {
                    if (_i_5977402_0 < (_hs._clientHello._supportedCurves.length)) {
                        _gotoNext = 5977439i32;
                    } else {
                        _gotoNext = 5977114i32;
                    };
                } else if (__value__ == (5977518i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _c_5973372._config._curvePreferences()[(0i32 : stdgo.GoInt)];
                        _i_5977135_0 = __tmp__0;
                        _preferredGroup_5977117 = __tmp__1;
                    };
                    _gotoNext = 5977519i32;
                } else if (__value__ == (5977519i32)) {
                    if (_i_5977135_0 < (_c_5973372._config._curvePreferences().length)) {
                        _gotoNext = 5977169i32;
                    } else {
                        _gotoNext = 5977522i32;
                    };
                } else if (__value__ == (5977522i32)) {
                    if (_selectedGroup_5977041 == ((0 : stdgo._internal.crypto.tls.Tls_CurveID.CurveID))) {
                        _gotoNext = 5977544i32;
                    } else {
                        _gotoNext = 5977666i32;
                    };
                } else if (__value__ == (5977544i32)) {
                    _c_5973372._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: no ECDHE curve supported by both client and server" : stdgo.GoString));
                    _gotoNext = 5977666i32;
                } else if (__value__ == (5977666i32)) {
                    if ((_clientKeyShare_5977068 == null || (_clientKeyShare_5977068 : Dynamic).__nil__)) {
                        _gotoNext = 5977691i32;
                    } else {
                        _gotoNext = 5977828i32;
                    };
                } else if (__value__ == (5977691i32)) {
                    {
                        _err_5977698 = _hs._doHelloRetryRequest(_selectedGroup_5977041);
                        if (_err_5977698 != null) {
                            _gotoNext = 5977755i32;
                        } else {
                            _gotoNext = 5977777i32;
                        };
                    };
                } else if (__value__ == (5977755i32)) {
                    return _err_5977698;
                    _gotoNext = 5977777i32;
                } else if (__value__ == (5977777i32)) {
                    _clientKeyShare_5977068 = (stdgo.Go.setRef(_hs._clientHello._keyShares[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare>);
                    _gotoNext = 5977828i32;
                } else if (__value__ == (5977828i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.tls.Tls__curveForCurveID._curveForCurveID(_selectedGroup_5977041);
                            _ok_5977834 = __tmp__._1;
                        };
                        if (!_ok_5977834) {
                            _gotoNext = 5977876i32;
                        } else {
                            _gotoNext = 5977988i32;
                        };
                    };
                } else if (__value__ == (5977876i32)) {
                    _c_5973372._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: CurvePreferences includes unsupported curve" : stdgo.GoString));
                    _gotoNext = 5977988i32;
                } else if (__value__ == (5977988i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.tls.Tls__generateECDHEKey._generateECDHEKey(_c_5973372._config._rand(), _selectedGroup_5977041);
                        _key_5977988 = __tmp__._0;
                        _err_5977993 = __tmp__._1;
                    };
                    if (_err_5977993 != null) {
                        _gotoNext = 5978064i32;
                    } else {
                        _gotoNext = 5978117i32;
                    };
                } else if (__value__ == (5978064i32)) {
                    _c_5973372._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return _err_5977993;
                    _gotoNext = 5978117i32;
                } else if (__value__ == (5978117i32)) {
                    _hs._hello._serverShare = ({ _group : _selectedGroup_5977041, _data : _key_5977988.publicKey().bytes() } : stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare);
                    {
                        var __tmp__ = _key_5977988.curve().newPublicKey(_clientKeyShare_5977068._data);
                        _peerKey_5978203 = __tmp__._0;
                        _err_5977993 = __tmp__._1;
                    };
                    if (_err_5977993 != null) {
                        _gotoNext = 5978280i32;
                    } else {
                        _gotoNext = 5978376i32;
                    };
                } else if (__value__ == (5978280i32)) {
                    _c_5973372._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: invalid client key share" : stdgo.GoString));
                    _gotoNext = 5978376i32;
                } else if (__value__ == (5978376i32)) {
                    {
                        var __tmp__ = _key_5977988.ecdh(_peerKey_5978203);
                        _hs._sharedKey = __tmp__._0;
                        _err_5977993 = __tmp__._1;
                    };
                    if (_err_5977993 != null) {
                        _gotoNext = 5978429i32;
                    } else {
                        _gotoNext = 5978526i32;
                    };
                } else if (__value__ == (5978429i32)) {
                    _c_5973372._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: invalid client key share" : stdgo.GoString));
                    _gotoNext = 5978526i32;
                } else if (__value__ == (5978526i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.tls.Tls__negotiateALPN._negotiateALPN(_c_5973372._config.nextProtos, _hs._clientHello._alpnProtocols, (_c_5973372._quic != null && ((_c_5973372._quic : Dynamic).__nil__ == null || !(_c_5973372._quic : Dynamic).__nil__)));
                        _selectedProto_5978526 = __tmp__._0?.__copy__();
                        _err_5977993 = __tmp__._1;
                    };
                    if (_err_5977993 != null) {
                        _gotoNext = 5978643i32;
                    } else {
                        _gotoNext = 5978704i32;
                    };
                } else if (__value__ == (5978643i32)) {
                    _c_5973372._sendAlert((120 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return _err_5977993;
                    _gotoNext = 5978704i32;
                } else if (__value__ == (5978704i32)) {
                    _c_5973372._clientProtocol = _selectedProto_5978526?.__copy__();
                    if ((_c_5973372._quic != null && ((_c_5973372._quic : Dynamic).__nil__ == null || !(_c_5973372._quic : Dynamic).__nil__))) {
                        _gotoNext = 5978756i32;
                    } else {
                        _gotoNext = 5979047i32;
                    };
                } else if (__value__ == (5978756i32)) {
                    if (_hs._clientHello._quicTransportParameters == null) {
                        _gotoNext = 5978809i32;
                    } else {
                        _gotoNext = 5978970i32;
                    };
                } else if (__value__ == (5978809i32)) {
                    _c_5973372._sendAlert((109 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client did not send a quic_transport_parameters extension" : stdgo.GoString));
                    _gotoNext = 5978970i32;
                } else if (__value__ == (5978970i32)) {
                    _c_5973372._quicSetTransportParameters(_hs._clientHello._quicTransportParameters);
                    _gotoNext = 5979244i32;
                } else if (__value__ == (5979047i32)) {
                    _gotoNext = 5979047i32;
                    if (_hs._clientHello._quicTransportParameters != null) {
                        _gotoNext = 5979100i32;
                    } else {
                        _gotoNext = 5979244i32;
                    };
                } else if (__value__ == (5979100i32)) {
                    _c_5973372._sendAlert((110 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client sent an unexpected quic_transport_parameters extension" : stdgo.GoString));
                    _gotoNext = 5979244i32;
                } else if (__value__ == (5979244i32)) {
                    _c_5973372._serverName = _hs._clientHello._serverName?.__copy__();
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    static public function _handshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _c = _hs._c;
        if (stdgo._internal.crypto.tls.Tls__needFIPS._needFIPS()) {
            return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: TLS 1.3 reached in FIPS mode" : stdgo.GoString));
        };
        {
            var _err = (_hs._processClientHello() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_hs._checkForResumption() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_hs._pickCertificate() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _c._buffering = true;
        {
            var _err = (_hs._sendServerParameters() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_hs._sendServerCertificate() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_hs._sendServerFinished() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = _c._flush(), __137:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_hs._readClientCertificate() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_hs._readClientFinished() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _c._isHandshakeComplete.store(true);
        return (null : stdgo.Error);
    }
}
