package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_serverHandshakeStateTLS13_asInterface) class T_serverHandshakeStateTLS13_static_extension {
    @:keep
    @:tdfield
    static public function _readClientFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        var __tmp__ = @:check2r _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>), _1 : false };
        }, _finished = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_finished)), _msg);
        };
        if (!stdgo._internal.crypto.hmac.Hmac_equal.equal((@:checkr _hs ?? throw "null pointer dereference")._clientFinished, (@:checkr _finished ?? throw "null pointer dereference")._verifyData)) {
            @:check2r _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: invalid client finished hash" : stdgo.GoString));
        };
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setTrafficSecret((@:checkr _hs ?? throw "null pointer dereference")._suite, (3 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr _hs ?? throw "null pointer dereference")._trafficSecret);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readClientCertificate( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        if (!@:check2r _hs._requestClientCert()) {
            if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").verifyConnection != null) {
                {
                    var _err = ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").verifyConnection(@:check2r _c._connectionStateLocked()?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                        return _err;
                    };
                };
            };
            return (null : stdgo.Error);
        };
        var __tmp__ = @:check2r _c._readHandshake((@:checkr _hs ?? throw "null pointer dereference")._transcript), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13>), _1 : false };
        }, _certMsg = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_certMsg)), _msg);
        };
        {
            var _err = (@:check2r _c._processCertsFromClient((@:checkr _certMsg ?? throw "null pointer dereference")._certificate?.__copy__()) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").verifyConnection != null) {
            {
                var _err = ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").verifyConnection(@:check2r _c._connectionStateLocked()?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    @:check2r _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return _err;
                };
            };
        };
        if (((@:checkr _certMsg ?? throw "null pointer dereference")._certificate.certificate.length) != ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = @:check2r _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash));
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>), _1 : false };
            }, _certVerify = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_certVerify)), _msg);
            };
            if (!stdgo._internal.crypto.tls.Tls__issupportedsignaturealgorithm._isSupportedSignatureAlgorithm((@:checkr _certVerify ?? throw "null pointer dereference")._signatureAlgorithm, stdgo._internal.crypto.tls.Tls__supportedsignaturealgorithms._supportedSignatureAlgorithms())) {
                @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: client certificate used with invalid signature algorithm" : stdgo.GoString));
            };
            var __tmp__ = stdgo._internal.crypto.tls.Tls__typeandhashfromsignaturescheme._typeAndHashFromSignatureScheme((@:checkr _certVerify ?? throw "null pointer dereference")._signatureAlgorithm), _sigType:stdgo.GoUInt8 = __tmp__._0, _sigHash:stdgo._internal.crypto.Crypto_hash.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            };
            if (((_sigType == (225 : stdgo.GoUInt8)) || (_sigHash == (3u32 : stdgo._internal.crypto.Crypto_hash.Hash)) : Bool)) {
                @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: client certificate used with invalid signature algorithm" : stdgo.GoString));
            };
            var _signed = stdgo._internal.crypto.tls.Tls__signedmessage._signedMessage(_sigHash, (stdgo.Go.str("TLS 1.3, client CertificateVerify", 0) : stdgo.GoString)?.__copy__(), (@:checkr _hs ?? throw "null pointer dereference")._transcript);
            {
                var _err = (stdgo._internal.crypto.tls.Tls__verifyhandshakesignature._verifyHandshakeSignature(_sigType, stdgo.Go.toInterface((@:checkr (@:checkr _c ?? throw "null pointer dereference")._peerCertificates[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").publicKey), _sigHash, _signed, (@:checkr _certVerify ?? throw "null pointer dereference")._signature) : stdgo.Error);
                if (_err != null) {
                    @:check2r _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_((("tls: invalid signature by the client certificate: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
                };
            };
            {
                var _err = (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface(_certVerify), (@:checkr _hs ?? throw "null pointer dereference")._transcript) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        {
            var _err = (@:check2r _hs._sendSessionTickets() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _sendSessionTickets( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        (@:checkr _hs ?? throw "null pointer dereference")._clientFinished = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._finishedHash((@:checkr _c ?? throw "null pointer dereference")._in._trafficSecret, (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        var _finishedMsg = (stdgo.Go.setRef(({ _verifyData : (@:checkr _hs ?? throw "null pointer dereference")._clientFinished } : stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>);
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface(_finishedMsg), (@:checkr _hs ?? throw "null pointer dereference")._transcript) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        (@:checkr _c ?? throw "null pointer dereference")._resumptionSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret((@:checkr _hs ?? throw "null pointer dereference")._masterSecret, ("res master" : stdgo.GoString), (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        if (!@:check2r _hs._shouldSendSessionTickets()) {
            return (null : stdgo.Error);
        };
        return @:check2r _c._sendSessionTicket(false);
    }
    @:keep
    @:tdfield
    static public function _shouldSendSessionTickets( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):Bool {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        if ((@:checkr (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").sessionTicketsDisabled) {
            return false;
        };
        if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._c ?? throw "null pointer dereference")._quic != null && (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._c ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
            return false;
        };
        for (__109 => _pskMode in (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._pskModes) {
            if (_pskMode == ((1 : stdgo.GoUInt8))) {
                return true;
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _sendServerFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        var _finished = (stdgo.Go.setRef(({ _verifyData : @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._finishedHash((@:checkr _c ?? throw "null pointer dereference")._out._trafficSecret, (@:checkr _hs ?? throw "null pointer dereference")._transcript) } : stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>);
        {
            var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_finished), (@:checkr _hs ?? throw "null pointer dereference")._transcript), __121:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        (@:checkr _hs ?? throw "null pointer dereference")._masterSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._extract((null : stdgo.Slice<stdgo.GoUInt8>), @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret((@:checkr _hs ?? throw "null pointer dereference")._handshakeSecret, ("derived" : stdgo.GoString), (null : stdgo._internal.hash.Hash_hash.Hash)));
        (@:checkr _hs ?? throw "null pointer dereference")._trafficSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret((@:checkr _hs ?? throw "null pointer dereference")._masterSecret, ("c ap traffic" : stdgo.GoString), (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        var _serverSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret((@:checkr _hs ?? throw "null pointer dereference")._masterSecret, ("s ap traffic" : stdgo.GoString), (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._out._setTrafficSecret((@:checkr _hs ?? throw "null pointer dereference")._suite, (3 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), _serverSecret);
        if (((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
            if (@:check2 (@:checkr _c ?? throw "null pointer dereference")._hand.len() != ((0 : stdgo.GoInt))) {
                @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            };
            @:check2r _c._quicSetWriteSecret((3 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id, _serverSecret);
        };
        var _err = (@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._writeKeyLog(("CLIENT_TRAFFIC_SECRET_0" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._random, (@:checkr _hs ?? throw "null pointer dereference")._trafficSecret) : stdgo.Error);
        if (_err != null) {
            @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return _err;
        };
        _err = @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._writeKeyLog(("SERVER_TRAFFIC_SECRET_0" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._random, _serverSecret);
        if (_err != null) {
            @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return _err;
        };
        (@:checkr _c ?? throw "null pointer dereference")._ekm = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._exportKeyingMaterial((@:checkr _hs ?? throw "null pointer dereference")._masterSecret, (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        if (!@:check2r _hs._requestClientCert()) {
            {
                var _err = (@:check2r _hs._sendSessionTickets() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _sendServerCertificate( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        if ((@:checkr _hs ?? throw "null pointer dereference")._usingPSK) {
            return (null : stdgo.Error);
        };
        if (@:check2r _hs._requestClientCert()) {
            var _certReq = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13>);
            (@:checkr _certReq ?? throw "null pointer dereference")._ocspStapling = true;
            (@:checkr _certReq ?? throw "null pointer dereference")._scts = true;
            (@:checkr _certReq ?? throw "null pointer dereference")._supportedSignatureAlgorithms = stdgo._internal.crypto.tls.Tls__supportedsignaturealgorithms._supportedSignatureAlgorithms();
            if (((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientCAs != null && (((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientCAs : Dynamic).__nil__ == null || !((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientCAs : Dynamic).__nil__))) {
                (@:checkr _certReq ?? throw "null pointer dereference")._certificateAuthorities = @:check2r (@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientCAs.subjects();
            };
            {
                var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_certReq), (@:checkr _hs ?? throw "null pointer dereference")._transcript), __125:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _certMsg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13>);
        (@:checkr _certMsg ?? throw "null pointer dereference")._certificate = ((@:checkr _hs ?? throw "null pointer dereference")._cert : stdgo._internal.crypto.tls.Tls_certificate.Certificate)?.__copy__();
        (@:checkr _certMsg ?? throw "null pointer dereference")._scts = ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._scts && (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._cert ?? throw "null pointer dereference").signedCertificateTimestamps.length) > (0 : stdgo.GoInt) : Bool) : Bool);
        (@:checkr _certMsg ?? throw "null pointer dereference")._ocspStapling = ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._ocspStapling && (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._cert ?? throw "null pointer dereference").oCSPStaple.length) > (0 : stdgo.GoInt) : Bool) : Bool);
        {
            var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_certMsg), (@:checkr _hs ?? throw "null pointer dereference")._transcript), __153:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _certVerifyMsg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>);
        (@:checkr _certVerifyMsg ?? throw "null pointer dereference")._hasSignatureAlgorithm = true;
        (@:checkr _certVerifyMsg ?? throw "null pointer dereference")._signatureAlgorithm = (@:checkr _hs ?? throw "null pointer dereference")._sigAlg;
        var __tmp__ = stdgo._internal.crypto.tls.Tls__typeandhashfromsignaturescheme._typeAndHashFromSignatureScheme((@:checkr _hs ?? throw "null pointer dereference")._sigAlg), _sigType:stdgo.GoUInt8 = __tmp__._0, _sigHash:stdgo._internal.crypto.Crypto_hash.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
        };
        var _signed = stdgo._internal.crypto.tls.Tls__signedmessage._signedMessage(_sigHash, (stdgo.Go.str("TLS 1.3, server CertificateVerify", 0) : stdgo.GoString)?.__copy__(), (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        var _signOpts = (stdgo.Go.asInterface(_sigHash) : stdgo._internal.crypto.Crypto_signeropts.SignerOpts);
        if (_sigType == ((226 : stdgo.GoUInt8))) {
            _signOpts = stdgo.Go.asInterface((stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt), hash : _sigHash } : stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>));
        };
        var __tmp__ = (stdgo.Go.typeAssert(((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._cert ?? throw "null pointer dereference").privateKey : stdgo._internal.crypto.Crypto_signer.Signer)) : stdgo._internal.crypto.Crypto_signer.Signer).sign(@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._rand(), _signed, _signOpts), _sig:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            var _public = ((stdgo.Go.typeAssert(((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._cert ?? throw "null pointer dereference").privateKey : stdgo._internal.crypto.Crypto_signer.Signer)) : stdgo._internal.crypto.Crypto_signer.Signer).public_() : stdgo._internal.crypto.Crypto_publickey.PublicKey);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_public : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : false };
                }, _rsaKey = __tmp__._0, _ok = __tmp__._1;
                if (((_ok && _sigType == ((226 : stdgo.GoUInt8)) : Bool) && ((@:check2r (@:checkr _rsaKey ?? throw "null pointer dereference").n.bitLen() / (8 : stdgo.GoInt) : stdgo.GoInt) < ((_sigHash.size() * (2 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                    @:check2r _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                } else {
                    @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                };
            };
            return stdgo._internal.errors.Errors_new_.new_((("tls: failed to sign handshake: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
        };
        (@:checkr _certVerifyMsg ?? throw "null pointer dereference")._signature = _sig;
        {
            var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_certVerifyMsg), (@:checkr _hs ?? throw "null pointer dereference")._transcript), __222:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _requestClientCert( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):Bool {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        return (((@:checkr (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientAuth >= (1 : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType) : Bool) && !(@:checkr _hs ?? throw "null pointer dereference")._usingPSK : Bool);
    }
    @:keep
    @:tdfield
    static public function _sendServerParameters( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw "null pointer dereference")._clientHello), (@:checkr _hs ?? throw "null pointer dereference")._transcript) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface((@:checkr _hs ?? throw "null pointer dereference")._hello), (@:checkr _hs ?? throw "null pointer dereference")._transcript), __121:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (@:check2r _hs._sendDummyChangeCipherSpec() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _earlySecret = (@:checkr _hs ?? throw "null pointer dereference")._earlySecret;
        if (_earlySecret == null) {
            _earlySecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._extract((null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>));
        };
        (@:checkr _hs ?? throw "null pointer dereference")._handshakeSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._extract((@:checkr _hs ?? throw "null pointer dereference")._sharedKey, @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret(_earlySecret, ("derived" : stdgo.GoString), (null : stdgo._internal.hash.Hash_hash.Hash)));
        var _clientSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret((@:checkr _hs ?? throw "null pointer dereference")._handshakeSecret, ("c hs traffic" : stdgo.GoString), (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setTrafficSecret((@:checkr _hs ?? throw "null pointer dereference")._suite, (2 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), _clientSecret);
        var _serverSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret((@:checkr _hs ?? throw "null pointer dereference")._handshakeSecret, ("s hs traffic" : stdgo.GoString), (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._out._setTrafficSecret((@:checkr _hs ?? throw "null pointer dereference")._suite, (2 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), _serverSecret);
        if (((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
            if (@:check2 (@:checkr _c ?? throw "null pointer dereference")._hand.len() != ((0 : stdgo.GoInt))) {
                @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            };
            @:check2r _c._quicSetWriteSecret((2 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id, _serverSecret);
            @:check2r _c._quicSetReadSecret((2 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id, _clientSecret);
        };
        var _err = (@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._writeKeyLog(("CLIENT_HANDSHAKE_TRAFFIC_SECRET" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._random, _clientSecret) : stdgo.Error);
        if (_err != null) {
            @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return _err;
        };
        _err = @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._writeKeyLog(("SERVER_HANDSHAKE_TRAFFIC_SECRET" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._random, _serverSecret);
        if (_err != null) {
            @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return _err;
        };
        var _encryptedExtensions = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg>);
        (@:checkr _encryptedExtensions ?? throw "null pointer dereference")._alpnProtocol = (@:checkr _c ?? throw "null pointer dereference")._clientProtocol?.__copy__();
        if (((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
            var __tmp__ = @:check2r _c._quicGetTransportParameters(), _p:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            (@:checkr _encryptedExtensions ?? throw "null pointer dereference")._quicTransportParameters = _p;
            (@:checkr _encryptedExtensions ?? throw "null pointer dereference")._earlyData = (@:checkr _hs ?? throw "null pointer dereference")._earlyData;
        };
        {
            var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_encryptedExtensions), (@:checkr _hs ?? throw "null pointer dereference")._transcript), __338:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _doHelloRetryRequest( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>, _selectedGroup:stdgo._internal.crypto.tls.Tls_curveid.CurveID):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw "null pointer dereference")._clientHello), (@:checkr _hs ?? throw "null pointer dereference")._transcript) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _chHash = (@:checkr _hs ?? throw "null pointer dereference")._transcript.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _hs ?? throw "null pointer dereference")._transcript.reset();
        (@:checkr _hs ?? throw "null pointer dereference")._transcript.write((new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(254 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (_chHash.length : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _hs ?? throw "null pointer dereference")._transcript.write(_chHash);
        var _helloRetryRequest = (stdgo.Go.setRef(({ _vers : (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._vers, _random : stdgo._internal.crypto.tls.Tls__helloretryrequestrandom._helloRetryRequestRandom, _sessionId : (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._sessionId, _cipherSuite : (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._cipherSuite, _compressionMethod : (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._compressionMethod, _supportedVersion : (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._supportedVersion, _selectedGroup : _selectedGroup } : stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>);
        {
            var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_helloRetryRequest), (@:checkr _hs ?? throw "null pointer dereference")._transcript), __185:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (@:check2r _hs._sendDummyChangeCipherSpec() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = @:check2r _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>), _1 : false };
        }, _clientHello = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_clientHello)), _msg);
        };
        if ((((@:checkr _clientHello ?? throw "null pointer dereference")._keyShares.length != (1 : stdgo.GoInt)) || ((@:checkr _clientHello ?? throw "null pointer dereference")._keyShares[(0 : stdgo.GoInt)]._group != _selectedGroup) : Bool)) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: client sent invalid key share in second ClientHello" : stdgo.GoString));
        };
        if ((@:checkr _clientHello ?? throw "null pointer dereference")._earlyData) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: client indicated early data in second ClientHello" : stdgo.GoString));
        };
        if (stdgo._internal.crypto.tls.Tls__illegalclienthellochange._illegalClientHelloChange(_clientHello, (@:checkr _hs ?? throw "null pointer dereference")._clientHello)) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: client illegally modified second ClientHello" : stdgo.GoString));
        };
        (@:checkr _hs ?? throw "null pointer dereference")._clientHello = _clientHello;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _sendDummyChangeCipherSpec( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._c ?? throw "null pointer dereference")._quic != null && (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._c ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
            return (null : stdgo.Error);
        };
        if ((@:checkr _hs ?? throw "null pointer dereference")._sentDummyCCS) {
            return (null : stdgo.Error);
        };
        (@:checkr _hs ?? throw "null pointer dereference")._sentDummyCCS = true;
        return @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeChangeCipherRecord();
    }
    @:keep
    @:tdfield
    static public function _pickCertificate( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        if ((@:checkr _hs ?? throw "null pointer dereference")._usingPSK) {
            return (null : stdgo.Error);
        };
        if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._supportedSignatureAlgorithms.length) == ((0 : stdgo.GoInt))) {
            return @:check2r _c._sendAlert((109 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
        };
        var __tmp__ = @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._getCertificate(stdgo._internal.crypto.tls.Tls__clienthelloinfo._clientHelloInfo((@:checkr _hs ?? throw "null pointer dereference")._ctx, _c, (@:checkr _hs ?? throw "null pointer dereference")._clientHello)), _certificate:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.crypto.tls.Tls__errnocertificates._errNoCertificates))) {
                @:check2r _c._sendAlert((112 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            } else {
                @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            };
            return _err;
        };
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__selectsignaturescheme._selectSignatureScheme((@:checkr _c ?? throw "null pointer dereference")._vers, _certificate, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._supportedSignatureAlgorithms);
            (@:checkr _hs ?? throw "null pointer dereference")._sigAlg = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return _err;
        };
        (@:checkr _hs ?? throw "null pointer dereference")._cert = _certificate;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _checkForResumption( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").sessionTicketsDisabled) {
            return (null : stdgo.Error);
        };
        var _modeOK = (false : Bool);
        for (__93 => _mode in (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._pskModes) {
            if (_mode == ((1 : stdgo.GoUInt8))) {
                _modeOK = true;
                break;
            };
        };
        if (!_modeOK) {
            return (null : stdgo.Error);
        };
        if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._pskIdentities.length) != (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._pskBinders.length))) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: invalid or missing PSK binders" : stdgo.GoString));
        };
        if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._pskIdentities.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        for (_i => _identity in (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._pskIdentities) {
            if ((_i >= (5 : stdgo.GoInt) : Bool)) {
                break;
            };
            var _sessionState:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>);
            if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").unwrapSession != null) {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = (@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").unwrapSession(_identity._label, @:check2r _c._connectionStateLocked()?.__copy__());
                    _sessionState = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
                if ((_sessionState == null || (_sessionState : Dynamic).__nil__)) {
                    continue;
                };
            } else {
                var _plaintext = @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._decryptTicket(_identity._label, (@:checkr _c ?? throw "null pointer dereference")._ticketKeys);
                if (_plaintext == null) {
                    continue;
                };
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls_parsesessionstate.parseSessionState(_plaintext);
                    _sessionState = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    continue;
                };
            };
            if ((@:checkr _sessionState ?? throw "null pointer dereference")._version != ((772 : stdgo.GoUInt16))) {
                continue;
            };
            var _createdAt = (stdgo._internal.time.Time_unix.unix(((@:checkr _sessionState ?? throw "null pointer dereference")._createdAt : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__() : stdgo._internal.time.Time_time.Time);
            if ((@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._time().sub(_createdAt?.__copy__()) > (604800000000000i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                continue;
            };
            var _pskSuite = stdgo._internal.crypto.tls.Tls__ciphersuitetls13byid._cipherSuiteTLS13ByID((@:checkr _sessionState ?? throw "null pointer dereference")._cipherSuite);
            if (((_pskSuite == null || (_pskSuite : Dynamic).__nil__) || ((@:checkr _pskSuite ?? throw "null pointer dereference")._hash != (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._hash) : Bool)) {
                continue;
            };
            var _sessionHasClientCerts = (((@:checkr _sessionState ?? throw "null pointer dereference")._peerCertificates.length) != ((0 : stdgo.GoInt)) : Bool);
            var _needClientCerts = (stdgo._internal.crypto.tls.Tls__requiresclientcert._requiresClientCert((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientAuth) : Bool);
            if ((_needClientCerts && !_sessionHasClientCerts : Bool)) {
                continue;
            };
            if ((_sessionHasClientCerts && ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientAuth == (0 : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType)) : Bool)) {
                continue;
            };
            if ((_sessionHasClientCerts && @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._time().after((@:checkr (@:checkr _sessionState ?? throw "null pointer dereference")._peerCertificates[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").notAfter?.__copy__()) : Bool)) {
                continue;
            };
            if (((_sessionHasClientCerts && ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientAuth >= (3 : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType) : Bool) : Bool) && ((@:checkr _sessionState ?? throw "null pointer dereference")._verifiedChains.length == (0 : stdgo.GoInt)) : Bool)) {
                continue;
            };
            (@:checkr _hs ?? throw "null pointer dereference")._earlySecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._extract((@:checkr _sessionState ?? throw "null pointer dereference")._secret, (null : stdgo.Slice<stdgo.GoUInt8>));
            var _binderKey = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret((@:checkr _hs ?? throw "null pointer dereference")._earlySecret, ("res binder" : stdgo.GoString), (null : stdgo._internal.hash.Hash_hash.Hash));
            var _transcript = (stdgo._internal.crypto.tls.Tls__clonehash._cloneHash((@:checkr _hs ?? throw "null pointer dereference")._transcript, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._hash) : stdgo._internal.hash.Hash_hash.Hash);
            if (_transcript == null) {
                @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: failed to clone hash" : stdgo.GoString));
            };
            var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._clientHello._marshalWithoutBinders(), _clientHelloBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return _err;
            };
            _transcript.write(_clientHelloBytes);
            var _pskBinder = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._finishedHash(_binderKey, _transcript);
            if (!stdgo._internal.crypto.hmac.Hmac_equal.equal((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._pskBinders[(_i : stdgo.GoInt)], _pskBinder)) {
                @:check2r _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: invalid PSK binder" : stdgo.GoString));
            };
            if ((((((((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__)) && (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._earlyData : Bool) && _i == ((0 : stdgo.GoInt)) : Bool) && (@:checkr _sessionState ?? throw "null pointer dereference").earlyData : Bool) && (@:checkr _sessionState ?? throw "null pointer dereference")._cipherSuite == ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id) : Bool) && ((@:checkr _sessionState ?? throw "null pointer dereference")._alpnProtocol == (@:checkr _c ?? throw "null pointer dereference")._clientProtocol) : Bool)) {
                (@:checkr _hs ?? throw "null pointer dereference")._earlyData = true;
                var _transcript = ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._hash.new_() : stdgo._internal.hash.Hash_hash.Hash);
                {
                    var _err = (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw "null pointer dereference")._clientHello), _transcript) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
                var _earlyTrafficSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret((@:checkr _hs ?? throw "null pointer dereference")._earlySecret, ("c e traffic" : stdgo.GoString), _transcript);
                @:check2r _c._quicSetReadSecret((1 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id, _earlyTrafficSecret);
            };
            (@:checkr _c ?? throw "null pointer dereference")._didResume = true;
            (@:checkr _c ?? throw "null pointer dereference")._peerCertificates = (@:checkr _sessionState ?? throw "null pointer dereference")._peerCertificates;
            (@:checkr _c ?? throw "null pointer dereference")._ocspResponse = (@:checkr _sessionState ?? throw "null pointer dereference")._ocspResponse;
            (@:checkr _c ?? throw "null pointer dereference")._scts = (@:checkr _sessionState ?? throw "null pointer dereference")._scts;
            (@:checkr _c ?? throw "null pointer dereference")._verifiedChains = (@:checkr _sessionState ?? throw "null pointer dereference")._verifiedChains;
            (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._selectedIdentityPresent = true;
            (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._selectedIdentity = (_i : stdgo.GoUInt16);
            (@:checkr _hs ?? throw "null pointer dereference")._usingPSK = true;
            return (null : stdgo.Error);
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processClientHello( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _i_5983895_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5983271_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _peerKey_5984963:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> = (null : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>);
        var _err_5984753:stdgo.Error = (null : stdgo.Error);
        var _ks_5983940:stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare = ({} : stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare);
        var _i_5981233_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_5980132:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>);
        var _err_5984458:stdgo.Error = (null : stdgo.Error);
        var _group_5984153:stdgo._internal.crypto.tls.Tls_curveid.CurveID = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
        var _i_5984162_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _selectedGroup_5983801:stdgo._internal.crypto.tls.Tls_curveid.CurveID = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
        var _err_5981917:stdgo.Error = (null : stdgo.Error);
        var _id_5981227:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _selectedProto_5985286:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_5984594:Bool = false;
        var _i_5983946_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _suiteID_5983260:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _clientKeyShare_5983828:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare>);
        var _preferenceList_5983076:stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
        var _key_5984748:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>);
        var _preferredGroup_5983877:stdgo._internal.crypto.tls.Tls_curveid.CurveID = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _c_5980132 = (@:checkr _hs ?? throw "null pointer dereference")._c;
                    (@:checkr _hs ?? throw "null pointer dereference")._hello = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>);
                    (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._vers = (771 : stdgo.GoUInt16);
                    (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._supportedVersion = (@:checkr _c_5980132 ?? throw "null pointer dereference")._vers;
                    if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._supportedVersions.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5980427i32;
                    } else {
                        _gotoNext = 5981220i32;
                    };
                } else if (__value__ == (5980427i32)) {
                    @:check2r _c_5980132._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client used the legacy version field to negotiate TLS 1.3" : stdgo.GoString));
                    _gotoNext = 5981220i32;
                } else if (__value__ == (5981220i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._cipherSuites.length)) {
                        _gotoNext = 5981638i32;
                    } else {
                        _gotoNext = 5981643i32;
                    };
                } else if (__value__ == (5981224i32)) {
                    _i_5981233_0++;
                    _gotoNext = 5981639i32;
                } else if (__value__ == (5981267i32)) {
                    _id_5981227 = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._cipherSuites[(_i_5981233_0 : stdgo.GoInt)];
                    if (_id_5981227 == ((22016 : stdgo.GoUInt16))) {
                        _gotoNext = 5981298i32;
                    } else {
                        _gotoNext = 5981224i32;
                    };
                } else if (__value__ == (5981298i32)) {
                    if (((@:checkr _c_5980132 ?? throw "null pointer dereference")._vers < @:check2r (@:checkr _c_5980132 ?? throw "null pointer dereference")._config._maxSupportedVersion(false) : Bool)) {
                        _gotoNext = 5981499i32;
                    } else {
                        _gotoNext = 5981628i32;
                    };
                } else if (__value__ == (5981499i32)) {
                    @:check2r _c_5980132._sendAlert((86 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client using inappropriate protocol fallback" : stdgo.GoString));
                    _gotoNext = 5981628i32;
                } else if (__value__ == (5981628i32)) {
                    _gotoNext = 5981643i32;
                } else if (__value__ == (5981638i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._cipherSuites[(0i32 : stdgo.GoInt)];
                        _i_5981233_0 = __tmp__0;
                        _id_5981227 = __tmp__1;
                    };
                    _gotoNext = 5981639i32;
                } else if (__value__ == (5981639i32)) {
                    if (_i_5981233_0 < ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._cipherSuites.length)) {
                        _gotoNext = 5981267i32;
                    } else {
                        _gotoNext = 5981643i32;
                    };
                } else if (__value__ == (5981643i32)) {
                    if ((((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._compressionMethods.length != (1 : stdgo.GoInt)) || ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._compressionMethods[(0 : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5981751i32;
                    } else {
                        _gotoNext = 5981875i32;
                    };
                } else if (__value__ == (5981751i32)) {
                    @:check2r _c_5980132._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: TLS 1.3 client supports illegal compression methods" : stdgo.GoString));
                    _gotoNext = 5981875i32;
                } else if (__value__ == (5981875i32)) {
                    (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._random = (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(@:check2r (@:checkr _c_5980132 ?? throw "null pointer dereference")._config._rand(), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._random);
                            _err_5981917 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_5981917 != null) {
                            _gotoNext = 5981982i32;
                        } else {
                            _gotoNext = 5982036i32;
                        };
                    };
                } else if (__value__ == (5981982i32)) {
                    @:check2r _c_5980132._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return _err_5981917;
                    _gotoNext = 5982036i32;
                } else if (__value__ == (5982036i32)) {
                    if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._secureRenegotiation.length) != ((0 : stdgo.GoInt))) {
                        _gotoNext = 5982084i32;
                    } else {
                        _gotoNext = 5982212i32;
                    };
                } else if (__value__ == (5982084i32)) {
                    @:check2r _c_5980132._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: initial handshake had non-empty renegotiation extension" : stdgo.GoString));
                    _gotoNext = 5982212i32;
                } else if (__value__ == (5982212i32)) {
                    if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._earlyData && ((@:checkr _c_5980132 ?? throw "null pointer dereference")._quic != null && (((@:checkr _c_5980132 ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c_5980132 ?? throw "null pointer dereference")._quic : Dynamic).__nil__)) : Bool)) {
                        _gotoNext = 5982257i32;
                    } else if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._earlyData) {
                        _gotoNext = 5982446i32;
                    } else {
                        _gotoNext = 5982982i32;
                    };
                } else if (__value__ == (5982257i32)) {
                    if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._pskIdentities.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5982303i32;
                    } else {
                        _gotoNext = 5982982i32;
                    };
                } else if (__value__ == (5982303i32)) {
                    @:check2r _c_5980132._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: early_data without pre_shared_key" : stdgo.GoString));
                    _gotoNext = 5982982i32;
                } else if (__value__ == (5982446i32)) {
                    @:check2r _c_5980132._sendAlert((110 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client sent unexpected early data" : stdgo.GoString));
                    _gotoNext = 5982982i32;
                } else if (__value__ == (5982982i32)) {
                    (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._sessionId = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._sessionId;
                    (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._compressionMethod = (0 : stdgo.GoUInt8);
                    _preferenceList_5983076 = stdgo._internal.crypto.tls.Tls__defaultciphersuitestls13._defaultCipherSuitesTLS13;
                    if ((!stdgo._internal.crypto.tls.Tls__hasaesgcmhardwaresupport._hasAESGCMHardwareSupport || !stdgo._internal.crypto.tls.Tls__aesgcmpreferred._aesgcmPreferred((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._cipherSuites) : Bool)) {
                        _gotoNext = 5983198i32;
                    } else {
                        _gotoNext = 5983253i32;
                    };
                } else if (__value__ == (5983198i32)) {
                    _preferenceList_5983076 = stdgo._internal.crypto.tls.Tls__defaultciphersuitestls13noaes._defaultCipherSuitesTLS13NoAES;
                    _gotoNext = 5983253i32;
                } else if (__value__ == (5983253i32)) {
                    if ((0i32 : stdgo.GoInt) < (_preferenceList_5983076.length)) {
                        _gotoNext = 5983404i32;
                    } else {
                        _gotoNext = 5983408i32;
                    };
                } else if (__value__ == (5983257i32)) {
                    _i_5983271_0++;
                    _gotoNext = 5983405i32;
                } else if (__value__ == (5983292i32)) {
                    _suiteID_5983260 = _preferenceList_5983076[(_i_5983271_0 : stdgo.GoInt)];
                    (@:checkr _hs ?? throw "null pointer dereference")._suite = stdgo._internal.crypto.tls.Tls__mutualciphersuitetls13._mutualCipherSuiteTLS13((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._cipherSuites, _suiteID_5983260);
                    if (((@:checkr _hs ?? throw "null pointer dereference")._suite != null && (((@:checkr _hs ?? throw "null pointer dereference")._suite : Dynamic).__nil__ == null || !((@:checkr _hs ?? throw "null pointer dereference")._suite : Dynamic).__nil__))) {
                        _gotoNext = 5983389i32;
                    } else {
                        _gotoNext = 5983257i32;
                    };
                } else if (__value__ == (5983389i32)) {
                    _gotoNext = 5983408i32;
                } else if (__value__ == (5983404i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _preferenceList_5983076[(0i32 : stdgo.GoInt)];
                        _i_5983271_0 = __tmp__0;
                        _suiteID_5983260 = __tmp__1;
                    };
                    _gotoNext = 5983405i32;
                } else if (__value__ == (5983405i32)) {
                    if (_i_5983271_0 < (_preferenceList_5983076.length)) {
                        _gotoNext = 5983292i32;
                    } else {
                        _gotoNext = 5983408i32;
                    };
                } else if (__value__ == (5983408i32)) {
                    if (((@:checkr _hs ?? throw "null pointer dereference")._suite == null || ((@:checkr _hs ?? throw "null pointer dereference")._suite : Dynamic).__nil__)) {
                        _gotoNext = 5983427i32;
                    } else {
                        _gotoNext = 5983550i32;
                    };
                } else if (__value__ == (5983427i32)) {
                    @:check2r _c_5980132._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: no cipher suite supported by both client and server" : stdgo.GoString));
                    _gotoNext = 5983550i32;
                } else if (__value__ == (5983550i32)) {
                    (@:checkr _c_5980132 ?? throw "null pointer dereference")._cipherSuite = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id;
                    (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._cipherSuite = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id;
                    (@:checkr _hs ?? throw "null pointer dereference")._transcript = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._hash.new_();
                    _gotoNext = 5983853i32;
                } else if (__value__ == (5983853i32)) {
                    if ((0i32 : stdgo.GoInt) < (@:check2r (@:checkr _c_5980132 ?? throw "null pointer dereference")._config._curvePreferences().length)) {
                        _gotoNext = 5984278i32;
                    } else {
                        _gotoNext = 5984282i32;
                    };
                } else if (__value__ == (5983874i32)) {
                    _i_5983895_0++;
                    _gotoNext = 5984279i32;
                } else if (__value__ == (5983929i32)) {
                    _preferredGroup_5983877 = @:check2r (@:checkr _c_5980132 ?? throw "null pointer dereference")._config._curvePreferences()[(_i_5983895_0 : stdgo.GoInt)];
                    if ((0i32 : stdgo.GoInt) < ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._keyShares.length)) {
                        _gotoNext = 5984099i32;
                    } else {
                        _gotoNext = 5984104i32;
                    };
                } else if (__value__ == (5983937i32)) {
                    _i_5983946_0++;
                    _gotoNext = 5984100i32;
                } else if (__value__ == (5983977i32)) {
                    _ks_5983940 = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._keyShares[(_i_5983946_0 : stdgo.GoInt)];
                    if (_ks_5983940._group == (_preferredGroup_5983877)) {
                        _gotoNext = 5984012i32;
                    } else {
                        _gotoNext = 5983937i32;
                    };
                } else if (__value__ == (5984012i32)) {
                    _selectedGroup_5983801 = _ks_5983940._group;
                    _clientKeyShare_5983828 = (stdgo.Go.setRef(_ks_5983940) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare>);
                    stdgo._internal.crypto.tls.Tls_groupselectionbreak.groupSelectionBreak = true;
                    _gotoNext = 5984279i32;
                } else if (__value__ == (5984099i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._keyShares[(0i32 : stdgo.GoInt)];
                        _i_5983946_0 = __tmp__0;
                        _ks_5983940 = __tmp__1;
                    };
                    _gotoNext = 5984100i32;
                } else if (__value__ == (5984100i32)) {
                    if (_i_5983946_0 < ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._keyShares.length)) {
                        _gotoNext = 5983977i32;
                    } else {
                        _gotoNext = 5984104i32;
                    };
                } else if (__value__ == (5984104i32)) {
                    if (_selectedGroup_5983801 != ((0 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
                        _gotoNext = 5984126i32;
                    } else {
                        _gotoNext = 5984146i32;
                    };
                } else if (__value__ == (5984126i32)) {
                    _i_5983895_0++;
                    _gotoNext = 5984279i32;
                } else if (__value__ == (5984146i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._supportedCurves.length)) {
                        _gotoNext = 5984275i32;
                    } else {
                        _gotoNext = 5983874i32;
                    };
                } else if (__value__ == (5984150i32)) {
                    _i_5984162_0++;
                    _gotoNext = 5984276i32;
                } else if (__value__ == (5984199i32)) {
                    _group_5984153 = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._supportedCurves[(_i_5984162_0 : stdgo.GoInt)];
                    if (_group_5984153 == (_preferredGroup_5983877)) {
                        _gotoNext = 5984231i32;
                    } else {
                        _gotoNext = 5984150i32;
                    };
                } else if (__value__ == (5984231i32)) {
                    _selectedGroup_5983801 = _group_5984153;
                    _gotoNext = 5983874i32;
                } else if (__value__ == (5984275i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._supportedCurves[(0i32 : stdgo.GoInt)];
                        _i_5984162_0 = __tmp__0;
                        _group_5984153 = __tmp__1;
                    };
                    _gotoNext = 5984276i32;
                } else if (__value__ == (5984276i32)) {
                    if (_i_5984162_0 < ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._supportedCurves.length)) {
                        _gotoNext = 5984199i32;
                    } else {
                        _gotoNext = 5983874i32;
                    };
                } else if (__value__ == (5984278i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = @:check2r (@:checkr _c_5980132 ?? throw "null pointer dereference")._config._curvePreferences()[(0i32 : stdgo.GoInt)];
                        _i_5983895_0 = __tmp__0;
                        _preferredGroup_5983877 = __tmp__1;
                    };
                    _gotoNext = 5984279i32;
                } else if (__value__ == (5984279i32)) {
                    if (_i_5983895_0 < (@:check2r (@:checkr _c_5980132 ?? throw "null pointer dereference")._config._curvePreferences().length)) {
                        _gotoNext = 5983929i32;
                    } else {
                        _gotoNext = 5984282i32;
                    };
                } else if (__value__ == (5984282i32)) {
                    if (_selectedGroup_5983801 == ((0 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
                        _gotoNext = 5984304i32;
                    } else {
                        _gotoNext = 5984426i32;
                    };
                } else if (__value__ == (5984304i32)) {
                    @:check2r _c_5980132._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: no ECDHE curve supported by both client and server" : stdgo.GoString));
                    _gotoNext = 5984426i32;
                } else if (__value__ == (5984426i32)) {
                    if ((_clientKeyShare_5983828 == null || (_clientKeyShare_5983828 : Dynamic).__nil__)) {
                        _gotoNext = 5984451i32;
                    } else {
                        _gotoNext = 5984588i32;
                    };
                } else if (__value__ == (5984451i32)) {
                    {
                        _err_5984458 = @:check2r _hs._doHelloRetryRequest(_selectedGroup_5983801);
                        if (_err_5984458 != null) {
                            _gotoNext = 5984515i32;
                        } else {
                            _gotoNext = 5984537i32;
                        };
                    };
                } else if (__value__ == (5984515i32)) {
                    return _err_5984458;
                    _gotoNext = 5984537i32;
                } else if (__value__ == (5984537i32)) {
                    _clientKeyShare_5983828 = (stdgo.Go.setRef((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._keyShares[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare>);
                    _gotoNext = 5984588i32;
                } else if (__value__ == (5984588i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.tls.Tls__curveforcurveid._curveForCurveID(_selectedGroup_5983801);
                            _ok_5984594 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_5984594) {
                            _gotoNext = 5984636i32;
                        } else {
                            _gotoNext = 5984748i32;
                        };
                    };
                } else if (__value__ == (5984636i32)) {
                    @:check2r _c_5980132._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: CurvePreferences includes unsupported curve" : stdgo.GoString));
                    _gotoNext = 5984748i32;
                } else if (__value__ == (5984748i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.tls.Tls__generateecdhekey._generateECDHEKey(@:check2r (@:checkr _c_5980132 ?? throw "null pointer dereference")._config._rand(), _selectedGroup_5983801);
                        _key_5984748 = @:tmpset0 __tmp__._0;
                        _err_5984753 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_5984753 != null) {
                        _gotoNext = 5984824i32;
                    } else {
                        _gotoNext = 5984877i32;
                    };
                } else if (__value__ == (5984824i32)) {
                    @:check2r _c_5980132._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return _err_5984753;
                    _gotoNext = 5984877i32;
                } else if (__value__ == (5984877i32)) {
                    (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._serverShare = ({ _group : _selectedGroup_5983801, _data : @:check2r @:check2r _key_5984748.publicKey().bytes() } : stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare);
                    {
                        var __tmp__ = @:check2r _key_5984748.curve().newPublicKey((@:checkr _clientKeyShare_5983828 ?? throw "null pointer dereference")._data);
                        _peerKey_5984963 = @:tmpset0 __tmp__._0;
                        _err_5984753 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_5984753 != null) {
                        _gotoNext = 5985040i32;
                    } else {
                        _gotoNext = 5985136i32;
                    };
                } else if (__value__ == (5985040i32)) {
                    @:check2r _c_5980132._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: invalid client key share" : stdgo.GoString));
                    _gotoNext = 5985136i32;
                } else if (__value__ == (5985136i32)) {
                    {
                        var __tmp__ = @:check2r _key_5984748.eCDH(_peerKey_5984963);
                        (@:checkr _hs ?? throw "null pointer dereference")._sharedKey = @:tmpset0 __tmp__._0;
                        _err_5984753 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_5984753 != null) {
                        _gotoNext = 5985189i32;
                    } else {
                        _gotoNext = 5985286i32;
                    };
                } else if (__value__ == (5985189i32)) {
                    @:check2r _c_5980132._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: invalid client key share" : stdgo.GoString));
                    _gotoNext = 5985286i32;
                } else if (__value__ == (5985286i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.tls.Tls__negotiatealpn._negotiateALPN((@:checkr (@:checkr _c_5980132 ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").nextProtos, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._alpnProtocols, ((@:checkr _c_5980132 ?? throw "null pointer dereference")._quic != null && (((@:checkr _c_5980132 ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c_5980132 ?? throw "null pointer dereference")._quic : Dynamic).__nil__)));
                        _selectedProto_5985286 = @:tmpset0 __tmp__._0?.__copy__();
                        _err_5984753 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_5984753 != null) {
                        _gotoNext = 5985403i32;
                    } else {
                        _gotoNext = 5985464i32;
                    };
                } else if (__value__ == (5985403i32)) {
                    @:check2r _c_5980132._sendAlert((120 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return _err_5984753;
                    _gotoNext = 5985464i32;
                } else if (__value__ == (5985464i32)) {
                    (@:checkr _c_5980132 ?? throw "null pointer dereference")._clientProtocol = _selectedProto_5985286?.__copy__();
                    if (((@:checkr _c_5980132 ?? throw "null pointer dereference")._quic != null && (((@:checkr _c_5980132 ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c_5980132 ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
                        _gotoNext = 5985516i32;
                    } else {
                        _gotoNext = 5985807i32;
                    };
                } else if (__value__ == (5985516i32)) {
                    if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._quicTransportParameters == null) {
                        _gotoNext = 5985569i32;
                    } else {
                        _gotoNext = 5985730i32;
                    };
                } else if (__value__ == (5985569i32)) {
                    @:check2r _c_5980132._sendAlert((109 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client did not send a quic_transport_parameters extension" : stdgo.GoString));
                    _gotoNext = 5985730i32;
                } else if (__value__ == (5985730i32)) {
                    @:check2r _c_5980132._quicSetTransportParameters((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._quicTransportParameters);
                    _gotoNext = 5986004i32;
                } else if (__value__ == (5985807i32)) {
                    _gotoNext = 5985807i32;
                    if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._quicTransportParameters != null) {
                        _gotoNext = 5985860i32;
                    } else {
                        _gotoNext = 5986004i32;
                    };
                } else if (__value__ == (5985860i32)) {
                    @:check2r _c_5980132._sendAlert((110 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client sent an unexpected quic_transport_parameters extension" : stdgo.GoString));
                    _gotoNext = 5986004i32;
                } else if (__value__ == (5986004i32)) {
                    (@:checkr _c_5980132 ?? throw "null pointer dereference")._serverName = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._serverName?.__copy__();
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _handshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        if (stdgo._internal.crypto.tls.Tls__needfips._needFIPS()) {
            return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: TLS 1.3 reached in FIPS mode" : stdgo.GoString));
        };
        {
            var _err = (@:check2r _hs._processClientHello() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (@:check2r _hs._checkForResumption() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (@:check2r _hs._pickCertificate() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        (@:checkr _c ?? throw "null pointer dereference")._buffering = true;
        {
            var _err = (@:check2r _hs._sendServerParameters() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (@:check2r _hs._sendServerCertificate() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (@:check2r _hs._sendServerFinished() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = @:check2r _c._flush(), __137:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (@:check2r _hs._readClientCertificate() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (@:check2r _hs._readClientFinished() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._isHandshakeComplete.store(true);
        return (null : stdgo.Error);
    }
}
