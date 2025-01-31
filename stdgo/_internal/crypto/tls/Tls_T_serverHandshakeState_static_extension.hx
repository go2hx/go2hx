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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_serverHandshakeState_asInterface) class T_serverHandshakeState_static_extension {
    @:keep
    @:tdfield
    static public function _sendFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>, _out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        {
            var _err = (@:check2r _c._writeChangeCipherRecord() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _finished = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>);
        (@:checkr _finished ?? throw "null pointer dereference")._verifyData = (@:checkr _hs ?? throw "null pointer dereference")._finishedHash._serverSum((@:checkr _hs ?? throw "null pointer dereference")._masterSecret);
        {
            var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_finished), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __121:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        _out.__copyTo__((@:checkr _finished ?? throw "null pointer dereference")._verifyData);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _sendSessionTicket( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        if (!(@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._ticketSupported) {
            return (null : stdgo.Error);
        };
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        var _m = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsg.T_newSessionTicketMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsg.T_newSessionTicketMsg>);
        var __tmp__ = @:check2r _c._sessionState(), _state:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        (@:checkr _state ?? throw "null pointer dereference")._secret = (@:checkr _hs ?? throw "null pointer dereference")._masterSecret;
        if (((@:checkr _hs ?? throw "null pointer dereference")._sessionState != null && (((@:checkr _hs ?? throw "null pointer dereference")._sessionState : Dynamic).__nil__ == null || !((@:checkr _hs ?? throw "null pointer dereference")._sessionState : Dynamic).__nil__))) {
            (@:checkr _state ?? throw "null pointer dereference")._createdAt = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._sessionState ?? throw "null pointer dereference")._createdAt;
        };
        if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").wrapSession != null) {
            {
                var __tmp__ = (@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").wrapSession(@:check2r _c._connectionStateLocked()?.__copy__(), _state);
                (@:checkr _m ?? throw "null pointer dereference")._ticket = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        } else {
            var __tmp__ = @:check2r _state.bytes(), _stateBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            {
                var __tmp__ = @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._encryptTicket(_stateBytes, (@:checkr _c ?? throw "null pointer dereference")._ticketKeys);
                (@:checkr _m ?? throw "null pointer dereference")._ticket = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_m), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __141:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>, _out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        {
            var _err = (@:check2r _c._readChangeCipherSpec() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = @:check2r _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>), _1 : false };
        }, _clientFinished = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_clientFinished)), _msg);
        };
        var _verify = (@:checkr _hs ?? throw "null pointer dereference")._finishedHash._clientSum((@:checkr _hs ?? throw "null pointer dereference")._masterSecret);
        if (((_verify.length != ((@:checkr _clientFinished ?? throw "null pointer dereference")._verifyData.length)) || (stdgo._internal.crypto.subtle.Subtle_constantTimeCompare.constantTimeCompare(_verify, (@:checkr _clientFinished ?? throw "null pointer dereference")._verifyData) != (1 : stdgo.GoInt)) : Bool)) {
            @:check2r _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: client\'s Finished message is incorrect" : stdgo.GoString));
        };
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_clientFinished), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _out.__copyTo__(_verify);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _establishKeys( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        var __tmp__ = stdgo._internal.crypto.tls.Tls__keysFromMasterSecret._keysFromMasterSecret((@:checkr _c ?? throw "null pointer dereference")._vers, (@:checkr _hs ?? throw "null pointer dereference")._suite, (@:checkr _hs ?? throw "null pointer dereference")._masterSecret, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._random, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._random, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._macLen, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._keyLen, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._ivLen), _clientMAC:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _serverMAC:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _clientKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._2, _serverKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._3, _clientIV:stdgo.Slice<stdgo.GoUInt8> = __tmp__._4, _serverIV:stdgo.Slice<stdgo.GoUInt8> = __tmp__._5;
        var __0:stdgo.AnyInterface = (null : stdgo.AnyInterface), __1:stdgo.AnyInterface = (null : stdgo.AnyInterface);
var _serverCipher = __1, _clientCipher = __0;
        var __0:stdgo._internal.hash.Hash_Hash.Hash = (null : stdgo._internal.hash.Hash_Hash.Hash), __1:stdgo._internal.hash.Hash_Hash.Hash = (null : stdgo._internal.hash.Hash_Hash.Hash);
var _serverHash = __1, _clientHash = __0;
        if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._aead == null) {
            _clientCipher = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._cipher(_clientKey, _clientIV, true);
            _clientHash = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._mac(_clientMAC);
            _serverCipher = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._cipher(_serverKey, _serverIV, false);
            _serverHash = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._mac(_serverMAC);
        } else {
            _clientCipher = stdgo.Go.toInterface((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._aead(_clientKey, _clientIV));
            _serverCipher = stdgo.Go.toInterface((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._aead(_serverKey, _serverIV));
        };
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._prepareCipherSpec((@:checkr _c ?? throw "null pointer dereference")._vers, _clientCipher, _clientHash);
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._out._prepareCipherSpec((@:checkr _c ?? throw "null pointer dereference")._vers, _serverCipher, _serverHash);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _doFullHandshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._ocspStapling && (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._cert ?? throw "null pointer dereference").oCSPStaple.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._ocspStapling = true;
        };
        (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._ticketSupported = ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._ticketSupported && !(@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").sessionTicketsDisabled : Bool);
        (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._cipherSuite = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id;
        (@:checkr _hs ?? throw "null pointer dereference")._finishedHash = stdgo._internal.crypto.tls.Tls__newFinishedHash._newFinishedHash((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._c ?? throw "null pointer dereference")._vers, (@:checkr _hs ?? throw "null pointer dereference")._suite)?.__copy__();
        if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientAuth == ((0 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType))) {
            @:check2 (@:checkr _hs ?? throw "null pointer dereference")._finishedHash._discardHandshakeBuffer();
        };
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw "null pointer dereference")._clientHello), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface((@:checkr _hs ?? throw "null pointer dereference")._hello), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __225:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _certMsg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg>);
        (@:checkr _certMsg ?? throw "null pointer dereference")._certificates = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._cert ?? throw "null pointer dereference").certificate;
        {
            var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_certMsg), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __258:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._ocspStapling) {
            var _certStatus = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_certificateStatusMsg.T_certificateStatusMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateStatusMsg.T_certificateStatusMsg>);
            (@:checkr _certStatus ?? throw "null pointer dereference")._response = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._cert ?? throw "null pointer dereference").oCSPStaple;
            {
                var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_certStatus), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __299:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _keyAgreement = ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._ka((@:checkr _c ?? throw "null pointer dereference")._vers) : stdgo._internal.crypto.tls.Tls_T_keyAgreement.T_keyAgreement);
        var __tmp__ = _keyAgreement._generateServerKeyExchange((@:checkr _c ?? throw "null pointer dereference")._config, (@:checkr _hs ?? throw "null pointer dereference")._cert, (@:checkr _hs ?? throw "null pointer dereference")._clientHello, (@:checkr _hs ?? throw "null pointer dereference")._hello), _skx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        if ((_skx != null && ((_skx : Dynamic).__nil__ == null || !(_skx : Dynamic).__nil__))) {
            {
                var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_skx), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __339:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _certReq:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg>);
        if (((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientAuth >= (1 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType) : Bool)) {
            _certReq = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg>);
            (@:checkr _certReq ?? throw "null pointer dereference")._certificateTypes = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(1 : stdgo.GoUInt8), (64 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            if (((@:checkr _c ?? throw "null pointer dereference")._vers >= (771 : stdgo.GoUInt16) : Bool)) {
                (@:checkr _certReq ?? throw "null pointer dereference")._hasSignatureAlgorithm = true;
                (@:checkr _certReq ?? throw "null pointer dereference")._supportedSignatureAlgorithms = stdgo._internal.crypto.tls.Tls__supportedSignatureAlgorithms._supportedSignatureAlgorithms();
            };
            if (((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientCAs != null && (((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientCAs : Dynamic).__nil__ == null || !((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientCAs : Dynamic).__nil__))) {
                (@:checkr _certReq ?? throw "null pointer dereference")._certificateAuthorities = @:check2r (@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientCAs.subjects();
            };
            {
                var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_certReq), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __371:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _helloDone = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_serverHelloDoneMsg.T_serverHelloDoneMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloDoneMsg.T_serverHelloDoneMsg>);
        {
            var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface(_helloDone), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __351:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = @:check2r _c._flush(), __360:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _pub:stdgo._internal.crypto.Crypto_PublicKey.PublicKey = (null : stdgo._internal.crypto.Crypto_PublicKey.PublicKey);
        var __tmp__ = @:check2r _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if (((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientAuth >= (1 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType) : Bool)) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsg.T_certificateMsg>), _1 : false };
            }, _certMsg = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_certMsg)), _msg);
            };
            {
                var _err = (@:check2r _c._processCertsFromClient(({ certificate : (@:checkr _certMsg ?? throw "null pointer dereference")._certificates } : stdgo._internal.crypto.tls.Tls_Certificate.Certificate)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            if (((@:checkr _certMsg ?? throw "null pointer dereference")._certificates.length) != ((0 : stdgo.GoInt))) {
                _pub = stdgo.Go.toInterface((@:checkr (@:checkr _c ?? throw "null pointer dereference")._peerCertificates[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").publicKey);
            };
            {
                var __tmp__ = @:check2r _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>)));
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
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
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>), _1 : false };
        }, _ckx = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.crypto.tls.Tls__unexpectedMessageError._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_ckx)), _msg);
        };
        var __tmp__ = _keyAgreement._processClientKeyExchange((@:checkr _c ?? throw "null pointer dereference")._config, (@:checkr _hs ?? throw "null pointer dereference")._cert, _ckx, (@:checkr _c ?? throw "null pointer dereference")._vers), _preMasterSecret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._extendedMasterSecret) {
            (@:checkr _c ?? throw "null pointer dereference")._extMasterSecret = true;
            (@:checkr _hs ?? throw "null pointer dereference")._masterSecret = stdgo._internal.crypto.tls.Tls__extMasterFromPreMasterSecret._extMasterFromPreMasterSecret((@:checkr _c ?? throw "null pointer dereference")._vers, (@:checkr _hs ?? throw "null pointer dereference")._suite, _preMasterSecret, (@:checkr _hs ?? throw "null pointer dereference")._finishedHash.sum());
        } else {
            (@:checkr _hs ?? throw "null pointer dereference")._masterSecret = stdgo._internal.crypto.tls.Tls__masterFromPreMasterSecret._masterFromPreMasterSecret((@:checkr _c ?? throw "null pointer dereference")._vers, (@:checkr _hs ?? throw "null pointer dereference")._suite, _preMasterSecret, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._random, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._random);
        };
        {
            var _err = (@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._writeKeyLog(("CLIENT_RANDOM" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._random, (@:checkr _hs ?? throw "null pointer dereference")._masterSecret) : stdgo.Error);
            if (_err != null) {
                @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                return _err;
            };
        };
        if ((((@:checkr _c ?? throw "null pointer dereference")._peerCertificates.length) > (0 : stdgo.GoInt) : Bool)) {
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
            var _sigType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
            var _sigHash:stdgo._internal.crypto.Crypto_Hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_Hash.Hash);
            if (((@:checkr _c ?? throw "null pointer dereference")._vers >= (771 : stdgo.GoUInt16) : Bool)) {
                if (!stdgo._internal.crypto.tls.Tls__isSupportedSignatureAlgorithm._isSupportedSignatureAlgorithm((@:checkr _certVerify ?? throw "null pointer dereference")._signatureAlgorithm, (@:checkr _certReq ?? throw "null pointer dereference")._supportedSignatureAlgorithms)) {
                    @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client certificate used with invalid signature algorithm" : stdgo.GoString));
                };
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__typeAndHashFromSignatureScheme._typeAndHashFromSignatureScheme((@:checkr _certVerify ?? throw "null pointer dereference")._signatureAlgorithm);
                    _sigType = @:tmpset0 __tmp__._0;
                    _sigHash = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                if (_err != null) {
                    return @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                };
            } else {
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__legacyTypeAndHashFromPublicKey._legacyTypeAndHashFromPublicKey(_pub);
                    _sigType = @:tmpset0 __tmp__._0;
                    _sigHash = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                if (_err != null) {
                    @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return _err;
                };
            };
            var _signed = (@:checkr _hs ?? throw "null pointer dereference")._finishedHash._hashForClientCertificate(_sigType, _sigHash);
            {
                var _err = (stdgo._internal.crypto.tls.Tls__verifyHandshakeSignature._verifyHandshakeSignature(_sigType, _pub, _sigHash, _signed, (@:checkr _certVerify ?? throw "null pointer dereference")._signature) : stdgo.Error);
                if (_err != null) {
                    @:check2r _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_((("tls: invalid signature by the client certificate: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
                };
            };
            {
                var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface(_certVerify), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))) : stdgo.Error);
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
    static public function _doResumeHandshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._cipherSuite = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id;
        (@:checkr _c ?? throw "null pointer dereference")._cipherSuite = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id;
        (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._sessionId = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._sessionId;
        (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._ticketSupported = true;
        (@:checkr _hs ?? throw "null pointer dereference")._finishedHash = stdgo._internal.crypto.tls.Tls__newFinishedHash._newFinishedHash((@:checkr _c ?? throw "null pointer dereference")._vers, (@:checkr _hs ?? throw "null pointer dereference")._suite)?.__copy__();
        @:check2 (@:checkr _hs ?? throw "null pointer dereference")._finishedHash._discardHandshakeBuffer();
        {
            var _err = (stdgo._internal.crypto.tls.Tls__transcriptMsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw "null pointer dereference")._clientHello), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = @:check2r (@:checkr _hs ?? throw "null pointer dereference")._c._writeHandshakeRecord(stdgo.Go.asInterface((@:checkr _hs ?? throw "null pointer dereference")._hello), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw "null pointer dereference")._finishedHash) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>))), __209:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
        (@:checkr _hs ?? throw "null pointer dereference")._masterSecret = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._sessionState ?? throw "null pointer dereference")._secret;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _checkForResumption( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").sessionTicketsDisabled) {
            return (null : stdgo.Error);
        };
        var _sessionState:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>);
        if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").unwrapSession != null) {
            var __tmp__ = (@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").unwrapSession((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._sessionTicket, @:check2r _c._connectionStateLocked()?.__copy__()), _ss:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            if ((_ss == null || (_ss : Dynamic).__nil__)) {
                return (null : stdgo.Error);
            };
            _sessionState = _ss;
        } else {
            var _plaintext = @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._decryptTicket((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._sessionTicket, (@:checkr _c ?? throw "null pointer dereference")._ticketKeys);
            if (_plaintext == null) {
                return (null : stdgo.Error);
            };
            var __tmp__ = stdgo._internal.crypto.tls.Tls_parseSessionState.parseSessionState(_plaintext), _ss:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return (null : stdgo.Error);
            };
            _sessionState = _ss;
        };
        var _createdAt = (stdgo._internal.time.Time_unix.unix(((@:checkr _sessionState ?? throw "null pointer dereference")._createdAt : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        if ((@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._time().sub(_createdAt?.__copy__()) > (604800000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            return (null : stdgo.Error);
        };
        if ((@:checkr _c ?? throw "null pointer dereference")._vers != ((@:checkr _sessionState ?? throw "null pointer dereference")._version)) {
            return (null : stdgo.Error);
        };
        var _cipherSuiteOk = (false : Bool);
        for (__125 => _id in (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._cipherSuites) {
            if (_id == ((@:checkr _sessionState ?? throw "null pointer dereference")._cipherSuite)) {
                _cipherSuiteOk = true;
                break;
            };
        };
        if (!_cipherSuiteOk) {
            return (null : stdgo.Error);
        };
        var _suite = stdgo._internal.crypto.tls.Tls__selectCipherSuite._selectCipherSuite((new stdgo.Slice<stdgo.GoUInt16>(1, 1, ...[(@:checkr _sessionState ?? throw "null pointer dereference")._cipherSuite]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>), @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._cipherSuites(), @:check2r _hs._cipherSuiteOk);
        if ((_suite == null || (_suite : Dynamic).__nil__)) {
            return (null : stdgo.Error);
        };
        var _sessionHasClientCerts = (((@:checkr _sessionState ?? throw "null pointer dereference")._peerCertificates.length) != ((0 : stdgo.GoInt)) : Bool);
        var _needClientCerts = (stdgo._internal.crypto.tls.Tls__requiresClientCert._requiresClientCert((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientAuth) : Bool);
        if ((_needClientCerts && !_sessionHasClientCerts : Bool)) {
            return (null : stdgo.Error);
        };
        if ((_sessionHasClientCerts && ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientAuth == (0 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType)) : Bool)) {
            return (null : stdgo.Error);
        };
        if ((_sessionHasClientCerts && @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._time().after((@:checkr (@:checkr _sessionState ?? throw "null pointer dereference")._peerCertificates[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").notAfter?.__copy__()) : Bool)) {
            return (null : stdgo.Error);
        };
        if (((_sessionHasClientCerts && ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientAuth >= (3 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType) : Bool) : Bool) && ((@:checkr _sessionState ?? throw "null pointer dereference")._verifiedChains.length == (0 : stdgo.GoInt)) : Bool)) {
            return (null : stdgo.Error);
        };
        if ((!(@:checkr _sessionState ?? throw "null pointer dereference")._extMasterSecret && (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._extendedMasterSecret : Bool)) {
            return (null : stdgo.Error);
        };
        if (((@:checkr _sessionState ?? throw "null pointer dereference")._extMasterSecret && !(@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._extendedMasterSecret : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("tls: session supported extended_master_secret but client does not" : stdgo.GoString));
        };
        (@:checkr _c ?? throw "null pointer dereference")._peerCertificates = (@:checkr _sessionState ?? throw "null pointer dereference")._peerCertificates;
        (@:checkr _c ?? throw "null pointer dereference")._ocspResponse = (@:checkr _sessionState ?? throw "null pointer dereference")._ocspResponse;
        (@:checkr _c ?? throw "null pointer dereference")._scts = (@:checkr _sessionState ?? throw "null pointer dereference")._scts;
        (@:checkr _c ?? throw "null pointer dereference")._verifiedChains = (@:checkr _sessionState ?? throw "null pointer dereference")._verifiedChains;
        (@:checkr _c ?? throw "null pointer dereference")._extMasterSecret = (@:checkr _sessionState ?? throw "null pointer dereference")._extMasterSecret;
        (@:checkr _hs ?? throw "null pointer dereference")._sessionState = _sessionState;
        (@:checkr _hs ?? throw "null pointer dereference")._suite = _suite;
        (@:checkr _c ?? throw "null pointer dereference")._didResume = true;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _cipherSuiteOk( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>):Bool {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        if (((@:checkr _c ?? throw "null pointer dereference")._flags & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            if (!(@:checkr _hs ?? throw "null pointer dereference")._ecdheOk) {
                return false;
            };
            if (((@:checkr _c ?? throw "null pointer dereference")._flags & (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                if (!(@:checkr _hs ?? throw "null pointer dereference")._ecSignOk) {
                    return false;
                };
            } else if (!(@:checkr _hs ?? throw "null pointer dereference")._rsaSignOk) {
                return false;
            };
        } else if (!(@:checkr _hs ?? throw "null pointer dereference")._rsaDecryptOk) {
            return false;
        };
        if ((((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._c ?? throw "null pointer dereference")._vers < (771 : stdgo.GoUInt16) : Bool) && (((@:checkr _c ?? throw "null pointer dereference")._flags & (4 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
            return false;
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _pickCipherSuite( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        var _preferenceOrder = stdgo._internal.crypto.tls.Tls__cipherSuitesPreferenceOrder._cipherSuitesPreferenceOrder;
        if ((!stdgo._internal.crypto.tls.Tls__hasAESGCMHardwareSupport._hasAESGCMHardwareSupport || !stdgo._internal.crypto.tls.Tls__aesgcmPreferred._aesgcmPreferred((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._cipherSuites) : Bool)) {
            _preferenceOrder = stdgo._internal.crypto.tls.Tls__cipherSuitesPreferenceOrderNoAES._cipherSuitesPreferenceOrderNoAES;
        };
        var _configCipherSuites = @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._cipherSuites();
        var _preferenceList = (new stdgo.Slice<stdgo.GoUInt16>((0 : stdgo.GoInt).toBasic(), (_configCipherSuites.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        for (__93 => _suiteID in _preferenceOrder) {
            for (__94 => _id in _configCipherSuites) {
                if (_id == (_suiteID)) {
                    _preferenceList = (_preferenceList.__append__(_id));
                    break;
                };
            };
        };
        (@:checkr _hs ?? throw "null pointer dereference")._suite = stdgo._internal.crypto.tls.Tls__selectCipherSuite._selectCipherSuite(_preferenceList, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._cipherSuites, @:check2r _hs._cipherSuiteOk);
        if (((@:checkr _hs ?? throw "null pointer dereference")._suite == null || ((@:checkr _hs ?? throw "null pointer dereference")._suite : Dynamic).__nil__)) {
            @:check2r _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: no cipher suite supported by both client and server" : stdgo.GoString));
        };
        (@:checkr _c ?? throw "null pointer dereference")._cipherSuite = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._suite ?? throw "null pointer dereference")._id;
        for (__150 => _id in (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._cipherSuites) {
            if (_id == ((22016 : stdgo.GoUInt16))) {
                if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._vers < @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._maxSupportedVersion(false) : Bool)) {
                    @:check2r _c._sendAlert((86 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client using inappropriate protocol fallback" : stdgo.GoString));
                };
                break;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processClientHello( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        (@:checkr _hs ?? throw "null pointer dereference")._hello = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>);
        (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._vers = (@:checkr _c ?? throw "null pointer dereference")._vers;
        var _foundCompression = (false : Bool);
        for (__105 => _compression in (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._compressionMethods) {
            if (_compression == ((0 : stdgo.GoUInt8))) {
                _foundCompression = true;
                break;
            };
        };
        if (!_foundCompression) {
            @:check2r _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: client does not support uncompressed connections" : stdgo.GoString));
        };
        (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._random = (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _serverRandom = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._random;
        var _maxVers = (@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._maxSupportedVersion(false) : stdgo.GoUInt16);
        if ((((_maxVers >= (771 : stdgo.GoUInt16) : Bool) && ((@:checkr _c ?? throw "null pointer dereference")._vers < _maxVers : Bool) : Bool) || stdgo._internal.crypto.tls.Tls__testingOnlyForceDowngradeCanary._testingOnlyForceDowngradeCanary : Bool)) {
            if ((@:checkr _c ?? throw "null pointer dereference")._vers == ((771 : stdgo.GoUInt16))) {
                (_serverRandom.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(stdgo.Go.str("DOWNGRD", 1));
            } else {
                (_serverRandom.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(stdgo.Go.str("DOWNGRD", 0));
            };
            _serverRandom = (_serverRandom.__slice__(0, (24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var __tmp__ = stdgo._internal.io.Io_readFull.readFull(@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._rand(), _serverRandom), __154:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        if (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._secureRenegotiation.length) != ((0 : stdgo.GoInt))) {
            @:check2r _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: initial handshake had non-empty renegotiation extension" : stdgo.GoString));
        };
        (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._extendedMasterSecret = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._extendedMasterSecret;
        (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._secureRenegotiationSupported = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._secureRenegotiationSupported;
        (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._compressionMethod = (0 : stdgo.GoUInt8);
        if ((((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._serverName.length) > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _c ?? throw "null pointer dereference")._serverName = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._serverName?.__copy__();
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls__negotiateALPN._negotiateALPN((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").nextProtos, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._alpnProtocols, false), _selectedProto:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _c._sendAlert((120 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            return _err;
        };
        (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._alpnProtocol = _selectedProto?.__copy__();
        (@:checkr _c ?? throw "null pointer dereference")._clientProtocol = _selectedProto?.__copy__();
        {
            var __tmp__ = @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._getCertificate(stdgo._internal.crypto.tls.Tls__clientHelloInfo._clientHelloInfo((@:checkr _hs ?? throw "null pointer dereference")._ctx, _c, (@:checkr _hs ?? throw "null pointer dereference")._clientHello));
            (@:checkr _hs ?? throw "null pointer dereference")._cert = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.crypto.tls.Tls__errNoCertificates._errNoCertificates))) {
                @:check2r _c._sendAlert((112 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            } else {
                @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
            };
            return _err;
        };
        if ((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._scts) {
            (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._scts = (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._cert ?? throw "null pointer dereference").signedCertificateTimestamps;
        };
        (@:checkr _hs ?? throw "null pointer dereference")._ecdheOk = stdgo._internal.crypto.tls.Tls__supportsECDHE._supportsECDHE((@:checkr _c ?? throw "null pointer dereference")._config, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._supportedCurves, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._supportedPoints);
        if (((@:checkr _hs ?? throw "null pointer dereference")._ecdheOk && (((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._supportedPoints.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._supportedPoints = (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert(((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._cert ?? throw "null pointer dereference").privateKey : stdgo._internal.crypto.Crypto_Signer.Signer)) : stdgo._internal.crypto.Crypto_Signer.Signer), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.Crypto_Signer.Signer), _1 : false };
            }, _priv = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    final __type__ = _priv.public_();
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>))) {
                        (@:checkr _hs ?? throw "null pointer dereference")._ecSignOk = true;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey))) {
                        (@:checkr _hs ?? throw "null pointer dereference")._ecSignOk = true;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>))) {
                        (@:checkr _hs ?? throw "null pointer dereference")._rsaSignOk = true;
                    } else {
                        @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: unsupported signing key type (%T)" : stdgo.GoString), stdgo.Go.toInterface(_priv.public_()));
                    };
                };
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert(((@:checkr (@:checkr _hs ?? throw "null pointer dereference")._cert ?? throw "null pointer dereference").privateKey : stdgo._internal.crypto.Crypto_Decrypter.Decrypter)) : stdgo._internal.crypto.Crypto_Decrypter.Decrypter), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.Crypto_Decrypter.Decrypter), _1 : false };
            }, _priv = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    final __type__ = _priv.public_();
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>))) {
                        (@:checkr _hs ?? throw "null pointer dereference")._rsaDecryptOk = true;
                    } else {
                        @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: unsupported decryption key type (%T)" : stdgo.GoString), stdgo.Go.toInterface(_priv.public_()));
                    };
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _handshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw "null pointer dereference")._c;
        {
            var _err = (@:check2r _hs._processClientHello() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        (@:checkr _c ?? throw "null pointer dereference")._buffering = true;
        {
            var _err = (@:check2r _hs._checkForResumption() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (((@:checkr _hs ?? throw "null pointer dereference")._sessionState != null && (((@:checkr _hs ?? throw "null pointer dereference")._sessionState : Dynamic).__nil__ == null || !((@:checkr _hs ?? throw "null pointer dereference")._sessionState : Dynamic).__nil__))) {
            {
                var _err = (@:check2r _hs._doResumeHandshake() : stdgo.Error);
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
                var _err = (@:check2r _hs._sendSessionTicket() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err = (@:check2r _hs._sendFinished(((@:checkr _c ?? throw "null pointer dereference")._serverFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = @:check2r _c._flush(), __153:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            (@:checkr _c ?? throw "null pointer dereference")._clientFinishedIsFirst = false;
            {
                var _err = (@:check2r _hs._readFinished((null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        } else {
            {
                var _err = (@:check2r _hs._pickCipherSuite() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
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
                var _err = (@:check2r _hs._readFinished(((@:checkr _c ?? throw "null pointer dereference")._clientFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            (@:checkr _c ?? throw "null pointer dereference")._clientFinishedIsFirst = true;
            (@:checkr _c ?? throw "null pointer dereference")._buffering = true;
            {
                var _err = (@:check2r _hs._sendSessionTicket() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err = (@:check2r _hs._sendFinished((null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = @:check2r _c._flush(), __185:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        (@:checkr _c ?? throw "null pointer dereference")._ekm = stdgo._internal.crypto.tls.Tls__ekmFromMasterSecret._ekmFromMasterSecret((@:checkr _c ?? throw "null pointer dereference")._vers, (@:checkr _hs ?? throw "null pointer dereference")._suite, (@:checkr _hs ?? throw "null pointer dereference")._masterSecret, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._clientHello ?? throw "null pointer dereference")._random, (@:checkr (@:checkr _hs ?? throw "null pointer dereference")._hello ?? throw "null pointer dereference")._random);
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._isHandshakeComplete.store(true);
        return (null : stdgo.Error);
    }
}
