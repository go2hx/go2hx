package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_clientHandshakeStateTLS13_asInterface) class T_clientHandshakeStateTLS13_static_extension {
    @:keep
    static public function _sendClientFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13> = _hs;
        var _c = _hs._c;
        var _finished = (stdgo.Go.setRef(({ _verifyData : _hs._suite._finishedHash(_c._out._trafficSecret, _hs._transcript) } : stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>);
        {
            var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_finished), _hs._transcript), __121:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        _c._out._setTrafficSecret(_hs._suite, (3 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _hs._trafficSecret);
        if ((!_c._config.sessionTicketsDisabled && (_c._config.clientSessionCache != null) : Bool)) {
            _c._resumptionSecret = _hs._suite._deriveSecret(_hs._masterSecret, ("res master" : stdgo.GoString), _hs._transcript);
        };
        if (_c._quic != null && ((_c._quic : Dynamic).__nil__ == null || !(_c._quic : Dynamic).__nil__)) {
            if (_c._hand.len() != ((0 : stdgo.GoInt))) {
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            };
            _c._quicSetWriteSecret((3 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _hs._suite._id, _hs._trafficSecret);
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _sendClientCertificate( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13> = _hs;
        var _c = _hs._c;
        if (_hs._certReq == null || (_hs._certReq : Dynamic).__nil__) {
            return (null : stdgo.Error);
        };
        var __tmp__ = _c._getClientCertificate((stdgo.Go.setRef(({ acceptableCAs : _hs._certReq._certificateAuthorities, signatureSchemes : _hs._certReq._supportedSignatureAlgorithms, version : _c._vers, _ctx : _hs._ctx } : stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo>)), _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var _certMsg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13>);
        _certMsg._certificate = (_cert : stdgo._internal.crypto.tls.Tls_Certificate.Certificate)?.__copy__();
        _certMsg._scts = (_hs._certReq._scts && ((_cert.signedCertificateTimestamps.length) > (0 : stdgo.GoInt) : Bool) : Bool);
        _certMsg._ocspStapling = (_hs._certReq._ocspStapling && ((_cert.ocspstaple.length) > (0 : stdgo.GoInt) : Bool) : Bool);
        {
            var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_certMsg), _hs._transcript), __161:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        if ((_cert.certificate.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        var _certVerifyMsg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg>);
        _certVerifyMsg._hasSignatureAlgorithm = true;
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__selectSignatureScheme._selectSignatureScheme(_c._vers, _cert, _hs._certReq._supportedSignatureAlgorithms);
            _certVerifyMsg._signatureAlgorithm = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls__typeAndHashFromSignatureScheme._typeAndHashFromSignatureScheme(_certVerifyMsg._signatureAlgorithm), _sigType:stdgo.GoUInt8 = __tmp__._0, _sigHash:stdgo._internal.crypto.Crypto_Hash.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
        };
        var _signed = stdgo._internal.crypto.tls.Tls__signedMessage._signedMessage(_sigHash, stdgo.Go.str("TLS 1.3, client CertificateVerify", 0)?.__copy__(), _hs._transcript);
        var _signOpts = (stdgo.Go.asInterface(_sigHash) : stdgo._internal.crypto.Crypto_SignerOpts.SignerOpts);
        if (_sigType == ((226 : stdgo.GoUInt8))) {
            _signOpts = stdgo.Go.asInterface((stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt), hash : _sigHash } : stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions>));
        };
        var __tmp__ = (stdgo.Go.typeAssert((_cert.privateKey : stdgo._internal.crypto.Crypto_Signer.Signer)) : stdgo._internal.crypto.Crypto_Signer.Signer).sign(_c._config._rand(), _signed, _signOpts), _sig:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
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
    static public function _readServerFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13> = _hs;
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
        var _expectedMAC = _hs._suite._finishedHash(_c._in._trafficSecret, _hs._transcript);
        if (!stdgo._internal.crypto.hmac.Hmac_equal.equal(_expectedMAC, _finished._verifyData)) {
            _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: invalid server finished hash" : stdgo.GoString));
        };
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_finished), _hs._transcript) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _hs._trafficSecret = _hs._suite._deriveSecret(_hs._masterSecret, ("c ap traffic" : stdgo.GoString), _hs._transcript);
        var _serverSecret = _hs._suite._deriveSecret(_hs._masterSecret, ("s ap traffic" : stdgo.GoString), _hs._transcript);
        _c._in._setTrafficSecret(_hs._suite, (3 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _serverSecret);
        _err = _c._config._writeKeyLog(("CLIENT_TRAFFIC_SECRET_0" : stdgo.GoString), _hs._hello._random, _hs._trafficSecret);
        if (_err != null) {
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        _err = _c._config._writeKeyLog(("SERVER_TRAFFIC_SECRET_0" : stdgo.GoString), _hs._hello._random, _serverSecret);
        if (_err != null) {
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        _c._ekm = _hs._suite._exportKeyingMaterial(_hs._masterSecret, _hs._transcript);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _readServerCertificate( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13> = _hs;
        var _c = _hs._c;
        if (_hs._usingPSK) {
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
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13>), _1 : false };
        }, _certReq = __tmp__._0, _ok = __tmp__._1;
        if (_ok) {
            _hs._certReq = _certReq;
            {
                var __tmp__ = _c._readHandshake(_hs._transcript);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
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
        if ((_certMsg._certificate.certificate.length) == ((0 : stdgo.GoInt))) {
            _c._sendAlert((50 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: received empty certificates message" : stdgo.GoString));
        };
        _c._scts = _certMsg._certificate.signedCertificateTimestamps;
        _c._ocspResponse = _certMsg._certificate.ocspstaple;
        {
            var _err = (_c._verifyServerCertificate(_certMsg._certificate.certificate) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
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
            return stdgo._internal.errors.Errors_new_.new_(("tls: certificate used with invalid signature algorithm" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls__typeAndHashFromSignatureScheme._typeAndHashFromSignatureScheme(_certVerify._signatureAlgorithm), _sigType:stdgo.GoUInt8 = __tmp__._0, _sigHash:stdgo._internal.crypto.Crypto_Hash.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
        };
        if (((_sigType == (225 : stdgo.GoUInt8)) || (_sigHash == (3u32 : stdgo._internal.crypto.Crypto_Hash.Hash)) : Bool)) {
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: certificate used with invalid signature algorithm" : stdgo.GoString));
        };
        var _signed = stdgo._internal.crypto.tls.Tls__signedMessage._signedMessage(_sigHash, stdgo.Go.str("TLS 1.3, server CertificateVerify", 0)?.__copy__(), _hs._transcript);
        {
            var _err = (stdgo._internal.crypto.tls.Tls__verifyHandshakeSignature._verifyHandshakeSignature(_sigType, stdgo.Go.toInterface(_c._peerCertificates[(0 : stdgo.GoInt)].publicKey), _sigHash, _signed, _certVerify._signature) : stdgo.Error);
            if (_err != null) {
                _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_((("tls: invalid signature by the server certificate: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_certVerify), _hs._transcript) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _readServerParameters( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13> = _hs;
        var _c = _hs._c;
        var __tmp__ = _c._readHandshake(_hs._transcript), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_encryptedExtensionsMsg.T_encryptedExtensionsMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_encryptedExtensionsMsg.T_encryptedExtensionsMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_encryptedExtensionsMsg.T_encryptedExtensionsMsg>), _1 : false };
        }, _encryptedExtensions = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_encryptedExtensions)), _msg);
        };
        {
            var _err = (stdgo._internal.crypto.tls.Tls__checkALPN._checkALPN(_hs._hello._alpnProtocols, _encryptedExtensions._alpnProtocol?.__copy__(), _c._quic != null && ((_c._quic : Dynamic).__nil__ == null || !(_c._quic : Dynamic).__nil__)) : stdgo.Error);
            if (_err != null) {
                _c._sendAlert((120 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return _err;
            };
        };
        _c._clientProtocol = _encryptedExtensions._alpnProtocol?.__copy__();
        if (_c._quic != null && ((_c._quic : Dynamic).__nil__ == null || !(_c._quic : Dynamic).__nil__)) {
            if (_encryptedExtensions._quicTransportParameters == null) {
                _c._sendAlert((109 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: server did not send a quic_transport_parameters extension" : stdgo.GoString));
            };
            _c._quicSetTransportParameters(_encryptedExtensions._quicTransportParameters);
        } else {
            if (_encryptedExtensions._quicTransportParameters != null) {
                _c._sendAlert((110 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: server sent an unexpected quic_transport_parameters extension" : stdgo.GoString));
            };
        };
        if ((!_hs._hello._earlyData && _encryptedExtensions._earlyData : Bool)) {
            _c._sendAlert((110 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent an unexpected early_data extension" : stdgo.GoString));
        };
        if ((_hs._hello._earlyData && !_encryptedExtensions._earlyData : Bool)) {
            _c._quicRejectedEarlyData();
        };
        if (_encryptedExtensions._earlyData) {
            if (_hs._session._cipherSuite != (_c._cipherSuite)) {
                _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: server accepted 0-RTT with the wrong cipher suite" : stdgo.GoString));
            };
            if (_hs._session._alpnProtocol != (_c._clientProtocol)) {
                _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: server accepted 0-RTT with the wrong ALPN" : stdgo.GoString));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _establishHandshakeKeys( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13> = _hs;
        var _c = _hs._c;
        var __tmp__ = _hs._ecdheKey.curve().newPublicKey(_hs._serverHello._serverShare._data), _peerKey:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: invalid server key share" : stdgo.GoString));
        };
        var __tmp__ = _hs._ecdheKey.ecdh(_peerKey), _sharedKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: invalid server key share" : stdgo.GoString));
        };
        var _earlySecret = _hs._earlySecret;
        if (!_hs._usingPSK) {
            _earlySecret = _hs._suite._extract((null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>));
        };
        var _handshakeSecret = _hs._suite._extract(_sharedKey, _hs._suite._deriveSecret(_earlySecret, ("derived" : stdgo.GoString), (null : stdgo._internal.hash.Hash_Hash.Hash)));
        var _clientSecret = _hs._suite._deriveSecret(_handshakeSecret, ("c hs traffic" : stdgo.GoString), _hs._transcript);
        _c._out._setTrafficSecret(_hs._suite, (2 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _clientSecret);
        var _serverSecret = _hs._suite._deriveSecret(_handshakeSecret, ("s hs traffic" : stdgo.GoString), _hs._transcript);
        _c._in._setTrafficSecret(_hs._suite, (2 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _serverSecret);
        if (_c._quic != null && ((_c._quic : Dynamic).__nil__ == null || !(_c._quic : Dynamic).__nil__)) {
            if (_c._hand.len() != ((0 : stdgo.GoInt))) {
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            };
            _c._quicSetWriteSecret((2 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _hs._suite._id, _clientSecret);
            _c._quicSetReadSecret((2 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _hs._suite._id, _serverSecret);
        };
        _err = _c._config._writeKeyLog(("CLIENT_HANDSHAKE_TRAFFIC_SECRET" : stdgo.GoString), _hs._hello._random, _clientSecret);
        if (_err != null) {
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        _err = _c._config._writeKeyLog(("SERVER_HANDSHAKE_TRAFFIC_SECRET" : stdgo.GoString), _hs._hello._random, _serverSecret);
        if (_err != null) {
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        _hs._masterSecret = _hs._suite._extract((null : stdgo.Slice<stdgo.GoUInt8>), _hs._suite._deriveSecret(_handshakeSecret, ("derived" : stdgo.GoString), (null : stdgo._internal.hash.Hash_Hash.Hash)));
        return (null : stdgo.Error);
    }
    @:keep
    static public function _processServerHello( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13> = _hs;
        var _c = _hs._c;
        if (stdgo._internal.bytes.Bytes_equal.equal(_hs._serverHello._random, stdgo._internal.crypto.tls.Tls__helloRetryRequestRandom._helloRetryRequestRandom)) {
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent two HelloRetryRequest messages" : stdgo.GoString));
        };
        if ((_hs._serverHello._cookie.length) != ((0 : stdgo.GoInt))) {
            _c._sendAlert((110 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent a cookie in a normal ServerHello" : stdgo.GoString));
        };
        if (_hs._serverHello._selectedGroup != ((0 : stdgo._internal.crypto.tls.Tls_CurveID.CurveID))) {
            _c._sendAlert((50 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: malformed key_share extension" : stdgo.GoString));
        };
        if (_hs._serverHello._serverShare._group == ((0 : stdgo._internal.crypto.tls.Tls_CurveID.CurveID))) {
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server did not send a key share" : stdgo.GoString));
        };
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__curveIDForCurve._curveIDForCurve(_hs._ecdheKey.curve()), _sentID:stdgo._internal.crypto.tls.Tls_CurveID.CurveID = __tmp__._0, __113:Bool = __tmp__._1;
            if (_hs._serverHello._serverShare._group != (_sentID)) {
                _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: server selected unsupported group" : stdgo.GoString));
            };
        };
        if (!_hs._serverHello._selectedIdentityPresent) {
            return (null : stdgo.Error);
        };
        if (((_hs._serverHello._selectedIdentity : stdgo.GoInt) >= (_hs._hello._pskIdentities.length) : Bool)) {
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected an invalid PSK" : stdgo.GoString));
        };
        if (((_hs._hello._pskIdentities.length != (1 : stdgo.GoInt)) || ((_hs._session == null) || (_hs._session : Dynamic).__nil__) : Bool)) {
            return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
        };
        var _pskSuite = stdgo._internal.crypto.tls.Tls__cipherSuiteTLS13ByID._cipherSuiteTLS13ByID(_hs._session._cipherSuite);
        if (_pskSuite == null || (_pskSuite : Dynamic).__nil__) {
            return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
        };
        if (_pskSuite._hash != (_hs._suite._hash)) {
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected an invalid PSK and cipher suite pair" : stdgo.GoString));
        };
        _hs._usingPSK = true;
        _c._didResume = true;
        _c._peerCertificates = _hs._session._peerCertificates;
        _c._activeCertHandles = _hs._session._activeCertHandles;
        _c._verifiedChains = _hs._session._verifiedChains;
        _c._ocspResponse = _hs._session._ocspResponse;
        _c._scts = _hs._session._scts;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _processHelloRetryRequest( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13> = _hs;
        var _c = _hs._c;
        var _chHash = _hs._transcript.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        _hs._transcript.reset();
        _hs._transcript.write((new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(254 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (_chHash.length : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        _hs._transcript.write(_chHash);
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_hs._serverHello), _hs._transcript) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (((_hs._serverHello._selectedGroup == (0 : stdgo._internal.crypto.tls.Tls_CurveID.CurveID)) && (_hs._serverHello._cookie == null) : Bool)) {
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent an unnecessary HelloRetryRequest message" : stdgo.GoString));
        };
        if (_hs._serverHello._cookie != null) {
            _hs._hello._cookie = _hs._serverHello._cookie;
        };
        if (_hs._serverHello._serverShare._group != ((0 : stdgo._internal.crypto.tls.Tls_CurveID.CurveID))) {
            _c._sendAlert((50 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: received malformed key_share extension" : stdgo.GoString));
        };
        {
            var _curveID = (_hs._serverHello._selectedGroup : stdgo._internal.crypto.tls.Tls_CurveID.CurveID);
            if (_curveID != ((0 : stdgo._internal.crypto.tls.Tls_CurveID.CurveID))) {
                var _curveOK = (false : Bool);
                for (__169 => _id in _hs._hello._supportedCurves) {
                    if (_id == (_curveID)) {
                        _curveOK = true;
                        break;
                    };
                };
                if (!_curveOK) {
                    _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: server selected unsupported group" : stdgo.GoString));
                };
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__curveIDForCurve._curveIDForCurve(_hs._ecdheKey.curve()), _sentID:stdgo._internal.crypto.tls.Tls_CurveID.CurveID = __tmp__._0, __178:Bool = __tmp__._1;
                    if (_sentID == (_curveID)) {
                        _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                        return stdgo._internal.errors.Errors_new_.new_(("tls: server sent an unnecessary HelloRetryRequest key_share" : stdgo.GoString));
                    };
                };
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__curveForCurveID._curveForCurveID(_curveID), __179:_internal.crypto.ecdh.Ecdh_Curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                        return stdgo._internal.errors.Errors_new_.new_(("tls: CurvePreferences includes unsupported curve" : stdgo.GoString));
                    };
                };
                var __tmp__ = stdgo._internal.crypto.tls.Tls__generateECDHEKey._generateECDHEKey(_c._config._rand(), _curveID), _key:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return _err;
                };
                _hs._ecdheKey = _key;
                _hs._hello._keyShares = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare>(1, 1, ...[({ _group : _curveID, _data : _key.publicKey().bytes() } : stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare)])) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare>);
            };
        };
        _hs._hello._raw = (null : stdgo.Slice<stdgo.GoUInt8>);
        if (((_hs._hello._pskIdentities.length) > (0 : stdgo.GoInt) : Bool)) {
            var _pskSuite = stdgo._internal.crypto.tls.Tls__cipherSuiteTLS13ByID._cipherSuiteTLS13ByID(_hs._session._cipherSuite);
            if (_pskSuite == null || (_pskSuite : Dynamic).__nil__) {
                return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            };
            if (_pskSuite._hash == (_hs._suite._hash)) {
                var _ticketAge = (_c._config._time().sub(stdgo._internal.time.Time_unix.unix((_hs._session._createdAt : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
                _hs._hello._pskIdentities[(0 : stdgo.GoInt)]._obfuscatedTicketAge = (((_ticketAge / (1000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoUInt32) + _hs._session._ageAdd : stdgo.GoUInt32);
                var _transcript = (_hs._suite._hash.new_() : stdgo._internal.hash.Hash_Hash.Hash);
                _transcript.write((new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(254 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (_chHash.length : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                _transcript.write(_chHash);
                {
                    var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_hs._serverHello), _transcript) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
                var __tmp__ = _hs._hello._marshalWithoutBinders(), _helloBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                _transcript.write(_helloBytes);
                var _pskBinders = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(1, 1, ...[_hs._suite._finishedHash(_hs._binderKey, _transcript)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
                {
                    var _err = (_hs._hello._updateBinders(_pskBinders) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            } else {
                _hs._hello._pskIdentities = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_pskIdentity.T_pskIdentity>);
                _hs._hello._pskBinders = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            };
        };
        if (_hs._hello._earlyData) {
            _hs._hello._earlyData = false;
            _c._quicRejectedEarlyData();
        };
        {
            var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_hs._hello), _hs._transcript), __217:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>), _1 : false };
        }, _serverHello = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_serverHello)), _msg);
        };
        _hs._serverHello = _serverHello;
        {
            var _err = (_hs._checkServerHelloOrHRR() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _sendDummyChangeCipherSpec( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13> = _hs;
        if (_hs._c._quic != null && ((_hs._c._quic : Dynamic).__nil__ == null || !(_hs._c._quic : Dynamic).__nil__)) {
            return (null : stdgo.Error);
        };
        if (_hs._sentDummyCCS) {
            return (null : stdgo.Error);
        };
        _hs._sentDummyCCS = true;
        return _hs._c._writeChangeCipherRecord();
    }
    @:keep
    static public function _checkServerHelloOrHRR( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13> = _hs;
        var _c = _hs._c;
        if (_hs._serverHello._supportedVersion == ((0 : stdgo.GoUInt16))) {
            _c._sendAlert((109 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected TLS 1.3 using the legacy version field" : stdgo.GoString));
        };
        if (_hs._serverHello._supportedVersion != ((772 : stdgo.GoUInt16))) {
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected an invalid version after a HelloRetryRequest" : stdgo.GoString));
        };
        if (_hs._serverHello._vers != ((771 : stdgo.GoUInt16))) {
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent an incorrect legacy version" : stdgo.GoString));
        };
        if (((((((_hs._serverHello._ocspStapling || _hs._serverHello._ticketSupported : Bool) || _hs._serverHello._extendedMasterSecret : Bool) || _hs._serverHello._secureRenegotiationSupported : Bool) || (_hs._serverHello._secureRenegotiation.length) != ((0 : stdgo.GoInt)) : Bool) || (_hs._serverHello._alpnProtocol.length) != ((0 : stdgo.GoInt)) : Bool) || (_hs._serverHello._scts.length != (0 : stdgo.GoInt)) : Bool)) {
            _c._sendAlert((110 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent a ServerHello extension forbidden in TLS 1.3" : stdgo.GoString));
        };
        if (!stdgo._internal.bytes.Bytes_equal.equal(_hs._hello._sessionId, _hs._serverHello._sessionId)) {
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server did not echo the legacy session ID" : stdgo.GoString));
        };
        if (_hs._serverHello._compressionMethod != ((0 : stdgo.GoUInt8))) {
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected unsupported compression format" : stdgo.GoString));
        };
        var _selectedSuite = stdgo._internal.crypto.tls.Tls__mutualCipherSuiteTLS13._mutualCipherSuiteTLS13(_hs._hello._cipherSuites, _hs._serverHello._cipherSuite);
        if ((((_hs._suite != null) && ((_hs._suite : Dynamic).__nil__ == null || !(_hs._suite : Dynamic).__nil__)) && (_selectedSuite != _hs._suite) : Bool)) {
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server changed cipher suite after a HelloRetryRequest" : stdgo.GoString));
        };
        if (_selectedSuite == null || (_selectedSuite : Dynamic).__nil__) {
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server chose an unconfigured cipher suite" : stdgo.GoString));
        };
        _hs._suite = _selectedSuite;
        _c._cipherSuite = _hs._suite._id;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _handshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13> = _hs;
        var _c = _hs._c;
        if (stdgo._internal.crypto.tls.Tls__needFIPS._needFIPS()) {
            return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: TLS 1.3 reached in FIPS mode" : stdgo.GoString));
        };
        if ((_c._handshakes > (0 : stdgo.GoInt) : Bool)) {
            _c._sendAlert((70 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected TLS 1.3 in a renegotiation" : stdgo.GoString));
        };
        if ((((_hs._ecdheKey == null) || (_hs._ecdheKey : Dynamic).__nil__) || (_hs._hello._keyShares.length != (1 : stdgo.GoInt)) : Bool)) {
            return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
        };
        {
            var _err = (_hs._checkServerHelloOrHRR() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _hs._transcript = _hs._suite._hash.new_();
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_hs._hello), _hs._transcript) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (stdgo._internal.bytes.Bytes_equal.equal(_hs._serverHello._random, stdgo._internal.crypto.tls.Tls__helloRetryRequestRandom._helloRetryRequestRandom)) {
            {
                var _err = (_hs._sendDummyChangeCipherSpec() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err = (_hs._processHelloRetryRequest() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_hs._serverHello), _hs._transcript) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _c._buffering = true;
        {
            var _err = (_hs._processServerHello() : stdgo.Error);
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
        {
            var _err = (_hs._establishHandshakeKeys() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_hs._readServerParameters() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_hs._readServerCertificate() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_hs._readServerFinished() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_hs._sendClientCertificate() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_hs._sendClientFinished() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = _c._flush(), __241:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        _c._isHandshakeComplete.store(true);
        return (null : stdgo.Error);
    }
}
