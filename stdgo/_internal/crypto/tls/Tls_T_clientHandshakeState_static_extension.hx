package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_clientHandshakeState_asInterface) class T_clientHandshakeState_static_extension {
    @:keep
    static public function _sendFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>, _out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState> = _hs;
        var _c = _hs._c;
        {
            var _err = (_c._writeChangeCipherRecord() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _finished = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>);
        _finished._verifyData = _hs._finishedHash._clientSum(_hs._masterSecret);
        {
            var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_finished), stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __121:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        _out.__copyTo__(_finished._verifyData);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _saveSessionTicket( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState> = _hs;
        if (_hs._ticket == null) {
            return (null : stdgo.Error);
        };
        var _c = _hs._c;
        var _cacheKey = (_c._clientSessionCacheKey()?.__copy__() : stdgo.GoString);
        if (_cacheKey == (stdgo.Go.str())) {
            return (null : stdgo.Error);
        };
        var __tmp__ = _c._sessionState(), _session:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _session._secret = _hs._masterSecret;
        var _cs = (stdgo.Go.setRef(({ _ticket : _hs._ticket, _session : _session } : stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>);
        _c._config.clientSessionCache.put(_cacheKey?.__copy__(), _cs);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _readSessionTicket( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState> = _hs;
        if (!_hs._serverHello._ticketSupported) {
            return (null : stdgo.Error);
        };
        var _c = _hs._c;
        if (!_hs._hello._ticketSupported) {
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent unrequested session ticket" : stdgo.GoString));
        };
        var __tmp__ = _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsg.T_newSessionTicketMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsg.T_newSessionTicketMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsg.T_newSessionTicketMsg>), _1 : false };
        }, _sessionTicketMsg = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_sessionTicketMsg)), _msg);
        };
        _hs._ticket = _sessionTicketMsg._ticket;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _readFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>, _out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState> = _hs;
        var _c = _hs._c;
        {
            var _err = (_c._readChangeCipherSpec() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>), _1 : false };
        }, _serverFinished = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_serverFinished)), _msg);
        };
        var _verify = _hs._finishedHash._serverSum(_hs._masterSecret);
        if (((_verify.length != (_serverFinished._verifyData.length)) || (stdgo._internal.crypto.subtle.Subtle_constantTimeCompare.constantTimeCompare(_verify, _serverFinished._verifyData) != (1 : stdgo.GoInt)) : Bool)) {
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server\'s Finished message was incorrect" : stdgo.GoString));
        };
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_serverFinished), stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _out.__copyTo__(_verify);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _processServerHello( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState> = _hs;
        var _c = _hs._c;
        {
            var _err = (_hs._pickCipherSuite() : stdgo.Error);
            if (_err != null) {
                return { _0 : false, _1 : _err };
            };
        };
        if (_hs._serverHello._compressionMethod != ((0 : stdgo.GoUInt8))) {
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: server selected unsupported compression format" : stdgo.GoString)) };
        };
        if (((_c._handshakes == (0 : stdgo.GoInt)) && _hs._serverHello._secureRenegotiationSupported : Bool)) {
            _c._secureRenegotiation = true;
            if ((_hs._serverHello._secureRenegotiation.length) != ((0 : stdgo.GoInt))) {
                _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: initial handshake had non-empty renegotiation extension" : stdgo.GoString)) };
            };
        };
        if (((_c._handshakes > (0 : stdgo.GoInt) : Bool) && _c._secureRenegotiation : Bool)) {
            var _expectedSecureRenegotiation:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(24, 24, ...[for (i in 0 ... 24) (0 : stdgo.GoUInt8)]);
            (_expectedSecureRenegotiation.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_c._clientFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            (_expectedSecureRenegotiation.__slice__((12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_c._serverFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            if (!stdgo._internal.bytes.Bytes_equal.equal(_hs._serverHello._secureRenegotiation, (_expectedSecureRenegotiation.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))) {
                _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: incorrect renegotiation extension contents" : stdgo.GoString)) };
            };
        };
        {
            var _err = (stdgo._internal.crypto.tls.Tls__checkALPN._checkALPN(_hs._hello._alpnProtocols, _hs._serverHello._alpnProtocol?.__copy__(), false) : stdgo.Error);
            if (_err != null) {
                _c._sendAlert((110 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return { _0 : false, _1 : _err };
            };
        };
        _c._clientProtocol = _hs._serverHello._alpnProtocol?.__copy__();
        _c._scts = _hs._serverHello._scts;
        if (!_hs._serverResumedSession()) {
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        if (_hs._session._version != (_c._vers)) {
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: server resumed a session with a different version" : stdgo.GoString)) };
        };
        if (_hs._session._cipherSuite != (_hs._suite._id)) {
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: server resumed a session with a different cipher suite" : stdgo.GoString)) };
        };
        if (_hs._session._extMasterSecret != (_hs._serverHello._extendedMasterSecret)) {
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: server resumed a session with a different EMS extension" : stdgo.GoString)) };
        };
        _hs._masterSecret = _hs._session._secret;
        _c._extMasterSecret = _hs._session._extMasterSecret;
        _c._peerCertificates = _hs._session._peerCertificates;
        _c._activeCertHandles = _hs._c._activeCertHandles;
        _c._verifiedChains = _hs._session._verifiedChains;
        _c._ocspResponse = _hs._session._ocspResponse;
        if (((_c._scts.length == (0 : stdgo.GoInt)) && (_hs._session._scts.length != (0 : stdgo.GoInt)) : Bool)) {
            _c._scts = _hs._session._scts;
        };
        return { _0 : true, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _serverResumedSession( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>):Bool {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState> = _hs;
        return (((_hs._session != null && ((_hs._session : Dynamic).__nil__ == null || !(_hs._session : Dynamic).__nil__)) && _hs._hello._sessionId != null : Bool) && stdgo._internal.bytes.Bytes_equal.equal(_hs._serverHello._sessionId, _hs._hello._sessionId) : Bool);
    }
    @:keep
    static public function _establishKeys( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState> = _hs;
        var _c = _hs._c;
        var __tmp__ = stdgo._internal.crypto.tls.Tls__keysFromMasterSecret._keysFromMasterSecret(_c._vers, _hs._suite, _hs._masterSecret, _hs._hello._random, _hs._serverHello._random, _hs._suite._macLen, _hs._suite._keyLen, _hs._suite._ivLen), _clientMAC:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _serverMAC:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _clientKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._2, _serverKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._3, _clientIV:stdgo.Slice<stdgo.GoUInt8> = __tmp__._4, _serverIV:stdgo.Slice<stdgo.GoUInt8> = __tmp__._5;
        var __0:stdgo.AnyInterface = (null : stdgo.AnyInterface), __1:stdgo.AnyInterface = (null : stdgo.AnyInterface);
var _serverCipher = __1, _clientCipher = __0;
        var __0:stdgo._internal.hash.Hash_Hash.Hash = (null : stdgo._internal.hash.Hash_Hash.Hash), __1:stdgo._internal.hash.Hash_Hash.Hash = (null : stdgo._internal.hash.Hash_Hash.Hash);
var _serverHash = __1, _clientHash = __0;
        if (_hs._suite._cipher != null) {
            _clientCipher = _hs._suite._cipher(_clientKey, _clientIV, false);
            _clientHash = _hs._suite._mac(_clientMAC);
            _serverCipher = _hs._suite._cipher(_serverKey, _serverIV, true);
            _serverHash = _hs._suite._mac(_serverMAC);
        } else {
            _clientCipher = stdgo.Go.toInterface(_hs._suite._aead(_clientKey, _clientIV));
            _serverCipher = stdgo.Go.toInterface(_hs._suite._aead(_serverKey, _serverIV));
        };
        _c._in._prepareCipherSpec(_c._vers, _serverCipher, _serverHash);
        _c._out._prepareCipherSpec(_c._vers, _clientCipher, _clientHash);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _doFullHandshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState> = _hs;
        var _c = _hs._c;
        var __tmp__ = _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg>), _1 : false };
        }, _certMsg = __tmp__._0, _ok = __tmp__._1;
        if ((!_ok || (_certMsg._certificates.length == (0 : stdgo.GoInt)) : Bool)) {
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_certMsg)), _msg);
        };
        {
            var __tmp__ = _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>)));
            _msg = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateStatusMsg.T_certificateStatusMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateStatusMsg.T_certificateStatusMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateStatusMsg.T_certificateStatusMsg>), _1 : false };
        }, _cs = __tmp__._0, _ok = __tmp__._1;
        if (_ok) {
            if (!_hs._serverHello._ocspStapling) {
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: received unexpected CertificateStatus message" : stdgo.GoString));
            };
            _c._ocspResponse = _cs._response;
            {
                var __tmp__ = _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>)));
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        if (_c._handshakes == ((0 : stdgo.GoInt))) {
            {
                var _err = (_c._verifyServerCertificate(_certMsg._certificates) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        } else {
            if (!stdgo._internal.bytes.Bytes_equal.equal(_c._peerCertificates[(0 : stdgo.GoInt)].raw, _certMsg._certificates[(0 : stdgo.GoInt)])) {
                _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: server\'s identity changed during renegotiation" : stdgo.GoString));
            };
        };
        var _keyAgreement = (_hs._suite._ka(_c._vers) : stdgo._internal.crypto.tls.Tls_T_keyAgreement.T_keyAgreement);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg>), _1 : false };
        }, _skx = __tmp__._0, _ok = __tmp__._1;
        if (_ok) {
            _err = _keyAgreement._processServerKeyExchange(_c._config, _hs._hello, _hs._serverHello, _c._peerCertificates[(0 : stdgo.GoInt)], _skx);
            if (_err != null) {
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return _err;
            };
            {
                var __tmp__ = _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>)));
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        var _chainToSend:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
        var _certRequested:Bool = false;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg>), _1 : false };
        }, _certReq = __tmp__._0, _ok = __tmp__._1;
        if (_ok) {
            _certRequested = true;
            var _cri = stdgo._internal.crypto.tls.Tls__certificateRequestInfoFromMsg._certificateRequestInfoFromMsg(_hs._ctx, _c._vers, _certReq);
            {
                {
                    var __tmp__ = _c._getClientCertificate(_cri);
                    _chainToSend = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return _err;
                };
            };
            {
                var __tmp__ = _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>)));
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloDoneMsg.T_serverHelloDoneMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloDoneMsg.T_serverHelloDoneMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloDoneMsg.T_serverHelloDoneMsg>), _1 : false };
        }, _shd = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_shd)), _msg);
        };
        if (_certRequested) {
            _certMsg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg>);
            _certMsg._certificates = _chainToSend.certificate;
            {
                var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_certMsg), stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __153:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var __tmp__ = _keyAgreement._generateClientKeyExchange(_c._config, _hs._hello, _c._peerCertificates[(0 : stdgo.GoInt)]), _preMasterSecret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ckx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        if ((_ckx != null && ((_ckx : Dynamic).__nil__ == null || !(_ckx : Dynamic).__nil__))) {
            {
                var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_ckx), stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __177:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        if (_hs._serverHello._extendedMasterSecret) {
            _c._extMasterSecret = true;
            _hs._masterSecret = stdgo._internal.crypto.tls.Tls__extMasterFromPreMasterSecret._extMasterFromPreMasterSecret(_c._vers, _hs._suite, _preMasterSecret, _hs._finishedHash.sum());
        } else {
            _hs._masterSecret = stdgo._internal.crypto.tls.Tls__masterFromPreMasterSecret._masterFromPreMasterSecret(_c._vers, _hs._suite, _preMasterSecret, _hs._hello._random, _hs._serverHello._random);
        };
        {
            var _err = (_c._config._writeKeyLog(("CLIENT_RANDOM" : stdgo.GoString), _hs._hello._random, _hs._masterSecret) : stdgo.Error);
            if (_err != null) {
                _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_((("tls: failed to write to key log: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
        if (((_chainToSend != null && ((_chainToSend : Dynamic).__nil__ == null || !(_chainToSend : Dynamic).__nil__)) && ((_chainToSend.certificate.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _certVerify = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg() : stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg>);
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_chainToSend.privateKey : stdgo._internal.crypto.Crypto_Signer.Signer)) : stdgo._internal.crypto.Crypto_Signer.Signer), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.Crypto_Signer.Signer), _1 : false };
            }, _key = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: client certificate private key of type %T does not implement crypto.Signer" : stdgo.GoString), stdgo.Go.toInterface(_chainToSend.privateKey));
            };
            var _sigType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
            var _sigHash:stdgo._internal.crypto.Crypto_Hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_Hash.Hash);
            if ((_c._vers >= (771 : stdgo.GoUInt16) : Bool)) {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__selectSignatureScheme._selectSignatureScheme(_c._vers, _chainToSend, _certReq._supportedSignatureAlgorithms), _signatureAlgorithm:stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return _err;
                };
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__typeAndHashFromSignatureScheme._typeAndHashFromSignatureScheme(_signatureAlgorithm);
                    _sigType = __tmp__._0;
                    _sigHash = __tmp__._1;
                    _err = __tmp__._2;
                };
                if (_err != null) {
                    return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                };
                _certVerify._hasSignatureAlgorithm = true;
                _certVerify._signatureAlgorithm = _signatureAlgorithm;
            } else {
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__legacyTypeAndHashFromPublicKey._legacyTypeAndHashFromPublicKey(_key.public_());
                    _sigType = __tmp__._0;
                    _sigHash = __tmp__._1;
                    _err = __tmp__._2;
                };
                if (_err != null) {
                    _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return _err;
                };
            };
            var _signed = _hs._finishedHash._hashForClientCertificate(_sigType, _sigHash);
            var _signOpts = (stdgo.Go.asInterface(_sigHash) : stdgo._internal.crypto.Crypto_SignerOpts.SignerOpts);
            if (_sigType == ((226 : stdgo.GoUInt8))) {
                _signOpts = stdgo.Go.asInterface((stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt), hash : _sigHash } : stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions>));
            };
            {
                var __tmp__ = _key.sign(_c._config._rand(), _signed, _signOpts);
                _certVerify._signature = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return _err;
            };
            {
                var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_certVerify), stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __241:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        _hs._finishedHash._discardHandshakeBuffer();
        return (null : stdgo.Error);
    }
    @:keep
    static public function _pickCipherSuite( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState> = _hs;
        {
            _hs._suite = stdgo._internal.crypto.tls.Tls__mutualCipherSuite._mutualCipherSuite(_hs._hello._cipherSuites, _hs._serverHello._cipherSuite);
            if ((_hs._suite == null || (_hs._suite : Dynamic).__nil__)) {
                _hs._c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: server chose an unconfigured cipher suite" : stdgo.GoString));
            };
        };
        _hs._c._cipherSuite = _hs._suite._id;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _handshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState> = _hs;
        var _c = _hs._c;
        var __tmp__ = _hs._processServerHello(), _isResume:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _hs._finishedHash = stdgo._internal.crypto.tls.Tls__newFinishedHash._newFinishedHash(_c._vers, _hs._suite)?.__copy__();
        if ((_isResume || (((_c._config.certificates.length == (0 : stdgo.GoInt)) && (_c._config.getClientCertificate == null) : Bool)) : Bool)) {
            _hs._finishedHash._discardHandshakeBuffer();
        };
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_hs._hello), stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_hs._serverHello), stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _c._buffering = true;
        _c._didResume = _isResume;
        if (_isResume) {
            {
                var _err = (_hs._establishKeys() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err = (_hs._readSessionTicket() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err = (_hs._readFinished((_c._serverFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            _c._clientFinishedIsFirst = false;
            if (_c._config.verifyConnection != null) {
                {
                    var _err = (_c._config.verifyConnection(_c._connectionStateLocked()?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                        return _err;
                    };
                };
            };
            {
                var _err = (_hs._sendFinished((_c._clientFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = _c._flush(), __253:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        } else {
            {
                var _err = (_hs._doFullHandshake() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err = (_hs._establishKeys() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err = (_hs._sendFinished((_c._clientFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = _c._flush(), __217:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            _c._clientFinishedIsFirst = true;
            {
                var _err = (_hs._readSessionTicket() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err = (_hs._readFinished((_c._serverFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        {
            var _err = (_hs._saveSessionTicket() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _c._ekm = stdgo._internal.crypto.tls.Tls__ekmFromMasterSecret._ekmFromMasterSecret(_c._vers, _hs._suite, _hs._masterSecret, _hs._hello._random, _hs._serverHello._random);
        _c._isHandshakeComplete.store(true);
        return (null : stdgo.Error);
    }
}
