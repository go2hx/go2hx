package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_serverHandshakeState_asInterface) class T_serverHandshakeState_static_extension {
    @:keep
    static public function _sendFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>, _out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        var _c = _hs._c;
        {
            var _err = (_c._writeChangeCipherRecord() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _finished = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>);
        _finished._verifyData = _hs._finishedHash._serverSum(_hs._masterSecret);
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
    static public function _sendSessionTicket( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        if (!_hs._hello._ticketSupported) {
            return (null : stdgo.Error);
        };
        var _c = _hs._c;
        var _m = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsg.T_newSessionTicketMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsg.T_newSessionTicketMsg>);
        var __tmp__ = _c._sessionState(), _state:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _state._secret = _hs._masterSecret;
        if ((_hs._sessionState != null && ((_hs._sessionState : Dynamic).__nil__ == null || !(_hs._sessionState : Dynamic).__nil__))) {
            _state._createdAt = _hs._sessionState._createdAt;
        };
        if (_c._config.wrapSession != null) {
            {
                var __tmp__ = _c._config.wrapSession(_c._connectionStateLocked()?.__copy__(), _state);
                _m._ticket = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        } else {
            var __tmp__ = _state.bytes(), _stateBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            {
                var __tmp__ = _c._config._encryptTicket(_stateBytes, _c._ticketKeys);
                _m._ticket = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_m), stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __141:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _readFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>, _out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
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
        }, _clientFinished = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_clientFinished)), _msg);
        };
        var _verify = _hs._finishedHash._clientSum(_hs._masterSecret);
        if (((_verify.length != (_clientFinished._verifyData.length)) || (stdgo._internal.crypto.subtle.Subtle_constantTimeCompare.constantTimeCompare(_verify, _clientFinished._verifyData) != (1 : stdgo.GoInt)) : Bool)) {
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: client\'s Finished message is incorrect" : stdgo.GoString));
        };
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_clientFinished), stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _out.__copyTo__(_verify);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _establishKeys( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        var _c = _hs._c;
        var __tmp__ = stdgo._internal.crypto.tls.Tls__keysFromMasterSecret._keysFromMasterSecret(_c._vers, _hs._suite, _hs._masterSecret, _hs._clientHello._random, _hs._hello._random, _hs._suite._macLen, _hs._suite._keyLen, _hs._suite._ivLen), _clientMAC:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _serverMAC:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _clientKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._2, _serverKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._3, _clientIV:stdgo.Slice<stdgo.GoUInt8> = __tmp__._4, _serverIV:stdgo.Slice<stdgo.GoUInt8> = __tmp__._5;
        var __0:stdgo.AnyInterface = (null : stdgo.AnyInterface), __1:stdgo.AnyInterface = (null : stdgo.AnyInterface);
var _serverCipher = __1, _clientCipher = __0;
        var __0:stdgo._internal.hash.Hash_Hash.Hash = (null : stdgo._internal.hash.Hash_Hash.Hash), __1:stdgo._internal.hash.Hash_Hash.Hash = (null : stdgo._internal.hash.Hash_Hash.Hash);
var _serverHash = __1, _clientHash = __0;
        if (_hs._suite._aead == null) {
            _clientCipher = _hs._suite._cipher(_clientKey, _clientIV, true);
            _clientHash = _hs._suite._mac(_clientMAC);
            _serverCipher = _hs._suite._cipher(_serverKey, _serverIV, false);
            _serverHash = _hs._suite._mac(_serverMAC);
        } else {
            _clientCipher = stdgo.Go.toInterface(_hs._suite._aead(_clientKey, _clientIV));
            _serverCipher = stdgo.Go.toInterface(_hs._suite._aead(_serverKey, _serverIV));
        };
        _c._in._prepareCipherSpec(_c._vers, _clientCipher, _clientHash);
        _c._out._prepareCipherSpec(_c._vers, _serverCipher, _serverHash);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _doFullHandshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        var _c = _hs._c;
        if ((_hs._clientHello._ocspStapling && ((_hs._cert.ocspstaple.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _hs._hello._ocspStapling = true;
        };
        _hs._hello._ticketSupported = (_hs._clientHello._ticketSupported && !_c._config.sessionTicketsDisabled : Bool);
        _hs._hello._cipherSuite = _hs._suite._id;
        _hs._finishedHash = stdgo._internal.crypto.tls.Tls__newFinishedHash._newFinishedHash(_hs._c._vers, _hs._suite)?.__copy__();
        if (_c._config.clientAuth == ((0 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType))) {
            _hs._finishedHash._discardHandshakeBuffer();
        };
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_hs._clientHello), stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_hs._hello), stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __225:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _certMsg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg>);
        _certMsg._certificates = _hs._cert.certificate;
        {
            var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_certMsg), stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __258:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        if (_hs._hello._ocspStapling) {
            var _certStatus = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_certificateStatusMsg.T_certificateStatusMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateStatusMsg.T_certificateStatusMsg>);
            _certStatus._response = _hs._cert.ocspstaple;
            {
                var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_certStatus), stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __299:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _keyAgreement = (_hs._suite._ka(_c._vers) : stdgo._internal.crypto.tls.Tls_T_keyAgreement.T_keyAgreement);
        var __tmp__ = _keyAgreement._generateServerKeyExchange(_c._config, _hs._cert, _hs._clientHello, _hs._hello), _skx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        if ((_skx != null && ((_skx : Dynamic).__nil__ == null || !(_skx : Dynamic).__nil__))) {
            {
                var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_skx), stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __339:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _certReq:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg>);
        if ((_c._config.clientAuth >= (1 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType) : Bool)) {
            _certReq = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg>);
            _certReq._certificateTypes = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(1 : stdgo.GoUInt8), (64 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            if ((_c._vers >= (771 : stdgo.GoUInt16) : Bool)) {
                _certReq._hasSignatureAlgorithm = true;
                _certReq._supportedSignatureAlgorithms = stdgo._internal.crypto.tls.Tls__supportedSignatureAlgorithms._supportedSignatureAlgorithms();
            };
            if ((_c._config.clientCAs != null && ((_c._config.clientCAs : Dynamic).__nil__ == null || !(_c._config.clientCAs : Dynamic).__nil__))) {
                _certReq._certificateAuthorities = _c._config.clientCAs.subjects();
            };
            {
                var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_certReq), stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __371:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _helloDone = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_serverHelloDoneMsg.T_serverHelloDoneMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloDoneMsg.T_serverHelloDoneMsg>);
        {
            var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_helloDone), stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __351:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = _c._flush(), __360:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _pub:stdgo._internal.crypto.Crypto_PublicKey.PublicKey = (null : stdgo._internal.crypto.Crypto_PublicKey.PublicKey);
        var __tmp__ = _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if ((_c._config.clientAuth >= (1 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType) : Bool)) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg>), _1 : false };
            }, _certMsg = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_certMsg)), _msg);
            };
            {
                var _err = (_c._processCertsFromClient(({ certificate : _certMsg._certificates } : stdgo._internal.crypto.tls.Tls_Certificate.Certificate)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            if ((_certMsg._certificates.length) != ((0 : stdgo.GoInt))) {
                _pub = stdgo.Go.toInterface(_c._peerCertificates[(0 : stdgo.GoInt)].publicKey);
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
        if (_c._config.verifyConnection != null) {
            {
                var _err = (_c._config.verifyConnection(_c._connectionStateLocked()?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return _err;
                };
            };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>), _1 : false };
        }, _ckx = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_ckx)), _msg);
        };
        var __tmp__ = _keyAgreement._processClientKeyExchange(_c._config, _hs._cert, _ckx, _c._vers), _preMasterSecret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        if (_hs._hello._extendedMasterSecret) {
            _c._extMasterSecret = true;
            _hs._masterSecret = stdgo._internal.crypto.tls.Tls__extMasterFromPreMasterSecret._extMasterFromPreMasterSecret(_c._vers, _hs._suite, _preMasterSecret, _hs._finishedHash.sum());
        } else {
            _hs._masterSecret = stdgo._internal.crypto.tls.Tls__masterFromPreMasterSecret._masterFromPreMasterSecret(_c._vers, _hs._suite, _preMasterSecret, _hs._clientHello._random, _hs._hello._random);
        };
        {
            var _err = (_c._config._writeKeyLog(("CLIENT_RANDOM" : stdgo.GoString), _hs._clientHello._random, _hs._masterSecret) : stdgo.Error);
            if (_err != null) {
                _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return _err;
            };
        };
        if (((_c._peerCertificates.length) > (0 : stdgo.GoInt) : Bool)) {
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
            var _sigType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
            var _sigHash:stdgo._internal.crypto.Crypto_Hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_Hash.Hash);
            if ((_c._vers >= (771 : stdgo.GoUInt16) : Bool)) {
                if (!stdgo._internal.crypto.tls.Tls__isSupportedSignatureAlgorithm._isSupportedSignatureAlgorithm(_certVerify._signatureAlgorithm, _certReq._supportedSignatureAlgorithms)) {
                    _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client certificate used with invalid signature algorithm" : stdgo.GoString));
                };
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__typeAndHashFromSignatureScheme._typeAndHashFromSignatureScheme(_certVerify._signatureAlgorithm);
                    _sigType = __tmp__._0;
                    _sigHash = __tmp__._1;
                    _err = __tmp__._2;
                };
                if (_err != null) {
                    return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                };
            } else {
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__legacyTypeAndHashFromPublicKey._legacyTypeAndHashFromPublicKey(_pub);
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
            {
                var _err = (stdgo._internal.crypto.tls.Tls__verifyHandshakeSignature._verifyHandshakeSignature(_sigType, _pub, _sigHash, _signed, _certVerify._signature) : stdgo.Error);
                if (_err != null) {
                    _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_((("tls: invalid signature by the client certificate: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
                };
            };
            {
                var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_certVerify), stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        _hs._finishedHash._discardHandshakeBuffer();
        return (null : stdgo.Error);
    }
    @:keep
    static public function _doResumeHandshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        var _c = _hs._c;
        _hs._hello._cipherSuite = _hs._suite._id;
        _c._cipherSuite = _hs._suite._id;
        _hs._hello._sessionId = _hs._clientHello._sessionId;
        _hs._hello._ticketSupported = true;
        _hs._finishedHash = stdgo._internal.crypto.tls.Tls__newFinishedHash._newFinishedHash(_c._vers, _hs._suite)?.__copy__();
        _hs._finishedHash._discardHandshakeBuffer();
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_hs._clientHello), stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = _hs._c._writeHandshakeRecord(stdgo.Go.asInterface(_hs._hello), stdgo.Go.asInterface((stdgo.Go.setRef(_hs._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __209:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
        _hs._masterSecret = _hs._sessionState._secret;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _checkForResumption( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        var _c = _hs._c;
        if (_c._config.sessionTicketsDisabled) {
            return (null : stdgo.Error);
        };
        var _sessionState:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>);
        if (_c._config.unwrapSession != null) {
            var __tmp__ = _c._config.unwrapSession(_hs._clientHello._sessionTicket, _c._connectionStateLocked()?.__copy__()), _ss:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            if ((_ss == null || (_ss : Dynamic).__nil__)) {
                return (null : stdgo.Error);
            };
            _sessionState = _ss;
        } else {
            var _plaintext = _c._config._decryptTicket(_hs._clientHello._sessionTicket, _c._ticketKeys);
            if (_plaintext == null) {
                return (null : stdgo.Error);
            };
            var __tmp__ = stdgo._internal.crypto.tls.Tls_parseSessionState.parseSessionState(_plaintext), _ss:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return (null : stdgo.Error);
            };
            _sessionState = _ss;
        };
        var _createdAt = (stdgo._internal.time.Time_unix.unix((_sessionState._createdAt : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        if ((_c._config._time().sub(_createdAt?.__copy__()) > (604800000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            return (null : stdgo.Error);
        };
        if (_c._vers != (_sessionState._version)) {
            return (null : stdgo.Error);
        };
        var _cipherSuiteOk = (false : Bool);
        for (__125 => _id in _hs._clientHello._cipherSuites) {
            if (_id == (_sessionState._cipherSuite)) {
                _cipherSuiteOk = true;
                break;
            };
        };
        if (!_cipherSuiteOk) {
            return (null : stdgo.Error);
        };
        var _suite = stdgo._internal.crypto.tls.Tls__selectCipherSuite._selectCipherSuite((new stdgo.Slice<stdgo.GoUInt16>(1, 1, ...[_sessionState._cipherSuite]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>), _c._config._cipherSuites(), _hs._cipherSuiteOk);
        if ((_suite == null || (_suite : Dynamic).__nil__)) {
            return (null : stdgo.Error);
        };
        var _sessionHasClientCerts = ((_sessionState._peerCertificates.length) != ((0 : stdgo.GoInt)) : Bool);
        var _needClientCerts = (stdgo._internal.crypto.tls.Tls__requiresClientCert._requiresClientCert(_c._config.clientAuth) : Bool);
        if ((_needClientCerts && !_sessionHasClientCerts : Bool)) {
            return (null : stdgo.Error);
        };
        if ((_sessionHasClientCerts && (_c._config.clientAuth == (0 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType)) : Bool)) {
            return (null : stdgo.Error);
        };
        if ((_sessionHasClientCerts && _c._config._time().after(_sessionState._peerCertificates[(0 : stdgo.GoInt)].notAfter?.__copy__()) : Bool)) {
            return (null : stdgo.Error);
        };
        if (((_sessionHasClientCerts && (_c._config.clientAuth >= (3 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType) : Bool) : Bool) && (_sessionState._verifiedChains.length == (0 : stdgo.GoInt)) : Bool)) {
            return (null : stdgo.Error);
        };
        if ((!_sessionState._extMasterSecret && _hs._clientHello._extendedMasterSecret : Bool)) {
            return (null : stdgo.Error);
        };
        if ((_sessionState._extMasterSecret && !_hs._clientHello._extendedMasterSecret : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("tls: session supported extended_master_secret but client does not" : stdgo.GoString));
        };
        _c._peerCertificates = _sessionState._peerCertificates;
        _c._ocspResponse = _sessionState._ocspResponse;
        _c._scts = _sessionState._scts;
        _c._verifiedChains = _sessionState._verifiedChains;
        _c._extMasterSecret = _sessionState._extMasterSecret;
        _hs._sessionState = _sessionState;
        _hs._suite = _suite;
        _c._didResume = true;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _cipherSuiteOk( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>):Bool {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        if ((_c._flags & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            if (!_hs._ecdheOk) {
                return false;
            };
            if ((_c._flags & (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                if (!_hs._ecSignOk) {
                    return false;
                };
            } else if (!_hs._rsaSignOk) {
                return false;
            };
        } else if (!_hs._rsaDecryptOk) {
            return false;
        };
        if (((_hs._c._vers < (771 : stdgo.GoUInt16) : Bool) && ((_c._flags & (4 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
            return false;
        };
        return true;
    }
    @:keep
    static public function _pickCipherSuite( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        var _c = _hs._c;
        var _preferenceOrder = stdgo._internal.crypto.tls.Tls__cipherSuitesPreferenceOrder._cipherSuitesPreferenceOrder;
        if ((!stdgo._internal.crypto.tls.Tls__hasAESGCMHardwareSupport._hasAESGCMHardwareSupport || !stdgo._internal.crypto.tls.Tls__aesgcmPreferred._aesgcmPreferred(_hs._clientHello._cipherSuites) : Bool)) {
            _preferenceOrder = stdgo._internal.crypto.tls.Tls__cipherSuitesPreferenceOrderNoAES._cipherSuitesPreferenceOrderNoAES;
        };
        var _configCipherSuites = _c._config._cipherSuites();
        var _preferenceList = (new stdgo.Slice<stdgo.GoUInt16>((0 : stdgo.GoInt).toBasic(), (_configCipherSuites.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        for (__93 => _suiteID in _preferenceOrder) {
            for (__94 => _id in _configCipherSuites) {
                if (_id == (_suiteID)) {
                    _preferenceList = (_preferenceList.__append__(_id));
                    break;
                };
            };
        };
        _hs._suite = stdgo._internal.crypto.tls.Tls__selectCipherSuite._selectCipherSuite(_preferenceList, _hs._clientHello._cipherSuites, _hs._cipherSuiteOk);
        if ((_hs._suite == null || (_hs._suite : Dynamic).__nil__)) {
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: no cipher suite supported by both client and server" : stdgo.GoString));
        };
        _c._cipherSuite = _hs._suite._id;
        for (__150 => _id in _hs._clientHello._cipherSuites) {
            if (_id == ((22016 : stdgo.GoUInt16))) {
                if ((_hs._clientHello._vers < _c._config._maxSupportedVersion(false) : Bool)) {
                    _c._sendAlert((86 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client using inappropriate protocol fallback" : stdgo.GoString));
                };
                break;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _processClientHello( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        var _c = _hs._c;
        _hs._hello = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>);
        _hs._hello._vers = _c._vers;
        var _foundCompression = (false : Bool);
        for (__105 => _compression in _hs._clientHello._compressionMethods) {
            if (_compression == ((0 : stdgo.GoUInt8))) {
                _foundCompression = true;
                break;
            };
        };
        if (!_foundCompression) {
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: client does not support uncompressed connections" : stdgo.GoString));
        };
        _hs._hello._random = (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _serverRandom = _hs._hello._random;
        var _maxVers = (_c._config._maxSupportedVersion(false) : stdgo.GoUInt16);
        if ((((_maxVers >= (771 : stdgo.GoUInt16) : Bool) && (_c._vers < _maxVers : Bool) : Bool) || stdgo._internal.crypto.tls.Tls__testingOnlyForceDowngradeCanary._testingOnlyForceDowngradeCanary : Bool)) {
            if (_c._vers == ((771 : stdgo.GoUInt16))) {
                (_serverRandom.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(stdgo.Go.str("DOWNGRD", 1));
            } else {
                (_serverRandom.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(stdgo.Go.str("DOWNGRD", 0));
            };
            _serverRandom = (_serverRandom.__slice__(0, (24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_c._config._rand(), _serverRandom), __154:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        if ((_hs._clientHello._secureRenegotiation.length) != ((0 : stdgo.GoInt))) {
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: initial handshake had non-empty renegotiation extension" : stdgo.GoString));
        };
        _hs._hello._extendedMasterSecret = _hs._clientHello._extendedMasterSecret;
        _hs._hello._secureRenegotiationSupported = _hs._clientHello._secureRenegotiationSupported;
        _hs._hello._compressionMethod = (0 : stdgo.GoUInt8);
        if (((_hs._clientHello._serverName.length) > (0 : stdgo.GoInt) : Bool)) {
            _c._serverName = _hs._clientHello._serverName?.__copy__();
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls__negotiateALPN._negotiateALPN(_c._config.nextProtos, _hs._clientHello._alpnProtocols, false), _selectedProto:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _c._sendAlert((120 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        _hs._hello._alpnProtocol = _selectedProto?.__copy__();
        _c._clientProtocol = _selectedProto?.__copy__();
        {
            var __tmp__ = _c._config._getCertificate(stdgo._internal.crypto.tls.Tls__clientHelloInfo._clientHelloInfo(_hs._ctx, _c, _hs._clientHello));
            _hs._cert = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.crypto.tls.Tls__errNoCertificates._errNoCertificates))) {
                _c._sendAlert((112 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            } else {
                _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            };
            return _err;
        };
        if (_hs._clientHello._scts) {
            _hs._hello._scts = _hs._cert.signedCertificateTimestamps;
        };
        _hs._ecdheOk = stdgo._internal.crypto.tls.Tls__supportsECDHE._supportsECDHE(_c._config, _hs._clientHello._supportedCurves, _hs._clientHello._supportedPoints);
        if ((_hs._ecdheOk && ((_hs._clientHello._supportedPoints.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _hs._hello._supportedPoints = (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_hs._cert.privateKey : stdgo._internal.crypto.Crypto_Signer.Signer)) : stdgo._internal.crypto.Crypto_Signer.Signer), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.Crypto_Signer.Signer), _1 : false };
            }, _priv = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    final __type__ = _priv.public_();
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>))) {
                        _hs._ecSignOk = true;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey))) {
                        _hs._ecSignOk = true;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>))) {
                        _hs._rsaSignOk = true;
                    } else {
                        _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: unsupported signing key type (%T)" : stdgo.GoString), stdgo.Go.toInterface(_priv.public_()));
                    };
                };
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_hs._cert.privateKey : stdgo._internal.crypto.Crypto_Decrypter.Decrypter)) : stdgo._internal.crypto.Crypto_Decrypter.Decrypter), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.Crypto_Decrypter.Decrypter), _1 : false };
            }, _priv = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    final __type__ = _priv.public_();
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>))) {
                        _hs._rsaDecryptOk = true;
                    } else {
                        _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: unsupported decryption key type (%T)" : stdgo.GoString), stdgo.Go.toInterface(_priv.public_()));
                    };
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _handshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        var _c = _hs._c;
        {
            var _err = (_hs._processClientHello() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _c._buffering = true;
        {
            var _err = (_hs._checkForResumption() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if ((_hs._sessionState != null && ((_hs._sessionState : Dynamic).__nil__ == null || !(_hs._sessionState : Dynamic).__nil__))) {
            {
                var _err = (_hs._doResumeHandshake() : stdgo.Error);
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
                var _err = (_hs._sendSessionTicket() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err = (_hs._sendFinished((_c._serverFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = _c._flush(), __153:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            _c._clientFinishedIsFirst = false;
            {
                var _err = (_hs._readFinished((null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        } else {
            {
                var _err = (_hs._pickCipherSuite() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
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
                var _err = (_hs._readFinished((_c._clientFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            _c._clientFinishedIsFirst = true;
            _c._buffering = true;
            {
                var _err = (_hs._sendSessionTicket() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err = (_hs._sendFinished((null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = _c._flush(), __185:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        _c._ekm = stdgo._internal.crypto.tls.Tls__ekmFromMasterSecret._ekmFromMasterSecret(_c._vers, _hs._suite, _hs._masterSecret, _hs._clientHello._random, _hs._hello._random);
        _c._isHandshakeComplete.store(true);
        return (null : stdgo.Error);
    }
}
