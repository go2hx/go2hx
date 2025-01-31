package stdgo._internal.crypto.tls;
import stdgo._internal.internal.cpu.Cpu;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.rc4.Rc4;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.internal.boring.Boring;
import _internal.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305;
import stdgo._internal.container.list.List;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.x509.X509;
import stdgo._internal.runtime.Runtime;
import _internal.golang_dot_org.x.crypto.hkdf.Hkdf;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.time.Time;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
import _internal.golang_dot_org.x.crypto.cryptobyte.Cryptobyte;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_serverHandshakeStateTLS13_asInterface) class T_serverHandshakeStateTLS13_static_extension {
    @:keep
    @:tdfield
    static public function _readClientFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        var __tmp__ = @:check2r _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>), _1 : false };
        }, _finished = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_finished)), _msg);
        };
        if (!stdgo._internal.crypto.hmac.Hmac_equal.equal((@:checkr _hs ?? throw "null pointer dereference")._clientFinished, (@:checkr _finished ?? throw "null pointer dereference")._verifyData)) {
            @:check2r _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: invalid client finished hash" : stdgo.GoString));
        };
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setTrafficSecret((@:checkr _hs ?? throw "null pointer dereference")._suite, (3 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), (@:checkr _hs ?? throw "null pointer dereference")._trafficSecret);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readClientCertificate( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        if (!@:check2r _hs._requestClientCert()) {
            if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").verifyConnection != null) {
                {
                    var _err = ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").verifyConnection(@:check2r _c._connectionStateLocked()?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
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
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13>), _1 : false };
        }, _certMsg = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_certMsg)), _msg);
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
                    @:check2r _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return _err;
                };
            };
        };
        if (((@:checkr _certMsg ?? throw "null pointer dereference")._certificate.certificate.length) != ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = @:check2r _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash));
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
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
                @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_certVerify)), _msg);
            };
            if (!stdgo._internal.crypto.tls.Tls__isSupportedSignatureAlgorithm._isSupportedSignatureAlgorithm((@:checkr _certVerify ?? throw "null pointer dereference")._signatureAlgorithm, stdgo._internal.crypto.tls.Tls__supportedSignatureAlgorithms._supportedSignatureAlgorithms())) {
                @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: client certificate used with invalid signature algorithm" : stdgo.GoString));
            };
            var __tmp__ = stdgo._internal.crypto.tls.Tls__typeAndHashFromSignatureScheme._typeAndHashFromSignatureScheme((@:checkr _certVerify ?? throw "null pointer dereference")._signatureAlgorithm), _sigType:stdgo.GoUInt8 = __tmp__._0, _sigHash:stdgo._internal.crypto.Crypto_Hash.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            };
            if (((_sigType == (225 : stdgo.GoUInt8)) || (_sigHash == (3u32 : stdgo._internal.crypto.Crypto_Hash.Hash)) : Bool)) {
                @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: client certificate used with invalid signature algorithm" : stdgo.GoString));
            };
            var _signed = stdgo._internal.crypto.tls.Tls__signedMessage._signedMessage(_sigHash, stdgo.Go.str("TLS 1.3, client CertificateVerify", 0)?.__copy__(), (@:checkr _hs ?? throw "null pointer dereference")._transcript);
            {
                var _err = (stdgo._internal.crypto.tls.Tls__verifyHandshakeSignature._verifyHandshakeSignature(_sigType, stdgo.Go.toInterface((@:checkr (@:checkr _c ?? throw "null pointer dereference")._peerCertificates[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").publicKey), _sigHash, _signed, (@:checkr _certVerify ?? throw "null pointer dereference")._signature) : stdgo.Error);
                if (_err != null) {
                    @:check2r _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_((("tls: invalid signature by the client certificate: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
                };
            };
            {
                var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_certVerify), (@:checkr _hs ?? throw "null pointer dereference")._transcript) : stdgo.Error);
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
    static public function _sendSessionTickets( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        (@:checkr _hs ?? throw "null pointer dereference")._clientFinished = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._finishedHash((@:checkr _c ?? throw "null pointer dereference")._in._trafficSecret, (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        var _finishedMsg = (stdgo.Go.setRef(({ _verifyData : (@:checkr _hs ?? throw "null pointer dereference")._clientFinished } : stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>);
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_finishedMsg), (@:checkr _hs ?? throw "null pointer dereference")._transcript) : stdgo.Error);
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
    static public function _shouldSendSessionTickets( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):Bool {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
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
    static public function _sendServerFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        var _finished = (stdgo.Go.setRef(({ _verifyData : @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._finishedHash((@:checkr _c ?? throw "null pointer dereference")._out._trafficSecret, (@:checkr _hs ?? throw "null pointer dereference")._transcript) } : stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>);
        {
            var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_finished), (@:checkr _hs ?? throw "null pointer dereference")._transcript), __121:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        (@:checkr _hs ?? throw "null pointer dereference")._masterSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._extract((null : stdgo.Slice<stdgo.GoUInt8>), @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret((@:checkr _hs ?? throw "null pointer dereference")._handshakeSecret, ("derived" : stdgo.GoString), (null : stdgo._internal.hash.Hash_Hash.Hash)));
        (@:checkr _hs ?? throw "null pointer dereference")._trafficSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret((@:checkr _hs ?? throw "null pointer dereference")._masterSecret, ("c ap traffic" : stdgo.GoString), (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        var _serverSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret((@:checkr _hs ?? throw "null pointer dereference")._masterSecret, ("s ap traffic" : stdgo.GoString), (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._out._setTrafficSecret((@:checkr _hs ?? throw "null pointer dereference")._suite, (3 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _serverSecret);
        if (((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
            if (@:check2 (@:checkr _c ?? throw "null pointer dereference")._hand.len() != ((0 : stdgo.GoInt))) {
                @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            };
            @:check2r _c._quicSetWriteSecret((3 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id, _serverSecret);
        };
        var _err = (@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._writeKeyLog(("CLIENT_TRAFFIC_SECRET_0" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._random, (@:checkr _hs ?? throw "null pointer dereference")._trafficSecret) : stdgo.Error);
        if (_err != null) {
            @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        _err = @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._writeKeyLog(("SERVER_TRAFFIC_SECRET_0" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._random, _serverSecret);
        if (_err != null) {
            @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
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
    static public function _sendServerCertificate( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        if ((@:checkr _hs ?? throw "null pointer dereference")._usingPSK) {
            return (null : stdgo.Error);
        };
        if (@:check2r _hs._requestClientCert()) {
            var _certReq = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13>);
            (@:checkr _certReq ?? throw "null pointer dereference")._ocspStapling = true;
            (@:checkr _certReq ?? throw "null pointer dereference")._scts = true;
            (@:checkr _certReq ?? throw "null pointer dereference")._supportedSignatureAlgorithms = stdgo._internal.crypto.tls.Tls__supportedSignatureAlgorithms._supportedSignatureAlgorithms();
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
        var _certMsg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13>);
        (@:checkr _certMsg ?? throw "null pointer dereference")._certificate = ((@:checkr _hs ?? throw "null pointer dereference")._cert : stdgo._internal.crypto.tls.Tls_Certificate.Certificate)?.__copy__();
        (@:checkr _certMsg ?? throw "null pointer dereference")._scts = ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._scts && (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._cert ?? throw "null pointer dereference").signedCertificateTimestamps.length) > (0 : stdgo.GoInt) : Bool) : Bool);
        (@:checkr _certMsg ?? throw "null pointer dereference")._ocspStapling = ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._ocspStapling && (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._cert ?? throw "null pointer dereference").oCSPStaple.length) > (0 : stdgo.GoInt) : Bool) : Bool);
        {
            var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_certMsg), (@:checkr _hs ?? throw "null pointer dereference")._transcript), __153:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _certVerifyMsg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg>);
        (@:checkr _certVerifyMsg ?? throw "null pointer dereference")._hasSignatureAlgorithm = true;
        (@:checkr _certVerifyMsg ?? throw "null pointer dereference")._signatureAlgorithm = (@:checkr _hs ?? throw "null pointer dereference")._sigAlg;
        var __tmp__ = stdgo._internal.crypto.tls.Tls__typeAndHashFromSignatureScheme._typeAndHashFromSignatureScheme((@:checkr _hs ?? throw "null pointer dereference")._sigAlg), _sigType:stdgo.GoUInt8 = __tmp__._0, _sigHash:stdgo._internal.crypto.Crypto_Hash.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
        };
        var _signed = stdgo._internal.crypto.tls.Tls__signedMessage._signedMessage(_sigHash, stdgo.Go.str("TLS 1.3, server CertificateVerify", 0)?.__copy__(), (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        var _signOpts = (stdgo.Go.asInterface(_sigHash) : stdgo._internal.crypto.Crypto_SignerOpts.SignerOpts);
        if (_sigType == ((226 : stdgo.GoUInt8))) {
            _signOpts = stdgo.Go.asInterface((stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt), hash : _sigHash } : stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions>));
        };
        var __tmp__ = (stdgo.Go.typeAssert(((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._cert ?? throw "null pointer dereference").privateKey : stdgo._internal.crypto.Crypto_Signer.Signer)) : stdgo._internal.crypto.Crypto_Signer.Signer).sign(@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._rand(), _signed, _signOpts), _sig:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            var _public = ((stdgo.Go.typeAssert(((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._cert ?? throw "null pointer dereference").privateKey : stdgo._internal.crypto.Crypto_Signer.Signer)) : stdgo._internal.crypto.Crypto_Signer.Signer).public_() : stdgo._internal.crypto.Crypto_PublicKey.PublicKey);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_public : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>), _1 : false };
                }, _rsaKey = __tmp__._0, _ok = __tmp__._1;
                if (((_ok && _sigType == ((226 : stdgo.GoUInt8)) : Bool) && ((@:check2r (@:checkr _rsaKey ?? throw "null pointer dereference").n.bitLen() / (8 : stdgo.GoInt) : stdgo.GoInt) < ((_sigHash.size() * (2 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                    @:check2r _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                } else {
                    @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
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
    static public function _requestClientCert( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):Bool {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        return (((@:checkr (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientAuth >= (1 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType) : Bool) && !(@:checkr _hs ?? throw "null pointer dereference")._usingPSK : Bool);
    }
    @:keep
    @:tdfield
    static public function _sendServerParameters( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw "null pointer dereference")._clientHello), (@:checkr _hs ?? throw "null pointer dereference")._transcript) : stdgo.Error);
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
        (@:checkr _hs ?? throw "null pointer dereference")._handshakeSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._extract((@:checkr _hs ?? throw "null pointer dereference")._sharedKey, @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret(_earlySecret, ("derived" : stdgo.GoString), (null : stdgo._internal.hash.Hash_Hash.Hash)));
        var _clientSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret((@:checkr _hs ?? throw "null pointer dereference")._handshakeSecret, ("c hs traffic" : stdgo.GoString), (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setTrafficSecret((@:checkr _hs ?? throw "null pointer dereference")._suite, (2 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _clientSecret);
        var _serverSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret((@:checkr _hs ?? throw "null pointer dereference")._handshakeSecret, ("s hs traffic" : stdgo.GoString), (@:checkr _hs ?? throw "null pointer dereference")._transcript);
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._out._setTrafficSecret((@:checkr _hs ?? throw "null pointer dereference")._suite, (2 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), _serverSecret);
        if (((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
            if (@:check2 (@:checkr _c ?? throw "null pointer dereference")._hand.len() != ((0 : stdgo.GoInt))) {
                @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            };
            @:check2r _c._quicSetWriteSecret((2 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id, _serverSecret);
            @:check2r _c._quicSetReadSecret((2 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id, _clientSecret);
        };
        var _err = (@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._writeKeyLog(("CLIENT_HANDSHAKE_TRAFFIC_SECRET" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._random, _clientSecret) : stdgo.Error);
        if (_err != null) {
            @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        _err = @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._writeKeyLog(("SERVER_HANDSHAKE_TRAFFIC_SECRET" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._random, _serverSecret);
        if (_err != null) {
            @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        var _encryptedExtensions = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_encryptedExtensionsMsg.T_encryptedExtensionsMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_encryptedExtensionsMsg.T_encryptedExtensionsMsg>);
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
    static public function _doHelloRetryRequest( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>, _selectedGroup:stdgo._internal.crypto.tls.Tls_CurveID.CurveID):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw "null pointer dereference")._clientHello), (@:checkr _hs ?? throw "null pointer dereference")._transcript) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _chHash = (@:checkr _hs ?? throw "null pointer dereference")._transcript.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _hs ?? throw "null pointer dereference")._transcript.reset();
        (@:checkr _hs ?? throw "null pointer dereference")._transcript.write((new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(254 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (_chHash.length : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _hs ?? throw "null pointer dereference")._transcript.write(_chHash);
        var _helloRetryRequest = (stdgo.Go.setRef(({ _vers : (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._vers, _random : stdgo._internal.crypto.tls.Tls__helloRetryRequestRandom._helloRetryRequestRandom, _sessionId : (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._sessionId, _cipherSuite : (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._cipherSuite, _compressionMethod : (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._compressionMethod, _supportedVersion : (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._supportedVersion, _selectedGroup : _selectedGroup } : stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>);
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
        var __tmp__ = @:check2r _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>), _1 : false };
        }, _clientHello = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_clientHello)), _msg);
        };
        if ((((@:checkr _clientHello ?? throw "null pointer dereference")._keyShares.length != (1 : stdgo.GoInt)) || ((@:checkr _clientHello ?? throw "null pointer dereference")._keyShares[(0 : stdgo.GoInt)]._group != _selectedGroup) : Bool)) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: client sent invalid key share in second ClientHello" : stdgo.GoString));
        };
        if ((@:checkr _clientHello ?? throw "null pointer dereference")._earlyData) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: client indicated early data in second ClientHello" : stdgo.GoString));
        };
        if (stdgo._internal.crypto.tls.Tls__illegalClientHelloChange._illegalClientHelloChange(_clientHello, (@:checkr _hs ?? throw "null pointer dereference")._clientHello)) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: client illegally modified second ClientHello" : stdgo.GoString));
        };
        (@:checkr _hs ?? throw "null pointer dereference")._clientHello = _clientHello;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _sendDummyChangeCipherSpec( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
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
    static public function _pickCertificate( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        if ((@:checkr _hs ?? throw "null pointer dereference")._usingPSK) {
            return (null : stdgo.Error);
        };
        if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._supportedSignatureAlgorithms.length) == ((0 : stdgo.GoInt))) {
            return @:check2r _c._sendAlert((109 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
        };
        var __tmp__ = @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._getCertificate(stdgo._internal.crypto.tls.Tls__clientHelloInfo._clientHelloInfo((@:checkr _hs ?? throw "null pointer dereference")._ctx, _c, (@:checkr _hs ?? throw "null pointer dereference")._clientHello)), _certificate:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.crypto.tls.Tls__errNoCertificates._errNoCertificates))) {
                @:check2r _c._sendAlert((112 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            } else {
                @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            };
            return _err;
        };
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__selectSignatureScheme._selectSignatureScheme((@:checkr _c ?? throw "null pointer dereference")._vers, _certificate, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._supportedSignatureAlgorithms);
            (@:checkr _hs ?? throw "null pointer dereference")._sigAlg = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        (@:checkr _hs ?? throw "null pointer dereference")._cert = _certificate;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _checkForResumption( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
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
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: invalid or missing PSK binders" : stdgo.GoString));
        };
        if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._pskIdentities.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        for (_i => _identity in (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._pskIdentities) {
            if ((_i >= (5 : stdgo.GoInt) : Bool)) {
                break;
            };
            var _sessionState:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>);
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
                    var __tmp__ = stdgo._internal.crypto.tls.Tls_parseSessionState.parseSessionState(_plaintext);
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
            var _createdAt = (stdgo._internal.time.Time_unix.unix(((@:checkr _sessionState ?? throw "null pointer dereference")._createdAt : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__() : stdgo._internal.time.Time_Time.Time);
            if ((@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._time().sub(_createdAt?.__copy__()) > (604800000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                continue;
            };
            var _pskSuite = stdgo._internal.crypto.tls.Tls__cipherSuiteTLS13ByID._cipherSuiteTLS13ByID((@:checkr _sessionState ?? throw "null pointer dereference")._cipherSuite);
            if (((_pskSuite == null || (_pskSuite : Dynamic).__nil__) || ((@:checkr _pskSuite ?? throw "null pointer dereference")._hash != (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._hash) : Bool)) {
                continue;
            };
            var _sessionHasClientCerts = (((@:checkr _sessionState ?? throw "null pointer dereference")._peerCertificates.length) != ((0 : stdgo.GoInt)) : Bool);
            var _needClientCerts = (stdgo._internal.crypto.tls.Tls__requiresClientCert._requiresClientCert((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientAuth) : Bool);
            if ((_needClientCerts && !_sessionHasClientCerts : Bool)) {
                continue;
            };
            if ((_sessionHasClientCerts && ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientAuth == (0 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType)) : Bool)) {
                continue;
            };
            if ((_sessionHasClientCerts && @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._time().after((@:checkr (@:checkr _sessionState ?? throw "null pointer dereference")._peerCertificates[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").notAfter?.__copy__()) : Bool)) {
                continue;
            };
            if (((_sessionHasClientCerts && ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientAuth >= (3 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType) : Bool) : Bool) && ((@:checkr _sessionState ?? throw "null pointer dereference")._verifiedChains.length == (0 : stdgo.GoInt)) : Bool)) {
                continue;
            };
            (@:checkr _hs ?? throw "null pointer dereference")._earlySecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._extract((@:checkr _sessionState ?? throw "null pointer dereference")._secret, (null : stdgo.Slice<stdgo.GoUInt8>));
            var _binderKey = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret((@:checkr _hs ?? throw "null pointer dereference")._earlySecret, ("res binder" : stdgo.GoString), (null : stdgo._internal.hash.Hash_Hash.Hash));
            var _transcript = (stdgo._internal.crypto.tls.Tls__cloneHash._cloneHash((@:checkr _hs ?? throw "null pointer dereference")._transcript, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._hash) : stdgo._internal.hash.Hash_Hash.Hash);
            if (_transcript == null) {
                @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: failed to clone hash" : stdgo.GoString));
            };
            var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._clientHello._marshalWithoutBinders(), _clientHelloBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return _err;
            };
            _transcript.write(_clientHelloBytes);
            var _pskBinder = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._finishedHash(_binderKey, _transcript);
            if (!stdgo._internal.crypto.hmac.Hmac_equal.equal((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._pskBinders[(_i : stdgo.GoInt)], _pskBinder)) {
                @:check2r _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_(("tls: invalid PSK binder" : stdgo.GoString));
            };
            if ((((((((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__)) && (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._earlyData : Bool) && _i == ((0 : stdgo.GoInt)) : Bool) && (@:checkr _sessionState ?? throw "null pointer dereference").earlyData : Bool) && (@:checkr _sessionState ?? throw "null pointer dereference")._cipherSuite == ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id) : Bool) && ((@:checkr _sessionState ?? throw "null pointer dereference")._alpnProtocol == (@:checkr _c ?? throw "null pointer dereference")._clientProtocol) : Bool)) {
                (@:checkr _hs ?? throw "null pointer dereference")._earlyData = true;
                var _transcript = ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._hash.new_() : stdgo._internal.hash.Hash_Hash.Hash);
                {
                    var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw "null pointer dereference")._clientHello), _transcript) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
                var _earlyTrafficSecret = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._suite._deriveSecret((@:checkr _hs ?? throw "null pointer dereference")._earlySecret, ("c e traffic" : stdgo.GoString), _transcript);
                @:check2r _c._quicSetReadSecret((1 : stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id, _earlyTrafficSecret);
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
    static public function _processClientHello( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _selectedProto_5978526:stdgo.GoString = ("" : stdgo.GoString);
        var _err_5975157:stdgo.Error = (null : stdgo.Error);
        var _key_5977988:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>);
        var _err_5977698:stdgo.Error = (null : stdgo.Error);
        var _group_5977393:stdgo._internal.crypto.tls.Tls_CurveID.CurveID = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_CurveID.CurveID);
        var _i_5977135_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _peerKey_5978203:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey> = (null : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>);
        var _err_5977993:stdgo.Error = (null : stdgo.Error);
        var _ks_5977180:stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare = ({} : stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare);
        var _preferredGroup_5977117:stdgo._internal.crypto.tls.Tls_CurveID.CurveID = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_CurveID.CurveID);
        var _suiteID_5976500:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _c_5973372:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        var _ok_5977834:Bool = false;
        var _clientKeyShare_5977068:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare>);
        var _selectedGroup_5977041:stdgo._internal.crypto.tls.Tls_CurveID.CurveID = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_CurveID.CurveID);
        var _i_5976511_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _preferenceList_5976316:stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
        var _id_5974467:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _i_5974473_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5977402_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5977186_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _c_5973372 = (@:checkr _hs ?? throw "null pointer dereference")._c;
                    (@:checkr _hs ?? throw "null pointer dereference")._hello = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>);
                    (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._vers = (771 : stdgo.GoUInt16);
                    (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._supportedVersion = (@:checkr _c_5973372 ?? throw "null pointer dereference")._vers;
                    if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._supportedVersions.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5973667i32;
                    } else {
                        _gotoNext = 5974460i32;
                    };
                } else if (__value__ == (5973667i32)) {
                    @:check2r _c_5973372._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client used the legacy version field to negotiate TLS 1.3" : stdgo.GoString));
                    _gotoNext = 5974460i32;
                } else if (__value__ == (5974460i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._cipherSuites.length)) {
                        _gotoNext = 5974878i32;
                    } else {
                        _gotoNext = 5974883i32;
                    };
                } else if (__value__ == (5974464i32)) {
                    _i_5974473_0++;
                    _gotoNext = 5974879i32;
                } else if (__value__ == (5974507i32)) {
                    _id_5974467 = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._cipherSuites[(_i_5974473_0 : stdgo.GoInt)];
                    if (_id_5974467 == ((22016 : stdgo.GoUInt16))) {
                        _gotoNext = 5974538i32;
                    } else {
                        _gotoNext = 5974464i32;
                    };
                } else if (__value__ == (5974538i32)) {
                    if (((@:checkr _c_5973372 ?? throw "null pointer dereference")._vers < @:check2r (@:checkr _c_5973372 ?? throw "null pointer dereference")._config._maxSupportedVersion(false) : Bool)) {
                        _gotoNext = 5974739i32;
                    } else {
                        _gotoNext = 5974868i32;
                    };
                } else if (__value__ == (5974739i32)) {
                    @:check2r _c_5973372._sendAlert((86 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client using inappropriate protocol fallback" : stdgo.GoString));
                    _gotoNext = 5974868i32;
                } else if (__value__ == (5974868i32)) {
                    _gotoNext = 5974883i32;
                } else if (__value__ == (5974878i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._cipherSuites[(0i32 : stdgo.GoInt)];
                        _i_5974473_0 = __tmp__0;
                        _id_5974467 = __tmp__1;
                    };
                    _gotoNext = 5974879i32;
                } else if (__value__ == (5974879i32)) {
                    if (_i_5974473_0 < ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._cipherSuites.length)) {
                        _gotoNext = 5974507i32;
                    } else {
                        _gotoNext = 5974883i32;
                    };
                } else if (__value__ == (5974883i32)) {
                    if ((((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._compressionMethods.length != (1 : stdgo.GoInt)) || ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._compressionMethods[(0 : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5974991i32;
                    } else {
                        _gotoNext = 5975115i32;
                    };
                } else if (__value__ == (5974991i32)) {
                    @:check2r _c_5973372._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: TLS 1.3 client supports illegal compression methods" : stdgo.GoString));
                    _gotoNext = 5975115i32;
                } else if (__value__ == (5975115i32)) {
                    (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._random = (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(@:check2r (@:checkr _c_5973372 ?? throw "null pointer dereference")._config._rand(), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._random);
                            _err_5975157 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_5975157 != null) {
                            _gotoNext = 5975222i32;
                        } else {
                            _gotoNext = 5975276i32;
                        };
                    };
                } else if (__value__ == (5975222i32)) {
                    @:check2r _c_5973372._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return _err_5975157;
                    _gotoNext = 5975276i32;
                } else if (__value__ == (5975276i32)) {
                    if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._secureRenegotiation.length) != ((0 : stdgo.GoInt))) {
                        _gotoNext = 5975324i32;
                    } else {
                        _gotoNext = 5975452i32;
                    };
                } else if (__value__ == (5975324i32)) {
                    @:check2r _c_5973372._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: initial handshake had non-empty renegotiation extension" : stdgo.GoString));
                    _gotoNext = 5975452i32;
                } else if (__value__ == (5975452i32)) {
                    if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._earlyData && ((@:checkr _c_5973372 ?? throw "null pointer dereference")._quic != null && (((@:checkr _c_5973372 ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c_5973372 ?? throw "null pointer dereference")._quic : Dynamic).__nil__)) : Bool)) {
                        _gotoNext = 5975497i32;
                    } else if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._earlyData) {
                        _gotoNext = 5975686i32;
                    } else {
                        _gotoNext = 5976222i32;
                    };
                } else if (__value__ == (5975497i32)) {
                    if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._pskIdentities.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5975543i32;
                    } else {
                        _gotoNext = 5976222i32;
                    };
                } else if (__value__ == (5975543i32)) {
                    @:check2r _c_5973372._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: early_data without pre_shared_key" : stdgo.GoString));
                    _gotoNext = 5976222i32;
                } else if (__value__ == (5975686i32)) {
                    @:check2r _c_5973372._sendAlert((110 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client sent unexpected early data" : stdgo.GoString));
                    _gotoNext = 5976222i32;
                } else if (__value__ == (5976222i32)) {
                    (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._sessionId = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._sessionId;
                    (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._compressionMethod = (0 : stdgo.GoUInt8);
                    _preferenceList_5976316 = stdgo._internal.crypto.tls.Tls__defaultCipherSuitesTLS13._defaultCipherSuitesTLS13;
                    if ((!stdgo._internal.crypto.tls.Tls__hasAESGCMHardwareSupport._hasAESGCMHardwareSupport || !stdgo._internal.crypto.tls.Tls__aesgcmPreferred._aesgcmPreferred((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._cipherSuites) : Bool)) {
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
                    (@:checkr _hs ?? throw "null pointer dereference")._suite = stdgo._internal.crypto.tls.Tls__mutualCipherSuiteTLS13._mutualCipherSuiteTLS13((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._cipherSuites, _suiteID_5976500);
                    if (((@:checkr _hs ?? throw "null pointer dereference")._suite != null && (((@:checkr _hs ?? throw "null pointer dereference")._suite : Dynamic).__nil__ == null || !((@:checkr _hs ?? throw "null pointer dereference")._suite : Dynamic).__nil__))) {
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
                    if (((@:checkr _hs ?? throw "null pointer dereference")._suite == null || ((@:checkr _hs ?? throw "null pointer dereference")._suite : Dynamic).__nil__)) {
                        _gotoNext = 5976667i32;
                    } else {
                        _gotoNext = 5976790i32;
                    };
                } else if (__value__ == (5976667i32)) {
                    @:check2r _c_5973372._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: no cipher suite supported by both client and server" : stdgo.GoString));
                    _gotoNext = 5976790i32;
                } else if (__value__ == (5976790i32)) {
                    (@:checkr _c_5973372 ?? throw "null pointer dereference")._cipherSuite = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id;
                    (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._cipherSuite = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id;
                    (@:checkr _hs ?? throw "null pointer dereference")._transcript = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._hash.new_();
                    _gotoNext = 5977093i32;
                } else if (__value__ == (5977093i32)) {
                    if ((0i32 : stdgo.GoInt) < (@:check2r (@:checkr _c_5973372 ?? throw "null pointer dereference")._config._curvePreferences().length)) {
                        _gotoNext = 5977518i32;
                    } else {
                        _gotoNext = 5977522i32;
                    };
                } else if (__value__ == (5977114i32)) {
                    _i_5977135_0++;
                    _gotoNext = 5977519i32;
                } else if (__value__ == (5977169i32)) {
                    _preferredGroup_5977117 = @:check2r (@:checkr _c_5973372 ?? throw "null pointer dereference")._config._curvePreferences()[(_i_5977135_0 : stdgo.GoInt)];
                    if ((0i32 : stdgo.GoInt) < ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._keyShares.length)) {
                        _gotoNext = 5977339i32;
                    } else {
                        _gotoNext = 5977344i32;
                    };
                } else if (__value__ == (5977177i32)) {
                    _i_5977186_0++;
                    _gotoNext = 5977340i32;
                } else if (__value__ == (5977217i32)) {
                    _ks_5977180 = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._keyShares[(_i_5977186_0 : stdgo.GoInt)];
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
                        final __tmp__1 = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._keyShares[(0i32 : stdgo.GoInt)];
                        _i_5977186_0 = __tmp__0;
                        _ks_5977180 = __tmp__1;
                    };
                    _gotoNext = 5977340i32;
                } else if (__value__ == (5977340i32)) {
                    if (_i_5977186_0 < ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._keyShares.length)) {
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
                    if ((0i32 : stdgo.GoInt) < ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._supportedCurves.length)) {
                        _gotoNext = 5977515i32;
                    } else {
                        _gotoNext = 5977114i32;
                    };
                } else if (__value__ == (5977390i32)) {
                    _i_5977402_0++;
                    _gotoNext = 5977516i32;
                } else if (__value__ == (5977439i32)) {
                    _group_5977393 = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._supportedCurves[(_i_5977402_0 : stdgo.GoInt)];
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
                        final __tmp__1 = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._supportedCurves[(0i32 : stdgo.GoInt)];
                        _i_5977402_0 = __tmp__0;
                        _group_5977393 = __tmp__1;
                    };
                    _gotoNext = 5977516i32;
                } else if (__value__ == (5977516i32)) {
                    if (_i_5977402_0 < ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._supportedCurves.length)) {
                        _gotoNext = 5977439i32;
                    } else {
                        _gotoNext = 5977114i32;
                    };
                } else if (__value__ == (5977518i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = @:check2r (@:checkr _c_5973372 ?? throw "null pointer dereference")._config._curvePreferences()[(0i32 : stdgo.GoInt)];
                        _i_5977135_0 = __tmp__0;
                        _preferredGroup_5977117 = __tmp__1;
                    };
                    _gotoNext = 5977519i32;
                } else if (__value__ == (5977519i32)) {
                    if (_i_5977135_0 < (@:check2r (@:checkr _c_5973372 ?? throw "null pointer dereference")._config._curvePreferences().length)) {
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
                    @:check2r _c_5973372._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
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
                        _err_5977698 = @:check2r _hs._doHelloRetryRequest(_selectedGroup_5977041);
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
                    _clientKeyShare_5977068 = (stdgo.Go.setRef((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._keyShares[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare>);
                    _gotoNext = 5977828i32;
                } else if (__value__ == (5977828i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.tls.Tls__curveForCurveID._curveForCurveID(_selectedGroup_5977041);
                            _ok_5977834 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_5977834) {
                            _gotoNext = 5977876i32;
                        } else {
                            _gotoNext = 5977988i32;
                        };
                    };
                } else if (__value__ == (5977876i32)) {
                    @:check2r _c_5973372._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: CurvePreferences includes unsupported curve" : stdgo.GoString));
                    _gotoNext = 5977988i32;
                } else if (__value__ == (5977988i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.tls.Tls__generateECDHEKey._generateECDHEKey(@:check2r (@:checkr _c_5973372 ?? throw "null pointer dereference")._config._rand(), _selectedGroup_5977041);
                        _key_5977988 = @:tmpset0 __tmp__._0;
                        _err_5977993 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_5977993 != null) {
                        _gotoNext = 5978064i32;
                    } else {
                        _gotoNext = 5978117i32;
                    };
                } else if (__value__ == (5978064i32)) {
                    @:check2r _c_5973372._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return _err_5977993;
                    _gotoNext = 5978117i32;
                } else if (__value__ == (5978117i32)) {
                    (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._serverShare = ({ _group : _selectedGroup_5977041, _data : @:check2r @:check2r _key_5977988.publicKey().bytes() } : stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare);
                    {
                        var __tmp__ = @:check2r _key_5977988.curve().newPublicKey((@:checkr _clientKeyShare_5977068 ?? throw "null pointer dereference")._data);
                        _peerKey_5978203 = @:tmpset0 __tmp__._0;
                        _err_5977993 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_5977993 != null) {
                        _gotoNext = 5978280i32;
                    } else {
                        _gotoNext = 5978376i32;
                    };
                } else if (__value__ == (5978280i32)) {
                    @:check2r _c_5973372._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: invalid client key share" : stdgo.GoString));
                    _gotoNext = 5978376i32;
                } else if (__value__ == (5978376i32)) {
                    {
                        var __tmp__ = @:check2r _key_5977988.eCDH(_peerKey_5978203);
                        (@:checkr _hs ?? throw "null pointer dereference")._sharedKey = @:tmpset0 __tmp__._0;
                        _err_5977993 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_5977993 != null) {
                        _gotoNext = 5978429i32;
                    } else {
                        _gotoNext = 5978526i32;
                    };
                } else if (__value__ == (5978429i32)) {
                    @:check2r _c_5973372._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: invalid client key share" : stdgo.GoString));
                    _gotoNext = 5978526i32;
                } else if (__value__ == (5978526i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.tls.Tls__negotiateALPN._negotiateALPN((@:checkr (@:checkr _c_5973372 ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").nextProtos, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._alpnProtocols, ((@:checkr _c_5973372 ?? throw "null pointer dereference")._quic != null && (((@:checkr _c_5973372 ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c_5973372 ?? throw "null pointer dereference")._quic : Dynamic).__nil__)));
                        _selectedProto_5978526 = @:tmpset0 __tmp__._0?.__copy__();
                        _err_5977993 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_5977993 != null) {
                        _gotoNext = 5978643i32;
                    } else {
                        _gotoNext = 5978704i32;
                    };
                } else if (__value__ == (5978643i32)) {
                    @:check2r _c_5973372._sendAlert((120 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return _err_5977993;
                    _gotoNext = 5978704i32;
                } else if (__value__ == (5978704i32)) {
                    (@:checkr _c_5973372 ?? throw "null pointer dereference")._clientProtocol = _selectedProto_5978526?.__copy__();
                    if (((@:checkr _c_5973372 ?? throw "null pointer dereference")._quic != null && (((@:checkr _c_5973372 ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c_5973372 ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
                        _gotoNext = 5978756i32;
                    } else {
                        _gotoNext = 5979047i32;
                    };
                } else if (__value__ == (5978756i32)) {
                    if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._quicTransportParameters == null) {
                        _gotoNext = 5978809i32;
                    } else {
                        _gotoNext = 5978970i32;
                    };
                } else if (__value__ == (5978809i32)) {
                    @:check2r _c_5973372._sendAlert((109 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client did not send a quic_transport_parameters extension" : stdgo.GoString));
                    _gotoNext = 5978970i32;
                } else if (__value__ == (5978970i32)) {
                    @:check2r _c_5973372._quicSetTransportParameters((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._quicTransportParameters);
                    _gotoNext = 5979244i32;
                } else if (__value__ == (5979047i32)) {
                    _gotoNext = 5979047i32;
                    if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._quicTransportParameters != null) {
                        _gotoNext = 5979100i32;
                    } else {
                        _gotoNext = 5979244i32;
                    };
                } else if (__value__ == (5979100i32)) {
                    @:check2r _c_5973372._sendAlert((110 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client sent an unexpected quic_transport_parameters extension" : stdgo.GoString));
                    _gotoNext = 5979244i32;
                } else if (__value__ == (5979244i32)) {
                    (@:checkr _c_5973372 ?? throw "null pointer dereference")._serverName = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._serverName?.__copy__();
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _handshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        if (stdgo._internal.crypto.tls.Tls__needFIPS._needFIPS()) {
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
