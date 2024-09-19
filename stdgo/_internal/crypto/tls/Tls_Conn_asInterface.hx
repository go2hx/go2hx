package stdgo._internal.crypto.tls;
class Conn_asInterface {
    @:keep
    public dynamic function _sessionState():{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Error; } return __self__.value._sessionState();
    @:keep
    public dynamic function _quicWaitForSignal():stdgo.Error return __self__.value._quicWaitForSignal();
    @:keep
    public dynamic function _quicRejectedEarlyData():Void __self__.value._quicRejectedEarlyData();
    @:keep
    public dynamic function _quicHandshakeComplete():Void __self__.value._quicHandshakeComplete();
    @:keep
    public dynamic function _quicGetTransportParameters():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._quicGetTransportParameters();
    @:keep
    public dynamic function _quicSetTransportParameters(_params:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value._quicSetTransportParameters(_params);
    @:keep
    public dynamic function _quicWriteCryptoData(_level:stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel, _data:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value._quicWriteCryptoData(_level, _data);
    @:keep
    public dynamic function _quicSetWriteSecret(_level:stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel, _suite:stdgo.GoUInt16, _secret:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value._quicSetWriteSecret(_level, _suite, _secret);
    @:keep
    public dynamic function _quicSetReadSecret(_level:stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel, _suite:stdgo.GoUInt16, _secret:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value._quicSetReadSecret(_level, _suite, _secret);
    @:keep
    public dynamic function _quicReadHandshakeBytes(_n:stdgo.GoInt):stdgo.Error return __self__.value._quicReadHandshakeBytes(_n);
    @:keep
    public dynamic function _sendSessionTicket(_earlyData:Bool):stdgo.Error return __self__.value._sendSessionTicket(_earlyData);
    @:keep
    public dynamic function _processCertsFromClient(_certificate:stdgo._internal.crypto.tls.Tls_Certificate.Certificate):stdgo.Error return __self__.value._processCertsFromClient(_certificate);
    @:keep
    public dynamic function _readClientHello(_ctx:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>; var _1 : stdgo.Error; } return __self__.value._readClientHello(_ctx);
    @:keep
    public dynamic function _serverHandshake(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return __self__.value._serverHandshake(_ctx);
    @:keep
    public dynamic function _handleNewSessionTicket(_msg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsgTLS13.T_newSessionTicketMsgTLS13>):stdgo.Error return __self__.value._handleNewSessionTicket(_msg);
    @:keep
    public dynamic function _clientSessionCacheKey():stdgo.GoString return __self__.value._clientSessionCacheKey();
    @:keep
    public dynamic function _getClientCertificate(_cri:stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>; var _1 : stdgo.Error; } return __self__.value._getClientCertificate(_cri);
    @:keep
    public dynamic function _verifyServerCertificate(_certificates:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>):stdgo.Error return __self__.value._verifyServerCertificate(_certificates);
    @:keep
    public dynamic function _pickTLSVersion(_serverHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>):stdgo.Error return __self__.value._pickTLSVersion(_serverHello);
    @:keep
    public dynamic function _loadSession(_hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } return __self__.value._loadSession(_hello);
    @:keep
    public dynamic function _clientHandshake(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return __self__.value._clientHandshake(_ctx);
    @:keep
    public dynamic function _makeClientHello():{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>; var _1 : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>; var _2 : stdgo.Error; } return __self__.value._makeClientHello();
    @:keep
    public dynamic function verifyHostname(_host:stdgo.GoString):stdgo.Error return __self__.value.verifyHostname(_host);
    @:keep
    public dynamic function ocspresponse():stdgo.Slice<stdgo.GoUInt8> return __self__.value.ocspresponse();
    @:keep
    public dynamic function _connectionStateLocked():stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState return __self__.value._connectionStateLocked();
    @:keep
    public dynamic function connectionState():stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState return __self__.value.connectionState();
    @:keep
    public dynamic function _handshakeContext(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return __self__.value._handshakeContext(_ctx);
    @:keep
    public dynamic function handshakeContext(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return __self__.value.handshakeContext(_ctx);
    @:keep
    public dynamic function handshake():stdgo.Error return __self__.value.handshake();
    @:keep
    public dynamic function _closeNotify():stdgo.Error return __self__.value._closeNotify();
    @:keep
    public dynamic function closeWrite():stdgo.Error return __self__.value.closeWrite();
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:keep
    public dynamic function _handleKeyUpdate(_keyUpdate:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg>):stdgo.Error return __self__.value._handleKeyUpdate(_keyUpdate);
    @:keep
    public dynamic function _handlePostHandshakeMessage():stdgo.Error return __self__.value._handlePostHandshakeMessage();
    @:keep
    public dynamic function _handleRenegotiation():stdgo.Error return __self__.value._handleRenegotiation();
    @:keep
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    @:keep
    public dynamic function _unmarshalHandshakeMessage(_data:stdgo.Slice<stdgo.GoUInt8>, _transcript:stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash):{ var _0 : stdgo._internal.crypto.tls.Tls_T_handshakeMessage.T_handshakeMessage; var _1 : stdgo.Error; } return __self__.value._unmarshalHandshakeMessage(_data, _transcript);
    @:keep
    public dynamic function _readHandshake(_transcript:stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } return __self__.value._readHandshake(_transcript);
    @:keep
    public dynamic function _readHandshakeBytes(_n:stdgo.GoInt):stdgo.Error return __self__.value._readHandshakeBytes(_n);
    @:keep
    public dynamic function _writeChangeCipherRecord():stdgo.Error return __self__.value._writeChangeCipherRecord();
    @:keep
    public dynamic function _writeHandshakeRecord(_msg:stdgo._internal.crypto.tls.Tls_T_handshakeMessage.T_handshakeMessage, _transcript:stdgo._internal.crypto.tls.Tls_T_transcriptHash.T_transcriptHash):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._writeHandshakeRecord(_msg, _transcript);
    @:keep
    public dynamic function _writeRecordLocked(_typ:stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._writeRecordLocked(_typ, _data);
    @:keep
    public dynamic function _flush():{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._flush();
    @:keep
    public dynamic function _write(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._write(_data);
    @:keep
    public dynamic function _maxPayloadSizeForWrite(_typ:stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType):stdgo.GoInt return __self__.value._maxPayloadSizeForWrite(_typ);
    @:keep
    public dynamic function _sendAlert(_err:stdgo._internal.crypto.tls.Tls_T_alert.T_alert):stdgo.Error return __self__.value._sendAlert(_err);
    @:keep
    public dynamic function _sendAlertLocked(_err:stdgo._internal.crypto.tls.Tls_T_alert.T_alert):stdgo.Error return __self__.value._sendAlertLocked(_err);
    @:keep
    public dynamic function _readFromUntil(_r:stdgo._internal.io.Io_Reader.Reader, _n:stdgo.GoInt):stdgo.Error return __self__.value._readFromUntil(_r, _n);
    @:keep
    public dynamic function _retryReadRecord(_expectChangeCipherSpec:Bool):stdgo.Error return __self__.value._retryReadRecord(_expectChangeCipherSpec);
    @:keep
    public dynamic function _readRecordOrCCS(_expectChangeCipherSpec:Bool):stdgo.Error return __self__.value._readRecordOrCCS(_expectChangeCipherSpec);
    @:keep
    public dynamic function _readChangeCipherSpec():stdgo.Error return __self__.value._readChangeCipherSpec();
    @:keep
    public dynamic function _readRecord():stdgo.Error return __self__.value._readRecord();
    @:keep
    public dynamic function _newRecordHeaderError(_conn:stdgo._internal.net.Net_Conn.Conn, _msg:stdgo.GoString):stdgo._internal.crypto.tls.Tls_RecordHeaderError.RecordHeaderError return __self__.value._newRecordHeaderError(_conn, _msg);
    @:keep
    public dynamic function netConn():stdgo._internal.net.Net_Conn.Conn return __self__.value.netConn();
    @:keep
    public dynamic function setWriteDeadline(_t:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setWriteDeadline(_t);
    @:keep
    public dynamic function setReadDeadline(_t:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setReadDeadline(_t);
    @:keep
    public dynamic function setDeadline(_t:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setDeadline(_t);
    @:keep
    public dynamic function remoteAddr():stdgo._internal.net.Net_Addr.Addr return __self__.value.remoteAddr();
    @:keep
    public dynamic function localAddr():stdgo._internal.net.Net_Addr.Addr return __self__.value.localAddr();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.tls.Tls_Conn.Conn>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}