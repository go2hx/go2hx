package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_conn_static_extension.Conn_static_extension) class Conn {
    public var _conn : stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
    public var _isClient : Bool = false;
    public var _handshakeFn : stdgo._internal.context.Context_context.Context -> stdgo.Error = null;
    public var _quic : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_quicstate.T_quicState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_quicstate.T_quicState>);
    public var _isHandshakeComplete : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_);
    public var _handshakeMutex : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _handshakeErr : stdgo.Error = (null : stdgo.Error);
    public var _vers : stdgo.GoUInt16 = 0;
    public var _haveVers : Bool = false;
    public var _config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
    public var _handshakes : stdgo.GoInt = 0;
    public var _extMasterSecret : Bool = false;
    public var _didResume : Bool = false;
    public var _cipherSuite : stdgo.GoUInt16 = 0;
    public var _ocspResponse : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _scts : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public var _peerCertificates : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
    public var _activeCertHandles : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>>);
    public var _verifiedChains : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>);
    public var _serverName : stdgo.GoString = "";
    public var _secureRenegotiation : Bool = false;
    public var _ekm : (stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = null;
    public var _resumptionSecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _ticketKeys : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>);
    public var _clientFinishedIsFirst : Bool = false;
    public var _closeNotifyErr : stdgo.Error = (null : stdgo.Error);
    public var _closeNotifySent : Bool = false;
    public var _clientFinished : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(12, 12).__setNumber32__();
    public var _serverFinished : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(12, 12).__setNumber32__();
    public var _clientProtocol : stdgo.GoString = "";
    public var _in : stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn = ({} : stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn);
    public var _out : stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn = ({} : stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn);
    public var _rawInput : stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
    public var _input : stdgo._internal.bytes.Bytes_reader.Reader = ({} : stdgo._internal.bytes.Bytes_reader.Reader);
    public var _hand : stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
    public var _buffering : Bool = false;
    public var _sendBuf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _bytesSent : stdgo.GoInt64 = 0;
    public var _packetsSent : stdgo.GoInt64 = 0;
    public var _retryCount : stdgo.GoInt = 0;
    public var _activeCall : stdgo._internal.sync.atomic_.Atomic__int32.Int32 = ({} : stdgo._internal.sync.atomic_.Atomic__int32.Int32);
    public var _tmp : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
    public function new(?_conn:stdgo._internal.net.Net_conn.Conn, ?_isClient:Bool, ?_handshakeFn:stdgo._internal.context.Context_context.Context -> stdgo.Error, ?_quic:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_quicstate.T_quicState>, ?_isHandshakeComplete:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_, ?_handshakeMutex:stdgo._internal.sync.Sync_mutex.Mutex, ?_handshakeErr:stdgo.Error, ?_vers:stdgo.GoUInt16, ?_haveVers:Bool, ?_config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, ?_handshakes:stdgo.GoInt, ?_extMasterSecret:Bool, ?_didResume:Bool, ?_cipherSuite:stdgo.GoUInt16, ?_ocspResponse:stdgo.Slice<stdgo.GoUInt8>, ?_scts:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, ?_peerCertificates:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, ?_activeCertHandles:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>>, ?_verifiedChains:stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>, ?_serverName:stdgo.GoString, ?_secureRenegotiation:Bool, ?_ekm:(stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }, ?_resumptionSecret:stdgo.Slice<stdgo.GoUInt8>, ?_ticketKeys:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>, ?_clientFinishedIsFirst:Bool, ?_closeNotifyErr:stdgo.Error, ?_closeNotifySent:Bool, ?_clientFinished:stdgo.GoArray<stdgo.GoUInt8>, ?_serverFinished:stdgo.GoArray<stdgo.GoUInt8>, ?_clientProtocol:stdgo.GoString, ?_in:stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn, ?_out:stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn, ?_rawInput:stdgo._internal.bytes.Bytes_buffer.Buffer, ?_input:stdgo._internal.bytes.Bytes_reader.Reader, ?_hand:stdgo._internal.bytes.Bytes_buffer.Buffer, ?_buffering:Bool, ?_sendBuf:stdgo.Slice<stdgo.GoUInt8>, ?_bytesSent:stdgo.GoInt64, ?_packetsSent:stdgo.GoInt64, ?_retryCount:stdgo.GoInt, ?_activeCall:stdgo._internal.sync.atomic_.Atomic__int32.Int32, ?_tmp:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_conn != null) this._conn = _conn;
        if (_isClient != null) this._isClient = _isClient;
        if (_handshakeFn != null) this._handshakeFn = _handshakeFn;
        if (_quic != null) this._quic = _quic;
        if (_isHandshakeComplete != null) this._isHandshakeComplete = _isHandshakeComplete;
        if (_handshakeMutex != null) this._handshakeMutex = _handshakeMutex;
        if (_handshakeErr != null) this._handshakeErr = _handshakeErr;
        if (_vers != null) this._vers = _vers;
        if (_haveVers != null) this._haveVers = _haveVers;
        if (_config != null) this._config = _config;
        if (_handshakes != null) this._handshakes = _handshakes;
        if (_extMasterSecret != null) this._extMasterSecret = _extMasterSecret;
        if (_didResume != null) this._didResume = _didResume;
        if (_cipherSuite != null) this._cipherSuite = _cipherSuite;
        if (_ocspResponse != null) this._ocspResponse = _ocspResponse;
        if (_scts != null) this._scts = _scts;
        if (_peerCertificates != null) this._peerCertificates = _peerCertificates;
        if (_activeCertHandles != null) this._activeCertHandles = _activeCertHandles;
        if (_verifiedChains != null) this._verifiedChains = _verifiedChains;
        if (_serverName != null) this._serverName = _serverName;
        if (_secureRenegotiation != null) this._secureRenegotiation = _secureRenegotiation;
        if (_ekm != null) this._ekm = _ekm;
        if (_resumptionSecret != null) this._resumptionSecret = _resumptionSecret;
        if (_ticketKeys != null) this._ticketKeys = _ticketKeys;
        if (_clientFinishedIsFirst != null) this._clientFinishedIsFirst = _clientFinishedIsFirst;
        if (_closeNotifyErr != null) this._closeNotifyErr = _closeNotifyErr;
        if (_closeNotifySent != null) this._closeNotifySent = _closeNotifySent;
        if (_clientFinished != null) this._clientFinished = _clientFinished;
        if (_serverFinished != null) this._serverFinished = _serverFinished;
        if (_clientProtocol != null) this._clientProtocol = _clientProtocol;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_rawInput != null) this._rawInput = _rawInput;
        if (_input != null) this._input = _input;
        if (_hand != null) this._hand = _hand;
        if (_buffering != null) this._buffering = _buffering;
        if (_sendBuf != null) this._sendBuf = _sendBuf;
        if (_bytesSent != null) this._bytesSent = _bytesSent;
        if (_packetsSent != null) this._packetsSent = _packetsSent;
        if (_retryCount != null) this._retryCount = _retryCount;
        if (_activeCall != null) this._activeCall = _activeCall;
        if (_tmp != null) this._tmp = _tmp;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Conn(
_conn,
_isClient,
_handshakeFn,
_quic,
_isHandshakeComplete,
_handshakeMutex,
_handshakeErr,
_vers,
_haveVers,
_config,
_handshakes,
_extMasterSecret,
_didResume,
_cipherSuite,
_ocspResponse,
_scts,
_peerCertificates,
_activeCertHandles,
_verifiedChains,
_serverName,
_secureRenegotiation,
_ekm,
_resumptionSecret,
_ticketKeys,
_clientFinishedIsFirst,
_closeNotifyErr,
_closeNotifySent,
_clientFinished,
_serverFinished,
_clientProtocol,
_in,
_out,
_rawInput,
_input,
_hand,
_buffering,
_sendBuf,
_bytesSent,
_packetsSent,
_retryCount,
_activeCall,
_tmp);
    }
}
