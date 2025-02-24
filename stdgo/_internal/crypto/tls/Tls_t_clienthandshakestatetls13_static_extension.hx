package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_clientHandshakeStateTLS13_asInterface) class T_clientHandshakeStateTLS13_static_extension {
    @:keep
    @:tdfield
    static public function _sendClientFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        var _finished = (stdgo.Go.setRef(({ _verifyData : @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._finishedHash((@:checkr _c ?? throw "null pointer dereference")._out._trafficSecret, (@:checkr _hs ?? throw "null pointer dereference")._transcript) } : stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>);
        {
            var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_finished), (@:checkr _hs ?? throw "null pointer dereference")._transcript), __121:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._out._setTrafficSecret((@:checkr _hs ?? throw "null pointer dereference")._suite, (3 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr _hs ?? throw "null pointer dereference")._trafficSecret);
        if ((!(@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").sessionTicketsDisabled && ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientSessionCache != null) : Bool)) {
            (@:checkr _c ?? throw "null pointer dereference")._resumptionSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret((@:checkr _hs ?? throw "null pointer dereference")._masterSecret, ("res master" : stdgo.GoString), (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        };
        if (((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
            if (@:check2 (@:checkr _c ?? throw "null pointer dereference")._hand.len() != ((0 : stdgo.GoInt))) {
                @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            };
            @:check2r _c._quicSetWriteSecret((3 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id, (@:checkr _hs ?? throw "null pointer dereference")._trafficSecret);
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _sendClientCertificate( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        if (((@:checkr _hs ?? throw "null pointer dereference")._certReq == null || ((@:checkr _hs ?? throw "null pointer dereference")._certReq : Dynamic).__nil__)) {
            return (null : stdgo.Error);
        };
        var __tmp__ = @:check2r _c._getClientCertificate((stdgo.Go.setRef(({ acceptableCAs : (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._certReq ?? throw "null pointer dereference")._certificateAuthorities, signatureSchemes : (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._certReq ?? throw "null pointer dereference")._supportedSignatureAlgorithms, version : (@:checkr _c ?? throw "null pointer dereference")._vers, _ctx : (@:checkr _hs ?? throw "null pointer dereference")._ctx } : stdgo._internal.crypto.tls.Tls_certificaterequestinfo.CertificateRequestInfo)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificaterequestinfo.CertificateRequestInfo>)), _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var _certMsg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13>);
        (@:checkr _certMsg ?? throw "null pointer dereference")._certificate = (_cert : stdgo._internal.crypto.tls.Tls_certificate.Certificate)?.__copy__();
        (@:checkr _certMsg ?? throw "null pointer dereference")._scts = ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._certReq ?? throw "null pointer dereference")._scts && (((@:checkr _cert ?? throw "null pointer dereference").signedCertificateTimestamps.length) > (0 : stdgo.GoInt) : Bool) : Bool);
        (@:checkr _certMsg ?? throw "null pointer dereference")._ocspStapling = ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._certReq ?? throw "null pointer dereference")._ocspStapling && (((@:checkr _cert ?? throw "null pointer dereference").oCSPStaple.length) > (0 : stdgo.GoInt) : Bool) : Bool);
        {
            var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_certMsg), (@:checkr _hs ?? throw "null pointer dereference")._transcript), __161:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        if (((@:checkr _cert ?? throw "null pointer dereference").certificate.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        var _certVerifyMsg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>);
        (@:checkr _certVerifyMsg ?? throw "null pointer dereference")._hasSignatureAlgorithm = true;
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__selectsignaturescheme._selectSignatureScheme((@:checkr _c ?? throw "null pointer dereference")._vers, _cert, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._certReq ?? throw "null pointer dereference")._supportedSignatureAlgorithms);
            (@:checkr _certVerifyMsg ?? throw "null pointer dereference")._signatureAlgorithm = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return _err;
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls__typeandhashfromsignaturescheme._typeAndHashFromSignatureScheme((@:checkr _certVerifyMsg ?? throw "null pointer dereference")._signatureAlgorithm), _sigType:stdgo.GoUInt8 = __tmp__._0, _sigHash:stdgo._internal.crypto.Crypto_hash.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
        };
        var _signed = stdgo._internal.crypto.tls.Tls__signedmessage._signedMessage(_sigHash, (stdgo.Go.str("TLS 1.3, client CertificateVerify", 0) : stdgo.GoString)?.__copy__(), (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        var _signOpts = (stdgo.Go.asInterface(_sigHash) : stdgo._internal.crypto.Crypto_signeropts.SignerOpts);
        if (_sigType == ((226 : stdgo.GoUInt8))) {
            _signOpts = stdgo.Go.asInterface((stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt), hash : _sigHash } : stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>));
        };
        var __tmp__ = (stdgo.Go.typeAssert(((@:checkr _cert ?? throw "null pointer dereference").privateKey : stdgo._internal.crypto.Crypto_signer.Signer)) : stdgo._internal.crypto.Crypto_signer.Signer).sign(@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._rand(), _signed, _signOpts), _sig:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
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
    static public function _readServerFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
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
        var _expectedMAC = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._finishedHash((@:checkr _c ?? throw "null pointer dereference")._in._trafficSecret, (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        if (!stdgo._internal.crypto.hmac.Hmac_equal.equal(_expectedMAC, (@:checkr _finished ?? throw "null pointer dereference")._verifyData)) {
            @:check2r _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: invalid server finished hash" : stdgo.GoString));
        };
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface(_finished), (@:checkr _hs ?? throw "null pointer dereference")._transcript) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        (@:checkr _hs ?? throw "null pointer dereference")._trafficSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret((@:checkr _hs ?? throw "null pointer dereference")._masterSecret, ("c ap traffic" : stdgo.GoString), (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        var _serverSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret((@:checkr _hs ?? throw "null pointer dereference")._masterSecret, ("s ap traffic" : stdgo.GoString), (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setTrafficSecret((@:checkr _hs ?? throw "null pointer dereference")._suite, (3 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), _serverSecret);
        _err = @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._writeKeyLog(("CLIENT_TRAFFIC_SECRET_0" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._random, (@:checkr _hs ?? throw "null pointer dereference")._trafficSecret);
        if (_err != null) {
            @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return _err;
        };
        _err = @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._writeKeyLog(("SERVER_TRAFFIC_SECRET_0" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._random, _serverSecret);
        if (_err != null) {
            @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return _err;
        };
        (@:checkr _c ?? throw "null pointer dereference")._ekm = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._exportKeyingMaterial((@:checkr _hs ?? throw "null pointer dereference")._masterSecret, (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readServerCertificate( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        if ((@:checkr _hs ?? throw "null pointer dereference")._usingPSK) {
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
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13>), _1 : false };
        }, _certReq = __tmp__._0, _ok = __tmp__._1;
        if (_ok) {
            (@:checkr _hs ?? throw "null pointer dereference")._certReq = _certReq;
            {
                var __tmp__ = @:check2r _c._readHandshake((@:checkr _hs ?? throw "null pointer dereference")._transcript);
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
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
        if (((@:checkr _certMsg ?? throw "null pointer dereference")._certificate.certificate.length) == ((0 : stdgo.GoInt))) {
            @:check2r _c._sendAlert((50 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: received empty certificates message" : stdgo.GoString));
        };
        (@:checkr _c ?? throw "null pointer dereference")._scts = (@:checkr _certMsg ?? throw "null pointer dereference")._certificate.signedCertificateTimestamps;
        (@:checkr _c ?? throw "null pointer dereference")._ocspResponse = (@:checkr _certMsg ?? throw "null pointer dereference")._certificate.oCSPStaple;
        {
            var _err = (@:check2r _c._verifyServerCertificate((@:checkr _certMsg ?? throw "null pointer dereference")._certificate.certificate) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
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
            return stdgo._internal.errors.Errors_new_.new_(("tls: certificate used with invalid signature algorithm" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls__typeandhashfromsignaturescheme._typeAndHashFromSignatureScheme((@:checkr _certVerify ?? throw "null pointer dereference")._signatureAlgorithm), _sigType:stdgo.GoUInt8 = __tmp__._0, _sigHash:stdgo._internal.crypto.Crypto_hash.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
        };
        if (((_sigType == (225 : stdgo.GoUInt8)) || (_sigHash == (3u32 : stdgo._internal.crypto.Crypto_hash.Hash)) : Bool)) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: certificate used with invalid signature algorithm" : stdgo.GoString));
        };
        var _signed = stdgo._internal.crypto.tls.Tls__signedmessage._signedMessage(_sigHash, (stdgo.Go.str("TLS 1.3, server CertificateVerify", 0) : stdgo.GoString)?.__copy__(), (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        {
            var _err = (stdgo._internal.crypto.tls.Tls__verifyhandshakesignature._verifyHandshakeSignature(_sigType, stdgo.Go.toInterface((@:checkr (@:checkr _c ?? throw "null pointer dereference")._peerCertificates[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").publicKey), _sigHash, _signed, (@:checkr _certVerify ?? throw "null pointer dereference")._signature) : stdgo.Error);
            if (_err != null) {
                @:check2r _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_((("tls: invalid signature by the server certificate: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface(_certVerify), (@:checkr _hs ?? throw "null pointer dereference")._transcript) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readServerParameters( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        var __tmp__ = @:check2r _c._readHandshake((@:checkr _hs ?? throw "null pointer dereference")._transcript), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg>), _1 : false };
        }, _encryptedExtensions = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_encryptedExtensions)), _msg);
        };
        {
            var _err = (stdgo._internal.crypto.tls.Tls__checkalpn._checkALPN((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._alpnProtocols, (@:checkr _encryptedExtensions ?? throw "null pointer dereference")._alpnProtocol?.__copy__(), ((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) : stdgo.Error);
            if (_err != null) {
                @:check2r _c._sendAlert((120 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return _err;
            };
        };
        (@:checkr _c ?? throw "null pointer dereference")._clientProtocol = (@:checkr _encryptedExtensions ?? throw "null pointer dereference")._alpnProtocol?.__copy__();
        if (((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
            if ((@:checkr _encryptedExtensions ?? throw "null pointer dereference")._quicTransportParameters == null) {
                @:check2r _c._sendAlert((109 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: server did not send a quic_transport_parameters extension" : stdgo.GoString));
            };
            @:check2r _c._quicSetTransportParameters((@:checkr _encryptedExtensions ?? throw "null pointer dereference")._quicTransportParameters);
        } else {
            if ((@:checkr _encryptedExtensions ?? throw "null pointer dereference")._quicTransportParameters != null) {
                @:check2r _c._sendAlert((110 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: server sent an unexpected quic_transport_parameters extension" : stdgo.GoString));
            };
        };
        if ((!(@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._earlyData && (@:checkr _encryptedExtensions ?? throw "null pointer dereference")._earlyData : Bool)) {
            @:check2r _c._sendAlert((110 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent an unexpected early_data extension" : stdgo.GoString));
        };
        if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._earlyData && !(@:checkr _encryptedExtensions ?? throw "null pointer dereference")._earlyData : Bool)) {
            @:check2r _c._quicRejectedEarlyData();
        };
        if ((@:checkr _encryptedExtensions ?? throw "null pointer dereference")._earlyData) {
            if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._cipherSuite != ((@:checkr _c ?? throw "null pointer dereference")._cipherSuite)) {
                @:check2r _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: server accepted 0-RTT with the wrong cipher suite" : stdgo.GoString));
            };
            if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._alpnProtocol != ((@:checkr _c ?? throw "null pointer dereference")._clientProtocol)) {
                @:check2r _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: server accepted 0-RTT with the wrong ALPN" : stdgo.GoString));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _establishHandshakeKeys( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._ecdheKey.curve().newPublicKey((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._serverShare._data), _peerKey:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: invalid server key share" : stdgo.GoString));
        };
        var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._ecdheKey.eCDH(_peerKey), _sharedKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: invalid server key share" : stdgo.GoString));
        };
        var _earlySecret = (@:checkr _hs ?? throw "null pointer dereference")._earlySecret;
        if (!(@:checkr _hs ?? throw "null pointer dereference")._usingPSK) {
            _earlySecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._extract((null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>));
        };
        var _handshakeSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._extract(_sharedKey, @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret(_earlySecret, ("derived" : stdgo.GoString), (null : stdgo._internal.hash.Hash_hash.Hash)));
        var _clientSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret(_handshakeSecret, ("c hs traffic" : stdgo.GoString), (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._out._setTrafficSecret((@:checkr _hs ?? throw "null pointer dereference")._suite, (2 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), _clientSecret);
        var _serverSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret(_handshakeSecret, ("s hs traffic" : stdgo.GoString), (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setTrafficSecret((@:checkr _hs ?? throw "null pointer dereference")._suite, (2 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), _serverSecret);
        if (((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
            if (@:check2 (@:checkr _c ?? throw "null pointer dereference")._hand.len() != ((0 : stdgo.GoInt))) {
                @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            };
            @:check2r _c._quicSetWriteSecret((2 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id, _clientSecret);
            @:check2r _c._quicSetReadSecret((2 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id, _serverSecret);
        };
        _err = @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._writeKeyLog(("CLIENT_HANDSHAKE_TRAFFIC_SECRET" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._random, _clientSecret);
        if (_err != null) {
            @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return _err;
        };
        _err = @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._writeKeyLog(("SERVER_HANDSHAKE_TRAFFIC_SECRET" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._random, _serverSecret);
        if (_err != null) {
            @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return _err;
        };
        (@:checkr _hs ?? throw "null pointer dereference")._masterSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._extract((null : stdgo.Slice<stdgo.GoUInt8>), @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret(_handshakeSecret, ("derived" : stdgo.GoString), (null : stdgo._internal.hash.Hash_hash.Hash)));
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processServerHello( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        if (stdgo._internal.bytes.Bytes_equal.equal((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._random, stdgo._internal.crypto.tls.Tls__helloretryrequestrandom._helloRetryRequestRandom)) {
            @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent two HelloRetryRequest messages" : stdgo.GoString));
        };
        if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._cookie.length) != ((0 : stdgo.GoInt))) {
            @:check2r _c._sendAlert((110 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent a cookie in a normal ServerHello" : stdgo.GoString));
        };
        if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._selectedGroup != ((0 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
            @:check2r _c._sendAlert((50 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: malformed key_share extension" : stdgo.GoString));
        };
        if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._serverShare._group == ((0 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server did not send a key share" : stdgo.GoString));
        };
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__curveidforcurve._curveIDForCurve(@:check2r (@:checkr _hs ?? throw "null pointer dereference")._ecdheKey.curve()), _sentID:stdgo._internal.crypto.tls.Tls_curveid.CurveID = __tmp__._0, __113:Bool = __tmp__._1;
            if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._serverShare._group != (_sentID)) {
                @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: server selected unsupported group" : stdgo.GoString));
            };
        };
        if (!(@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._selectedIdentityPresent) {
            return (null : stdgo.Error);
        };
        if ((((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._selectedIdentity : stdgo.GoInt) >= ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._pskIdentities.length) : Bool)) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected an invalid PSK" : stdgo.GoString));
        };
        if ((((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._pskIdentities.length != (1 : stdgo.GoInt)) || ((@:checkr _hs ?? throw "null pointer dereference")._session == null || ((@:checkr _hs ?? throw "null pointer dereference")._session : Dynamic).__nil__) : Bool)) {
            return @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
        };
        var _pskSuite = stdgo._internal.crypto.tls.Tls__ciphersuitetls13byid._cipherSuiteTLS13ByID((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._cipherSuite);
        if ((_pskSuite == null || (_pskSuite : Dynamic).__nil__)) {
            return @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
        };
        if ((@:checkr _pskSuite ?? throw "null pointer dereference")._hash != ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._hash)) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected an invalid PSK and cipher suite pair" : stdgo.GoString));
        };
        (@:checkr _hs ?? throw "null pointer dereference")._usingPSK = true;
        (@:checkr _c ?? throw "null pointer dereference")._didResume = true;
        (@:checkr _c ?? throw "null pointer dereference")._peerCertificates = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._peerCertificates;
        (@:checkr _c ?? throw "null pointer dereference")._activeCertHandles = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._activeCertHandles;
        (@:checkr _c ?? throw "null pointer dereference")._verifiedChains = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._verifiedChains;
        (@:checkr _c ?? throw "null pointer dereference")._ocspResponse = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._ocspResponse;
        (@:checkr _c ?? throw "null pointer dereference")._scts = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._scts;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processHelloRetryRequest( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        var _chHash = (@:checkr _hs ?? throw "null pointer dereference")._transcript.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _hs ?? throw "null pointer dereference")._transcript.reset();
        (@:checkr _hs ?? throw "null pointer dereference")._transcript.write((new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(254 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (_chHash.length : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _hs ?? throw "null pointer dereference")._transcript.write(_chHash);
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw "null pointer dereference")._serverHello), (@:checkr _hs ?? throw "null pointer dereference")._transcript) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if ((((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._selectedGroup == (0 : stdgo._internal.crypto.tls.Tls_curveid.CurveID)) && ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._cookie == null) : Bool)) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent an unnecessary HelloRetryRequest message" : stdgo.GoString));
        };
        if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._cookie != null) {
            (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._cookie = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._cookie;
        };
        if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._serverShare._group != ((0 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
            @:check2r _c._sendAlert((50 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: received malformed key_share extension" : stdgo.GoString));
        };
        {
            var _curveID = ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._selectedGroup : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
            if (_curveID != ((0 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
                var _curveOK = (false : Bool);
                for (__169 => _id in (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._supportedCurves) {
                    if (_id == (_curveID)) {
                        _curveOK = true;
                        break;
                    };
                };
                if (!_curveOK) {
                    @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: server selected unsupported group" : stdgo.GoString));
                };
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__curveidforcurve._curveIDForCurve(@:check2r (@:checkr _hs ?? throw "null pointer dereference")._ecdheKey.curve()), _sentID:stdgo._internal.crypto.tls.Tls_curveid.CurveID = __tmp__._0, __178:Bool = __tmp__._1;
                    if (_sentID == (_curveID)) {
                        @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                        return stdgo._internal.errors.Errors_new_.new_(("tls: server sent an unnecessary HelloRetryRequest key_share" : stdgo.GoString));
                    };
                };
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__curveforcurveid._curveForCurveID(_curveID), __179:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                        return stdgo._internal.errors.Errors_new_.new_(("tls: CurvePreferences includes unsupported curve" : stdgo.GoString));
                    };
                };
                var __tmp__ = stdgo._internal.crypto.tls.Tls__generateecdhekey._generateECDHEKey(@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._rand(), _curveID), _key:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return _err;
                };
                (@:checkr _hs ?? throw "null pointer dereference")._ecdheKey = _key;
                (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._keyShares = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare>(1, 1, ...[({ _group : _curveID, _data : @:check2r @:check2r _key.publicKey().bytes() } : stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare)])) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare>);
            };
        };
        (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._raw = (null : stdgo.Slice<stdgo.GoUInt8>);
        if ((((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._pskIdentities.length) > (0 : stdgo.GoInt) : Bool)) {
            var _pskSuite = stdgo._internal.crypto.tls.Tls__ciphersuitetls13byid._cipherSuiteTLS13ByID((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._cipherSuite);
            if ((_pskSuite == null || (_pskSuite : Dynamic).__nil__)) {
                return @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            };
            if ((@:checkr _pskSuite ?? throw "null pointer dereference")._hash == ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._hash)) {
                var _ticketAge = (@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._time().sub(stdgo._internal.time.Time_unix.unix(((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._createdAt : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__()) : stdgo._internal.time.Time_duration.Duration);
                (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._pskIdentities[(0 : stdgo.GoInt)]._obfuscatedTicketAge = (((_ticketAge / (1000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) : stdgo.GoUInt32) + (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._session ?? throw "null pointer dereference")._ageAdd : stdgo.GoUInt32);
                var _transcript = ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._hash.new_() : stdgo._internal.hash.Hash_hash.Hash);
                _transcript.write((new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(254 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (_chHash.length : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                _transcript.write(_chHash);
                {
                    var _err = (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw "null pointer dereference")._serverHello), _transcript) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
                var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._hello._marshalWithoutBinders(), _helloBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                _transcript.write(_helloBytes);
                var _pskBinders = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(1, 1, ...[@:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._finishedHash((@:checkr _hs ?? throw "null pointer dereference")._binderKey, _transcript)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
                {
                    var _err = (@:check2r (@:checkr _hs ?? throw "null pointer dereference")._hello._updateBinders(_pskBinders) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            } else {
                (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._pskIdentities = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_pskidentity.T_pskIdentity>);
                (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._pskBinders = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            };
        };
        if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._earlyData) {
            (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._earlyData = false;
            @:check2r _c._quicRejectedEarlyData();
        };
        {
            var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface((@:checkr _hs ?? throw "null pointer dereference")._hello), (@:checkr _hs ?? throw "null pointer dereference")._transcript), __217:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = @:check2r _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>), _1 : false };
        }, _serverHello = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_serverHello)), _msg);
        };
        (@:checkr _hs ?? throw "null pointer dereference")._serverHello = _serverHello;
        {
            var _err = (@:check2r _hs._checkServerHelloOrHRR() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _sendDummyChangeCipherSpec( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
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
    static public function _checkServerHelloOrHRR( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._supportedVersion == ((0 : stdgo.GoUInt16))) {
            @:check2r _c._sendAlert((109 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected TLS 1.3 using the legacy version field" : stdgo.GoString));
        };
        if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._supportedVersion != ((772 : stdgo.GoUInt16))) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected an invalid version after a HelloRetryRequest" : stdgo.GoString));
        };
        if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._vers != ((771 : stdgo.GoUInt16))) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent an incorrect legacy version" : stdgo.GoString));
        };
        if ((((((((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._ocspStapling || (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._ticketSupported : Bool) || (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._extendedMasterSecret : Bool) || (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._secureRenegotiationSupported : Bool) || ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._secureRenegotiation.length) != ((0 : stdgo.GoInt)) : Bool) || ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._alpnProtocol.length) != ((0 : stdgo.GoInt)) : Bool) || ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._scts.length != (0 : stdgo.GoInt)) : Bool)) {
            @:check2r _c._sendAlert((110 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent a ServerHello extension forbidden in TLS 1.3" : stdgo.GoString));
        };
        if (!stdgo._internal.bytes.Bytes_equal.equal((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._sessionId, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._sessionId)) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server did not echo the legacy session ID" : stdgo.GoString));
        };
        if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._compressionMethod != ((0 : stdgo.GoUInt8))) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected unsupported compression format" : stdgo.GoString));
        };
        var _selectedSuite = stdgo._internal.crypto.tls.Tls__mutualciphersuitetls13._mutualCipherSuiteTLS13((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._cipherSuites, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._cipherSuite);
        if ((((@:checkr _hs ?? throw "null pointer dereference")._suite != null && (((@:checkr _hs ?? throw "null pointer dereference")._suite : Dynamic).__nil__ == null || !((@:checkr _hs ?? throw "null pointer dereference")._suite : Dynamic).__nil__)) && (_selectedSuite != (@:checkr _hs ?? throw "null pointer dereference")._suite) : Bool)) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server changed cipher suite after a HelloRetryRequest" : stdgo.GoString));
        };
        if ((_selectedSuite == null || (_selectedSuite : Dynamic).__nil__)) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server chose an unconfigured cipher suite" : stdgo.GoString));
        };
        (@:checkr _hs ?? throw "null pointer dereference")._suite = _selectedSuite;
        (@:checkr _c ?? throw "null pointer dereference")._cipherSuite = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _handshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        if (stdgo._internal.crypto.tls.Tls__needfips._needFIPS()) {
            return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: TLS 1.3 reached in FIPS mode" : stdgo.GoString));
        };
        if (((@:checkr _c ?? throw "null pointer dereference")._handshakes > (0 : stdgo.GoInt) : Bool)) {
            @:check2r _c._sendAlert((70 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected TLS 1.3 in a renegotiation" : stdgo.GoString));
        };
        if ((((@:checkr _hs ?? throw "null pointer dereference")._ecdheKey == null || ((@:checkr _hs ?? throw "null pointer dereference")._ecdheKey : Dynamic).__nil__) || ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._keyShares.length != (1 : stdgo.GoInt)) : Bool)) {
            return @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
        };
        {
            var _err = (@:check2r _hs._checkServerHelloOrHRR() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        (@:checkr _hs ?? throw "null pointer dereference")._transcript = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._hash.new_();
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw "null pointer dereference")._hello), (@:checkr _hs ?? throw "null pointer dereference")._transcript) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (stdgo._internal.bytes.Bytes_equal.equal((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._serverHello ?? throw "null pointer dereference")._random, stdgo._internal.crypto.tls.Tls__helloretryrequestrandom._helloRetryRequestRandom)) {
            {
                var _err = (@:check2r _hs._sendDummyChangeCipherSpec() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err = (@:check2r _hs._processHelloRetryRequest() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw "null pointer dereference")._serverHello), (@:checkr _hs ?? throw "null pointer dereference")._transcript) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        (@:checkr _c ?? throw "null pointer dereference")._buffering = true;
        {
            var _err = (@:check2r _hs._processServerHello() : stdgo.Error);
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
        {
            var _err = (@:check2r _hs._establishHandshakeKeys() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (@:check2r _hs._readServerParameters() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (@:check2r _hs._readServerCertificate() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (@:check2r _hs._readServerFinished() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (@:check2r _hs._sendClientCertificate() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (@:check2r _hs._sendClientFinished() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = @:check2r _c._flush(), __241:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._isHandshakeComplete.store(true);
        return (null : stdgo.Error);
    }
}
