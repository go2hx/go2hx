package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.Conn_static_extension) abstract Conn(stdgo._internal.crypto.tls.Tls_Conn.Conn) from stdgo._internal.crypto.tls.Tls_Conn.Conn to stdgo._internal.crypto.tls.Tls_Conn.Conn {
    public var _conn(get, set) : stdgo._internal.net.Net_Conn.Conn;
    function get__conn():stdgo._internal.net.Net_Conn.Conn return this._conn;
    function set__conn(v:stdgo._internal.net.Net_Conn.Conn):stdgo._internal.net.Net_Conn.Conn {
        this._conn = v;
        return v;
    }
    public var _isClient(get, set) : Bool;
    function get__isClient():Bool return this._isClient;
    function set__isClient(v:Bool):Bool {
        this._isClient = v;
        return v;
    }
    public var _handshakeFn(get, set) : stdgo._internal.context.Context_Context.Context -> stdgo.Error;
    function get__handshakeFn():stdgo._internal.context.Context_Context.Context -> stdgo.Error return _0 -> this._handshakeFn(_0);
    function set__handshakeFn(v:stdgo._internal.context.Context_Context.Context -> stdgo.Error):stdgo._internal.context.Context_Context.Context -> stdgo.Error {
        this._handshakeFn = v;
        return v;
    }
    public var _quic(get, set) : T_quicState;
    function get__quic():T_quicState return this._quic;
    function set__quic(v:T_quicState):T_quicState {
        this._quic = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_quicState.T_quicState>);
        return v;
    }
    public var _isHandshakeComplete(get, set) : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_;
    function get__isHandshakeComplete():stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ return this._isHandshakeComplete;
    function set__isHandshakeComplete(v:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_):stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ {
        this._isHandshakeComplete = v;
        return v;
    }
    public var _handshakeMutex(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__handshakeMutex():stdgo._internal.sync.Sync_Mutex.Mutex return this._handshakeMutex;
    function set__handshakeMutex(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._handshakeMutex = v;
        return v;
    }
    public var _handshakeErr(get, set) : stdgo.Error;
    function get__handshakeErr():stdgo.Error return this._handshakeErr;
    function set__handshakeErr(v:stdgo.Error):stdgo.Error {
        this._handshakeErr = (v : stdgo.Error);
        return v;
    }
    public var _vers(get, set) : std.UInt;
    function get__vers():std.UInt return this._vers;
    function set__vers(v:std.UInt):std.UInt {
        this._vers = (v : stdgo.GoUInt16);
        return v;
    }
    public var _haveVers(get, set) : Bool;
    function get__haveVers():Bool return this._haveVers;
    function set__haveVers(v:Bool):Bool {
        this._haveVers = v;
        return v;
    }
    public var _config(get, set) : Config;
    function get__config():Config return this._config;
    function set__config(v:Config):Config {
        this._config = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return v;
    }
    public var _handshakes(get, set) : StdTypes.Int;
    function get__handshakes():StdTypes.Int return this._handshakes;
    function set__handshakes(v:StdTypes.Int):StdTypes.Int {
        this._handshakes = (v : stdgo.GoInt);
        return v;
    }
    public var _extMasterSecret(get, set) : Bool;
    function get__extMasterSecret():Bool return this._extMasterSecret;
    function set__extMasterSecret(v:Bool):Bool {
        this._extMasterSecret = v;
        return v;
    }
    public var _didResume(get, set) : Bool;
    function get__didResume():Bool return this._didResume;
    function set__didResume(v:Bool):Bool {
        this._didResume = v;
        return v;
    }
    public var _cipherSuite(get, set) : std.UInt;
    function get__cipherSuite():std.UInt return this._cipherSuite;
    function set__cipherSuite(v:std.UInt):std.UInt {
        this._cipherSuite = (v : stdgo.GoUInt16);
        return v;
    }
    public var _ocspResponse(get, set) : Array<std.UInt>;
    function get__ocspResponse():Array<std.UInt> return [for (i in this._ocspResponse) i];
    function set__ocspResponse(v:Array<std.UInt>):Array<std.UInt> {
        this._ocspResponse = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _scts(get, set) : Array<Array<std.UInt>>;
    function get__scts():Array<Array<std.UInt>> return [for (i in this._scts) [for (i in i) i]];
    function set__scts(v:Array<Array<std.UInt>>):Array<Array<std.UInt>> {
        this._scts = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public var _peerCertificates(get, set) : Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>;
    function get__peerCertificates():Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate> return [for (i in this._peerCertificates) i];
    function set__peerCertificates(v:Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate> {
        this._peerCertificates = ([for (i in v) (i : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>);
        return v;
    }
    public var _activeCertHandles(get, set) : Array<T_activeCert>;
    function get__activeCertHandles():Array<T_activeCert> return [for (i in this._activeCertHandles) i];
    function set__activeCertHandles(v:Array<T_activeCert>):Array<T_activeCert> {
        this._activeCertHandles = ([for (i in v) (i : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert>>);
        return v;
    }
    public var _verifiedChains(get, set) : Array<Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>;
    function get__verifiedChains():Array<Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>> return [for (i in this._verifiedChains) [for (i in i) i]];
    function set__verifiedChains(v:Array<Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>):Array<Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>> {
        this._verifiedChains = ([for (i in v) ([for (i in i) (i : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>)] : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>);
        return v;
    }
    public var _serverName(get, set) : String;
    function get__serverName():String return this._serverName;
    function set__serverName(v:String):String {
        this._serverName = (v : stdgo.GoString);
        return v;
    }
    public var _secureRenegotiation(get, set) : Bool;
    function get__secureRenegotiation():Bool return this._secureRenegotiation;
    function set__secureRenegotiation(v:Bool):Bool {
        this._secureRenegotiation = v;
        return v;
    }
    public var _ekm(get, set) : (stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    function get__ekm():(stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return (_0, _1, _2) -> this._ekm(_0, [for (i in _1) i], _2);
    function set__ekm(v:(stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }):(stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        this._ekm = v;
        return v;
    }
    public var _resumptionSecret(get, set) : Array<std.UInt>;
    function get__resumptionSecret():Array<std.UInt> return [for (i in this._resumptionSecret) i];
    function set__resumptionSecret(v:Array<std.UInt>):Array<std.UInt> {
        this._resumptionSecret = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _ticketKeys(get, set) : Array<T_ticketKey>;
    function get__ticketKeys():Array<T_ticketKey> return [for (i in this._ticketKeys) i];
    function set__ticketKeys(v:Array<T_ticketKey>):Array<T_ticketKey> {
        this._ticketKeys = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>);
        return v;
    }
    public var _clientFinishedIsFirst(get, set) : Bool;
    function get__clientFinishedIsFirst():Bool return this._clientFinishedIsFirst;
    function set__clientFinishedIsFirst(v:Bool):Bool {
        this._clientFinishedIsFirst = v;
        return v;
    }
    public var _closeNotifyErr(get, set) : stdgo.Error;
    function get__closeNotifyErr():stdgo.Error return this._closeNotifyErr;
    function set__closeNotifyErr(v:stdgo.Error):stdgo.Error {
        this._closeNotifyErr = (v : stdgo.Error);
        return v;
    }
    public var _closeNotifySent(get, set) : Bool;
    function get__closeNotifySent():Bool return this._closeNotifySent;
    function set__closeNotifySent(v:Bool):Bool {
        this._closeNotifySent = v;
        return v;
    }
    public var _clientFinished(get, set) : haxe.ds.Vector<std.UInt>;
    function get__clientFinished():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._clientFinished) i]);
    function set__clientFinished(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._clientFinished = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _serverFinished(get, set) : haxe.ds.Vector<std.UInt>;
    function get__serverFinished():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._serverFinished) i]);
    function set__serverFinished(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._serverFinished = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _clientProtocol(get, set) : String;
    function get__clientProtocol():String return this._clientProtocol;
    function set__clientProtocol(v:String):String {
        this._clientProtocol = (v : stdgo.GoString);
        return v;
    }
    public var _in(get, set) : T_halfConn;
    function get__in():T_halfConn return this._in;
    function set__in(v:T_halfConn):T_halfConn {
        this._in = v;
        return v;
    }
    public var _out(get, set) : T_halfConn;
    function get__out():T_halfConn return this._out;
    function set__out(v:T_halfConn):T_halfConn {
        this._out = v;
        return v;
    }
    public var _rawInput(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get__rawInput():stdgo._internal.bytes.Bytes_Buffer.Buffer return this._rawInput;
    function set__rawInput(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
        this._rawInput = v;
        return v;
    }
    public var _input(get, set) : stdgo._internal.bytes.Bytes_Reader.Reader;
    function get__input():stdgo._internal.bytes.Bytes_Reader.Reader return this._input;
    function set__input(v:stdgo._internal.bytes.Bytes_Reader.Reader):stdgo._internal.bytes.Bytes_Reader.Reader {
        this._input = v;
        return v;
    }
    public var _hand(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get__hand():stdgo._internal.bytes.Bytes_Buffer.Buffer return this._hand;
    function set__hand(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
        this._hand = v;
        return v;
    }
    public var _buffering(get, set) : Bool;
    function get__buffering():Bool return this._buffering;
    function set__buffering(v:Bool):Bool {
        this._buffering = v;
        return v;
    }
    public var _sendBuf(get, set) : Array<std.UInt>;
    function get__sendBuf():Array<std.UInt> return [for (i in this._sendBuf) i];
    function set__sendBuf(v:Array<std.UInt>):Array<std.UInt> {
        this._sendBuf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _bytesSent(get, set) : haxe.Int64;
    function get__bytesSent():haxe.Int64 return this._bytesSent;
    function set__bytesSent(v:haxe.Int64):haxe.Int64 {
        this._bytesSent = (v : stdgo.GoInt64);
        return v;
    }
    public var _packetsSent(get, set) : haxe.Int64;
    function get__packetsSent():haxe.Int64 return this._packetsSent;
    function set__packetsSent(v:haxe.Int64):haxe.Int64 {
        this._packetsSent = (v : stdgo.GoInt64);
        return v;
    }
    public var _retryCount(get, set) : StdTypes.Int;
    function get__retryCount():StdTypes.Int return this._retryCount;
    function set__retryCount(v:StdTypes.Int):StdTypes.Int {
        this._retryCount = (v : stdgo.GoInt);
        return v;
    }
    public var _activeCall(get, set) : stdgo._internal.sync.atomic_.Atomic__Int32.Int32;
    function get__activeCall():stdgo._internal.sync.atomic_.Atomic__Int32.Int32 return this._activeCall;
    function set__activeCall(v:stdgo._internal.sync.atomic_.Atomic__Int32.Int32):stdgo._internal.sync.atomic_.Atomic__Int32.Int32 {
        this._activeCall = v;
        return v;
    }
    public var _tmp(get, set) : haxe.ds.Vector<std.UInt>;
    function get__tmp():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._tmp) i]);
    function set__tmp(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_conn:stdgo._internal.net.Net_Conn.Conn, ?_isClient:Bool, ?_handshakeFn:stdgo._internal.context.Context_Context.Context -> stdgo.Error, ?_quic:T_quicState, ?_isHandshakeComplete:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_, ?_handshakeMutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_handshakeErr:stdgo.Error, ?_vers:std.UInt, ?_haveVers:Bool, ?_config:Config, ?_handshakes:StdTypes.Int, ?_extMasterSecret:Bool, ?_didResume:Bool, ?_cipherSuite:std.UInt, ?_ocspResponse:Array<std.UInt>, ?_scts:Array<Array<std.UInt>>, ?_peerCertificates:Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, ?_activeCertHandles:Array<T_activeCert>, ?_verifiedChains:Array<Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, ?_serverName:String, ?_secureRenegotiation:Bool, ?_ekm:(stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }, ?_resumptionSecret:Array<std.UInt>, ?_ticketKeys:Array<T_ticketKey>, ?_clientFinishedIsFirst:Bool, ?_closeNotifyErr:stdgo.Error, ?_closeNotifySent:Bool, ?_clientFinished:haxe.ds.Vector<std.UInt>, ?_serverFinished:haxe.ds.Vector<std.UInt>, ?_clientProtocol:String, ?_in:T_halfConn, ?_out:T_halfConn, ?_rawInput:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_input:stdgo._internal.bytes.Bytes_Reader.Reader, ?_hand:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_buffering:Bool, ?_sendBuf:Array<std.UInt>, ?_bytesSent:haxe.Int64, ?_packetsSent:haxe.Int64, ?_retryCount:StdTypes.Int, ?_activeCall:stdgo._internal.sync.atomic_.Atomic__Int32.Int32, ?_tmp:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.crypto.tls.Tls_Conn.Conn(
_conn,
_isClient,
_handshakeFn,
(_quic : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_quicState.T_quicState>),
_isHandshakeComplete,
_handshakeMutex,
(_handshakeErr : stdgo.Error),
(_vers : stdgo.GoUInt16),
_haveVers,
(_config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>),
(_handshakes : stdgo.GoInt),
_extMasterSecret,
_didResume,
(_cipherSuite : stdgo.GoUInt16),
([for (i in _ocspResponse) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _scts) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>),
([for (i in _peerCertificates) (i : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>),
([for (i in _activeCertHandles) (i : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert>>),
([for (i in _verifiedChains) ([for (i in i) (i : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>)] : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>),
(_serverName : stdgo.GoString),
_secureRenegotiation,
_ekm,
([for (i in _resumptionSecret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _ticketKeys) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>),
_clientFinishedIsFirst,
(_closeNotifyErr : stdgo.Error),
_closeNotifySent,
([for (i in _clientFinished) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in _serverFinished) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
(_clientProtocol : stdgo.GoString),
_in,
_out,
_rawInput,
_input,
_hand,
_buffering,
([for (i in _sendBuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_bytesSent : stdgo.GoInt64),
(_packetsSent : stdgo.GoInt64),
(_retryCount : stdgo.GoInt),
_activeCall,
([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
