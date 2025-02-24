package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_clientHandshakeState_asInterface) class T_clientHandshakeState_static_extension {
    @:keep
    @:tdfield
    static public function _sendFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>, _out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        {
            var _err = (@:check2r _c._writeChangeCipherRecord() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _finished = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>);
        (@:checkr _finished ?? throw "null pointer dereference")._verifyData = (@:checkr _hs ?? throw "null pointer dereference")._finishedHash._clientSum((@:checkr _hs ?? throw "null pointer dereference")._masterSecret);
        {
            var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_finished), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>))), __121:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        _out.__copyTo__((@:checkr _finished ?? throw "null pointer dereference")._verifyData);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _saveSessionTicket( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState> = _hs;
        if ((@:checkr _hs ?? throw "null pointer dereference")._ticket == null) {
            return (null : stdgo.Error);
        };
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        var _cacheKey = (@:check2r _c._clientSessionCacheKey()?.__copy__() : stdgo.GoString);
        if (_cacheKey == ((stdgo.Go.str() : stdgo.GoString))) {
            return (null : stdgo.Error);
        };
        var __tmp__ = @:check2r _c._sessionState(), _session:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        (@:checkr _session ?? throw "null pointer dereference")._secret = (@:checkr _hs ?? throw "null pointer dereference")._masterSecret;
        var _cs = (stdgo.Go.setRef(({ _ticket : (@:checkr _hs ?? throw "null pointer dereference")._ticket, _session : _session } : stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>);
        (@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientSessionCache.put(_cacheKey?.__copy__(), _cs);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readSessionTicket( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState> = _hs;
        if (!(@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._ticketSupported) {
            return (null : stdgo.Error);
        };
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        if (!(@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._ticketSupported) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent unrequested session ticket" : stdgo.GoString));
        };
        var __tmp__ = @:check2r _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>))), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsg.T_newSessionTicketMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsg.T_newSessionTicketMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsg.T_newSessionTicketMsg>), _1 : false };
        }, _sessionTicketMsg = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_sessionTicketMsg)), _msg);
        };
        (@:checkr _hs ?? throw "null pointer dereference")._ticket = (@:checkr _sessionTicketMsg ?? throw "null pointer dereference")._ticket;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>, _out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        {
            var _err = (@:check2r _c._readChangeCipherSpec() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = @:check2r _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>), _1 : false };
        }, _serverFinished = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_serverFinished)), _msg);
        };
        var _verify = (@:checkr _hs ?? throw "null pointer dereference")._finishedHash._serverSum((@:checkr _hs ?? throw "null pointer dereference")._masterSecret);
        if (((_verify.length != ((@:checkr _serverFinished ?? throw "null pointer dereference")._verifyData.length)) || (stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_verify, (@:checkr _serverFinished ?? throw "null pointer dereference")._verifyData) != (1 : stdgo.GoInt)) : Bool)) {
            @:check2r _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server\'s Finished message was incorrect" : stdgo.GoString));
        };
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface(_serverFinished), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _out.__copyTo__(_verify);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processServerHello( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        {
            var _err = (@:check2r _hs._pickCipherSuite() : stdgo.Error);
            if (_err != null) {
                return { _0 : false, _1 : _err };
            };
        };
        if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._compressionMethod != ((0 : stdgo.GoUInt8))) {
            @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: server selected unsupported compression format" : stdgo.GoString)) };
        };
        if ((((@:checkr _c ?? throw "null pointer dereference")._handshakes == (0 : stdgo.GoInt)) && (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._secureRenegotiationSupported : Bool)) {
            (@:checkr _c ?? throw "null pointer dereference")._secureRenegotiation = true;
            if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._secureRenegotiation.length) != ((0 : stdgo.GoInt))) {
                @:check2r _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: initial handshake had non-empty renegotiation extension" : stdgo.GoString)) };
            };
        };
        if ((((@:checkr _c ?? throw "null pointer dereference")._handshakes > (0 : stdgo.GoInt) : Bool) && (@:checkr _c ?? throw "null pointer dereference")._secureRenegotiation : Bool)) {
            var _expectedSecureRenegotiation:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(24, 24).__setNumber32__();
            (_expectedSecureRenegotiation.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _c ?? throw "null pointer dereference")._clientFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            (_expectedSecureRenegotiation.__slice__((12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _c ?? throw "null pointer dereference")._serverFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            if (!stdgo._internal.bytes.Bytes_equal.equal((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._secureRenegotiation, (_expectedSecureRenegotiation.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))) {
                @:check2r _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: incorrect renegotiation extension contents" : stdgo.GoString)) };
            };
        };
        {
            var _err = (stdgo._internal.crypto.tls.Tls__checkalpn._checkALPN((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._alpnProtocols, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._alpnProtocol?.__copy__(), false) : stdgo.Error);
            if (_err != null) {
                @:check2r _c._sendAlert((110 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return { _0 : false, _1 : _err };
            };
        };
        (@:checkr _c ?? throw "null pointer dereference")._clientProtocol = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._alpnProtocol?.__copy__();
        (@:checkr _c ?? throw "null pointer dereference")._scts = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._scts;
        if (!@:check2r _hs._serverResumedSession()) {
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._version != ((@:checkr _c ?? throw "null pointer dereference")._vers)) {
            @:check2r _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: server resumed a session with a different version" : stdgo.GoString)) };
        };
        if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._cipherSuite != ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id)) {
            @:check2r _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: server resumed a session with a different cipher suite" : stdgo.GoString)) };
        };
        if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._extMasterSecret != ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._extendedMasterSecret)) {
            @:check2r _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: server resumed a session with a different EMS extension" : stdgo.GoString)) };
        };
        (@:checkr _hs ?? throw "null pointer dereference")._masterSecret = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._secret;
        (@:checkr _c ?? throw "null pointer dereference")._extMasterSecret = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._extMasterSecret;
        (@:checkr _c ?? throw "null pointer dereference")._peerCertificates = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._peerCertificates;
        (@:checkr _c ?? throw "null pointer dereference")._activeCertHandles = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._c ?? throw "null pointer dereference")._activeCertHandles;
        (@:checkr _c ?? throw "null pointer dereference")._verifiedChains = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._verifiedChains;
        (@:checkr _c ?? throw "null pointer dereference")._ocspResponse = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._ocspResponse;
        if ((((@:checkr _c ?? throw "null pointer dereference")._scts.length == (0 : stdgo.GoInt)) && ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._scts.length != (0 : stdgo.GoInt)) : Bool)) {
            (@:checkr _c ?? throw "null pointer dereference")._scts = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._scts;
        };
        return { _0 : true, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _serverResumedSession( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>):Bool {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState> = _hs;
        return ((((@:checkr _hs ?? throw "null pointer dereference")._session != null && (((@:checkr _hs ?? throw "null pointer dereference")._session : Dynamic).__nil__ == null || !((@:checkr _hs ?? throw "null pointer dereference")._session : Dynamic).__nil__)) && (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._sessionId != null : Bool) && stdgo._internal.bytes.Bytes_equal.equal((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._sessionId, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._sessionId) : Bool);
    }
    @:keep
    @:tdfield
    static public function _establishKeys( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        var __tmp__ = stdgo._internal.crypto.tls.Tls__keysfrommastersecret._keysFromMasterSecret((@:checkr _c ?? throw "null pointer dereference")._vers, (@:checkr _hs ?? throw "null pointer dereference")._suite, (@:checkr _hs ?? throw "null pointer dereference")._masterSecret, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._random, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._random, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._macLen, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._keyLen, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._ivLen), _clientMAC:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _serverMAC:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _clientKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._2, _serverKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._3, _clientIV:stdgo.Slice<stdgo.GoUInt8> = __tmp__._4, _serverIV:stdgo.Slice<stdgo.GoUInt8> = __tmp__._5;
        var __0:stdgo.AnyInterface = (null : stdgo.AnyInterface), __1:stdgo.AnyInterface = (null : stdgo.AnyInterface);
var _serverCipher = __1, _clientCipher = __0;
        var __0:stdgo._internal.hash.Hash_hash.Hash = (null : stdgo._internal.hash.Hash_hash.Hash), __1:stdgo._internal.hash.Hash_hash.Hash = (null : stdgo._internal.hash.Hash_hash.Hash);
var _serverHash = __1, _clientHash = __0;
        if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._cipher != null) {
            _clientCipher = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._cipher(_clientKey, _clientIV, false);
            _clientHash = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._mac(_clientMAC);
            _serverCipher = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._cipher(_serverKey, _serverIV, true);
            _serverHash = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._mac(_serverMAC);
        } else {
            _clientCipher = stdgo.Go.toInterface((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._aead(_clientKey, _clientIV));
            _serverCipher = stdgo.Go.toInterface((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._aead(_serverKey, _serverIV));
        };
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._prepareCipherSpec((@:checkr _c ?? throw "null pointer dereference")._vers, _serverCipher, _serverHash);
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._out._prepareCipherSpec((@:checkr _c ?? throw "null pointer dereference")._vers, _clientCipher, _clientHash);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _doFullHandshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        var __tmp__ = @:check2r _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>))), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg>), _1 : false };
        }, _certMsg = __tmp__._0, _ok = __tmp__._1;
        if ((!_ok || ((@:checkr _certMsg ?? throw "null pointer dereference")._certificates.length == (0 : stdgo.GoInt)) : Bool)) {
            @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_certMsg)), _msg);
        };
        {
            var __tmp__ = @:check2r _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>)));
            _msg = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatestatusmsg.T_certificateStatusMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatestatusmsg.T_certificateStatusMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatestatusmsg.T_certificateStatusMsg>), _1 : false };
        }, _cs = __tmp__._0, _ok = __tmp__._1;
        if (_ok) {
            if (!(@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._ocspStapling) {
                @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: received unexpected CertificateStatus message" : stdgo.GoString));
            };
            (@:checkr _c ?? throw "null pointer dereference")._ocspResponse = (@:checkr _cs ?? throw "null pointer dereference")._response;
            {
                var __tmp__ = @:check2r _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>)));
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        if ((@:checkr _c ?? throw "null pointer dereference")._handshakes == ((0 : stdgo.GoInt))) {
            {
                var _err = (@:check2r _c._verifyServerCertificate((@:checkr _certMsg ?? throw "null pointer dereference")._certificates) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        } else {
            if (!stdgo._internal.bytes.Bytes_equal.equal((@:checkr (@:checkr _c ?? throw "null pointer dereference")._peerCertificates[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").raw, (@:checkr _certMsg ?? throw "null pointer dereference")._certificates[(0 : stdgo.GoInt)])) {
                @:check2r _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: server\'s identity changed during renegotiation" : stdgo.GoString));
            };
        };
        var _keyAgreement = ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._ka((@:checkr _c ?? throw "null pointer dereference")._vers) : stdgo._internal.crypto.tls.Tls_t_keyagreement.T_keyAgreement);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg>), _1 : false };
        }, _skx = __tmp__._0, _ok = __tmp__._1;
        if (_ok) {
            _err = _keyAgreement._processServerKeyExchange((@:checkr _c ?? throw "null pointer dereference")._config, (@:checkr _hs ?? throw "null pointer dereference")._hello, (@:checkr _hs ?? throw "null pointer dereference")._serverHello, (@:checkr _c ?? throw "null pointer dereference")._peerCertificates[(0 : stdgo.GoInt)], _skx);
            if (_err != null) {
                @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return _err;
            };
            {
                var __tmp__ = @:check2r _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>)));
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        var _chainToSend:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>);
        var _certRequested:Bool = false;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsg.T_certificateRequestMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsg.T_certificateRequestMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsg.T_certificateRequestMsg>), _1 : false };
        }, _certReq = __tmp__._0, _ok = __tmp__._1;
        if (_ok) {
            _certRequested = true;
            var _cri = stdgo._internal.crypto.tls.Tls__certificaterequestinfofrommsg._certificateRequestInfoFromMsg((@:checkr _hs ?? throw "null pointer dereference")._ctx, (@:checkr _c ?? throw "null pointer dereference")._vers, _certReq);
            {
                {
                    var __tmp__ = @:check2r _c._getClientCertificate(_cri);
                    _chainToSend = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return _err;
                };
            };
            {
                var __tmp__ = @:check2r _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>)));
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellodonemsg.T_serverHelloDoneMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellodonemsg.T_serverHelloDoneMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellodonemsg.T_serverHelloDoneMsg>), _1 : false };
        }, _shd = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_shd)), _msg);
        };
        if (_certRequested) {
            _certMsg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg>);
            (@:checkr _certMsg ?? throw "null pointer dereference")._certificates = (@:checkr _chainToSend ?? throw "null pointer dereference").certificate;
            {
                var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_certMsg), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>))), __153:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var __tmp__ = _keyAgreement._generateClientKeyExchange((@:checkr _c ?? throw "null pointer dereference")._config, (@:checkr _hs ?? throw "null pointer dereference")._hello, (@:checkr _c ?? throw "null pointer dereference")._peerCertificates[(0 : stdgo.GoInt)]), _preMasterSecret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ckx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return _err;
        };
        if ((_ckx != null && ((_ckx : Dynamic).__nil__ == null || !(_ckx : Dynamic).__nil__))) {
            {
                var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_ckx), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>))), __177:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._extendedMasterSecret) {
            (@:checkr _c ?? throw "null pointer dereference")._extMasterSecret = true;
            (@:checkr _hs ?? throw "null pointer dereference")._masterSecret = stdgo._internal.crypto.tls.Tls__extmasterfrompremastersecret._extMasterFromPreMasterSecret((@:checkr _c ?? throw "null pointer dereference")._vers, (@:checkr _hs ?? throw "null pointer dereference")._suite, _preMasterSecret, (@:checkr _hs ?? throw "null pointer dereference")._finishedHash.sum());
        } else {
            (@:checkr _hs ?? throw "null pointer dereference")._masterSecret = stdgo._internal.crypto.tls.Tls__masterfrompremastersecret._masterFromPreMasterSecret((@:checkr _c ?? throw "null pointer dereference")._vers, (@:checkr _hs ?? throw "null pointer dereference")._suite, _preMasterSecret, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._random, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._random);
        };
        {
            var _err = (@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._writeKeyLog(("CLIENT_RANDOM" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._random, (@:checkr _hs ?? throw "null pointer dereference")._masterSecret) : stdgo.Error);
            if (_err != null) {
                @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_((("tls: failed to write to key log: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
        if (((_chainToSend != null && ((_chainToSend : Dynamic).__nil__ == null || !(_chainToSend : Dynamic).__nil__)) && (((@:checkr _chainToSend ?? throw "null pointer dereference").certificate.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _certVerify = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg() : stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>);
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert(((@:checkr _chainToSend ?? throw "null pointer dereference").privateKey : stdgo._internal.crypto.Crypto_signer.Signer)) : stdgo._internal.crypto.Crypto_signer.Signer), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.Crypto_signer.Signer), _1 : false };
            }, _key = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: client certificate private key of type %T does not implement crypto.Signer" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _chainToSend ?? throw "null pointer dereference").privateKey));
            };
            var _sigType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
            var _sigHash:stdgo._internal.crypto.Crypto_hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash);
            if (((@:checkr _c ?? throw "null pointer dereference")._vers >= (771 : stdgo.GoUInt16) : Bool)) {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__selectsignaturescheme._selectSignatureScheme((@:checkr _c ?? throw "null pointer dereference")._vers, _chainToSend, (@:checkr _certReq ?? throw "null pointer dereference")._supportedSignatureAlgorithms), _signatureAlgorithm:stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return _err;
                };
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__typeandhashfromsignaturescheme._typeAndHashFromSignatureScheme(_signatureAlgorithm);
                    _sigType = @:tmpset0 __tmp__._0;
                    _sigHash = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                if (_err != null) {
                    return @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                };
                (@:checkr _certVerify ?? throw "null pointer dereference")._hasSignatureAlgorithm = true;
                (@:checkr _certVerify ?? throw "null pointer dereference")._signatureAlgorithm = _signatureAlgorithm;
            } else {
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__legacytypeandhashfrompublickey._legacyTypeAndHashFromPublicKey(_key.public_());
                    _sigType = @:tmpset0 __tmp__._0;
                    _sigHash = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                if (_err != null) {
                    @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return _err;
                };
            };
            var _signed = (@:checkr _hs ?? throw "null pointer dereference")._finishedHash._hashForClientCertificate(_sigType, _sigHash);
            var _signOpts = (stdgo.Go.asInterface(_sigHash) : stdgo._internal.crypto.Crypto_signeropts.SignerOpts);
            if (_sigType == ((226 : stdgo.GoUInt8))) {
                _signOpts = stdgo.Go.asInterface((stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt), hash : _sigHash } : stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>));
            };
            {
                var __tmp__ = _key.sign(@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._rand(), _signed, _signOpts);
                (@:checkr _certVerify ?? throw "null pointer dereference")._signature = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return _err;
            };
            {
                var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_certVerify), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>))), __241:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        @:check2 (@:checkr _hs ?? throw "null pointer dereference")._finishedHash._discardHandshakeBuffer();
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _pickCipherSuite( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState> = _hs;
        {
            (@:checkr _hs ?? throw "null pointer dereference")._suite = stdgo._internal.crypto.tls.Tls__mutualciphersuite._mutualCipherSuite((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._cipherSuites, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._cipherSuite);
            if (((@:checkr _hs ?? throw "null pointer dereference")._suite == null || ((@:checkr _hs ?? throw "null pointer dereference")._suite : Dynamic).__nil__)) {
                @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: server chose an unconfigured cipher suite" : stdgo.GoString));
            };
        };
        (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._c ?? throw "null pointer dereference")._cipherSuite = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _handshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        var __tmp__ = @:check2r _hs._processServerHello(), _isResume:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        (@:checkr _hs ?? throw "null pointer dereference")._finishedHash = stdgo._internal.crypto.tls.Tls__newfinishedhash._newFinishedHash((@:checkr _c ?? throw "null pointer dereference")._vers, (@:checkr _hs ?? throw "null pointer dereference")._suite)?.__copy__();
        if ((_isResume || ((((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").certificates.length == (0 : stdgo.GoInt)) && ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").getClientCertificate == null) : Bool)) : Bool)) {
            @:check2 (@:checkr _hs ?? throw "null pointer dereference")._finishedHash._discardHandshakeBuffer();
        };
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw "null pointer dereference")._hello), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw "null pointer dereference")._serverHello), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        (@:checkr _c ?? throw "null pointer dereference")._buffering = true;
        (@:checkr _c ?? throw "null pointer dereference")._didResume = _isResume;
        if (_isResume) {
            {
                var _err = (@:check2r _hs._establishKeys() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err = (@:check2r _hs._readSessionTicket() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err = (@:check2r _hs._readFinished(((@:checkr _c ?? throw "null pointer dereference")._serverFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            (@:checkr _c ?? throw "null pointer dereference")._clientFinishedIsFirst = false;
            if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").verifyConnection != null) {
                {
                    var _err = ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").verifyConnection(@:check2r _c._connectionStateLocked()?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                        return _err;
                    };
                };
            };
            {
                var _err = (@:check2r _hs._sendFinished(((@:checkr _c ?? throw "null pointer dereference")._clientFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = @:check2r _c._flush(), __253:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        } else {
            {
                var _err = (@:check2r _hs._doFullHandshake() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err = (@:check2r _hs._establishKeys() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err = (@:check2r _hs._sendFinished(((@:checkr _c ?? throw "null pointer dereference")._clientFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = @:check2r _c._flush(), __217:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            (@:checkr _c ?? throw "null pointer dereference")._clientFinishedIsFirst = true;
            {
                var _err = (@:check2r _hs._readSessionTicket() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err = (@:check2r _hs._readFinished(((@:checkr _c ?? throw "null pointer dereference")._serverFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        {
            var _err = (@:check2r _hs._saveSessionTicket() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        (@:checkr _c ?? throw "null pointer dereference")._ekm = stdgo._internal.crypto.tls.Tls__ekmfrommastersecret._ekmFromMasterSecret((@:checkr _c ?? throw "null pointer dereference")._vers, (@:checkr _hs ?? throw "null pointer dereference")._suite, (@:checkr _hs ?? throw "null pointer dereference")._masterSecret, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._random, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._random);
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._isHandshakeComplete.store(true);
        return (null : stdgo.Error);
    }
}
