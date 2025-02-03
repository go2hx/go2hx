package stdgo.crypto.tls;
class Conn_static_extension {
    static public function _sessionState(_c:Conn):stdgo.Tuple<SessionState, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._sessionState(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _quicWaitForSignal(_c:Conn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._quicWaitForSignal(_c);
    }
    static public function _quicRejectedEarlyData(_c:Conn):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._quicRejectedEarlyData(_c);
    }
    static public function _quicHandshakeComplete(_c:Conn):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._quicHandshakeComplete(_c);
    }
    static public function _quicGetTransportParameters(_c:Conn):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._quicGetTransportParameters(_c);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _quicSetTransportParameters(_c:Conn, _params:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        final _params = ([for (i in _params) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._quicSetTransportParameters(_c, _params);
    }
    static public function _quicWriteCryptoData(_c:Conn, _level:QUICEncryptionLevel, _data:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._quicWriteCryptoData(_c, _level, _data);
    }
    static public function _quicSetWriteSecret(_c:Conn, _level:QUICEncryptionLevel, _suite:std.UInt, _secret:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        final _suite = (_suite : stdgo.GoUInt16);
        final _secret = ([for (i in _secret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._quicSetWriteSecret(_c, _level, _suite, _secret);
    }
    static public function _quicSetReadSecret(_c:Conn, _level:QUICEncryptionLevel, _suite:std.UInt, _secret:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        final _suite = (_suite : stdgo.GoUInt16);
        final _secret = ([for (i in _secret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._quicSetReadSecret(_c, _level, _suite, _secret);
    }
    static public function _quicReadHandshakeBytes(_c:Conn, _n:StdTypes.Int):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._quicReadHandshakeBytes(_c, _n);
    }
    static public function _sendSessionTicket(_c:Conn, _earlyData:Bool):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._sendSessionTicket(_c, _earlyData);
    }
    static public function _processCertsFromClient(_c:Conn, _certificate:Certificate):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._processCertsFromClient(_c, _certificate);
    }
    static public function _readClientHello(_c:Conn, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Tuple<T_clientHelloMsg, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._readClientHello(_c, _ctx);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _serverHandshake(_c:Conn, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._serverHandshake(_c, _ctx);
    }
    static public function _handleNewSessionTicket(_c:Conn, _msg:T_newSessionTicketMsgTLS13):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        final _msg = (_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_newSessionTicketMsgTLS13.T_newSessionTicketMsgTLS13>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._handleNewSessionTicket(_c, _msg);
    }
    static public function _clientSessionCacheKey(_c:Conn):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._clientSessionCacheKey(_c);
    }
    static public function _getClientCertificate(_c:Conn, _cri:CertificateRequestInfo):stdgo.Tuple<Certificate, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        final _cri = (_cri : stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._getClientCertificate(_c, _cri);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _verifyServerCertificate(_c:Conn, _certificates:Array<Array<std.UInt>>):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        final _certificates = ([for (i in _certificates) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._verifyServerCertificate(_c, _certificates);
    }
    static public function _pickTLSVersion(_c:Conn, _serverHello:T_serverHelloMsg):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        final _serverHello = (_serverHello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._pickTLSVersion(_c, _serverHello);
    }
    static public function _loadSession(_c:Conn, _hello:T_clientHelloMsg):stdgo.Tuple.Tuple4<SessionState, Array<std.UInt>, Array<std.UInt>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        final _hello = (_hello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._loadSession(_c, _hello);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : [for (i in obj._2) i], _3 : obj._3 };
        };
    }
    static public function _clientHandshake(_c:Conn, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._clientHandshake(_c, _ctx);
    }
    static public function _makeClientHello(_c:Conn):stdgo.Tuple.Tuple3<T_clientHelloMsg, stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._makeClientHello(_c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function verifyHostname(_c:Conn, _host:String):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        final _host = (_host : stdgo.GoString);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension.verifyHostname(_c, _host);
    }
    static public function oCSPResponse(_c:Conn):Array<std.UInt> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return [for (i in stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension.oCSPResponse(_c)) i];
    }
    static public function _connectionStateLocked(_c:Conn):ConnectionState {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._connectionStateLocked(_c);
    }
    static public function connectionState(_c:Conn):ConnectionState {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension.connectionState(_c);
    }
    static public function _handshakeContext(_c:Conn, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._handshakeContext(_c, _ctx);
    }
    static public function handshakeContext(_c:Conn, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension.handshakeContext(_c, _ctx);
    }
    static public function handshake(_c:Conn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension.handshake(_c);
    }
    static public function _closeNotify(_c:Conn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._closeNotify(_c);
    }
    static public function closeWrite(_c:Conn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension.closeWrite(_c);
    }
    static public function close(_c:Conn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension.close(_c);
    }
    static public function read(_c:Conn, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension.read(_c, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _handleKeyUpdate(_c:Conn, _keyUpdate:T_keyUpdateMsg):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        final _keyUpdate = (_keyUpdate : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._handleKeyUpdate(_c, _keyUpdate);
    }
    static public function _handlePostHandshakeMessage(_c:Conn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._handlePostHandshakeMessage(_c);
    }
    static public function _handleRenegotiation(_c:Conn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._handleRenegotiation(_c);
    }
    static public function write(_c:Conn, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension.write(_c, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _unmarshalHandshakeMessage(_c:Conn, _data:Array<std.UInt>, _transcript:T_transcriptHash):stdgo.Tuple<T_handshakeMessage, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._unmarshalHandshakeMessage(_c, _data, _transcript);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readHandshake(_c:Conn, _transcript:T_transcriptHash):stdgo.Tuple<stdgo.AnyInterface, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._readHandshake(_c, _transcript);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readHandshakeBytes(_c:Conn, _n:StdTypes.Int):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._readHandshakeBytes(_c, _n);
    }
    static public function _writeChangeCipherRecord(_c:Conn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._writeChangeCipherRecord(_c);
    }
    static public function _writeHandshakeRecord(_c:Conn, _msg:T_handshakeMessage, _transcript:T_transcriptHash):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._writeHandshakeRecord(_c, _msg, _transcript);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeRecordLocked(_c:Conn, _typ:T_recordType, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._writeRecordLocked(_c, _typ, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _flush(_c:Conn):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._flush(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _write(_c:Conn, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._write(_c, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _maxPayloadSizeForWrite(_c:Conn, _typ:T_recordType):StdTypes.Int {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._maxPayloadSizeForWrite(_c, _typ);
    }
    static public function _sendAlert(_c:Conn, _err:T_alert):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._sendAlert(_c, _err);
    }
    static public function _sendAlertLocked(_c:Conn, _err:T_alert):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._sendAlertLocked(_c, _err);
    }
    static public function _readFromUntil(_c:Conn, _r:stdgo._internal.io.Io_Reader.Reader, _n:StdTypes.Int):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._readFromUntil(_c, _r, _n);
    }
    static public function _retryReadRecord(_c:Conn, _expectChangeCipherSpec:Bool):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._retryReadRecord(_c, _expectChangeCipherSpec);
    }
    static public function _readRecordOrCCS(_c:Conn, _expectChangeCipherSpec:Bool):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._readRecordOrCCS(_c, _expectChangeCipherSpec);
    }
    static public function _readChangeCipherSpec(_c:Conn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._readChangeCipherSpec(_c);
    }
    static public function _readRecord(_c:Conn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._readRecord(_c);
    }
    static public function _newRecordHeaderError(_c:Conn, _conn:stdgo._internal.net.Net_Conn.Conn, _msg:String):RecordHeaderError {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        final _msg = (_msg : stdgo.GoString);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension._newRecordHeaderError(_c, _conn, _msg);
    }
    static public function netConn(_c:Conn):stdgo._internal.net.Net_Conn.Conn {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension.netConn(_c);
    }
    static public function setWriteDeadline(_c:Conn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension.setWriteDeadline(_c, _t);
    }
    static public function setReadDeadline(_c:Conn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension.setReadDeadline(_c, _t);
    }
    static public function setDeadline(_c:Conn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension.setDeadline(_c, _t);
    }
    static public function remoteAddr(_c:Conn):stdgo._internal.net.Net_Addr.Addr {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension.remoteAddr(_c);
    }
    static public function localAddr(_c:Conn):stdgo._internal.net.Net_Addr.Addr {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return stdgo._internal.crypto.tls.Tls_Conn_static_extension.Conn_static_extension.localAddr(_c);
    }
}
