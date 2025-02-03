package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.Config_static_extension) abstract Config(stdgo._internal.crypto.tls.Tls_Config.Config) from stdgo._internal.crypto.tls.Tls_Config.Config to stdgo._internal.crypto.tls.Tls_Config.Config {
    public var rand(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get_rand():stdgo._internal.io.Io_Reader.Reader return this.rand;
    function set_rand(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this.rand = v;
        return v;
    }
    public var time(get, set) : () -> stdgo._internal.time.Time_Time.Time;
    function get_time():() -> stdgo._internal.time.Time_Time.Time return () -> this.time();
    function set_time(v:() -> stdgo._internal.time.Time_Time.Time):() -> stdgo._internal.time.Time_Time.Time {
        this.time = v;
        return v;
    }
    public var certificates(get, set) : Array<Certificate>;
    function get_certificates():Array<Certificate> return [for (i in this.certificates) i];
    function set_certificates(v:Array<Certificate>):Array<Certificate> {
        this.certificates = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
        return v;
    }
    public var nameToCertificate(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>>;
    function get_nameToCertificate():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>> return this.nameToCertificate;
    function set_nameToCertificate(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>> {
        this.nameToCertificate = (v : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>>);
        return v;
    }
    public var getCertificate(get, set) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>; var _1 : stdgo.Error; };
    function get_getCertificate():stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>; var _1 : stdgo.Error; } return _0 -> this.getCertificate(_0);
    function set_getCertificate(v:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>; var _1 : stdgo.Error; }):stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>; var _1 : stdgo.Error; } {
        this.getCertificate = v;
        return v;
    }
    public var getClientCertificate(get, set) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>; var _1 : stdgo.Error; };
    function get_getClientCertificate():stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>; var _1 : stdgo.Error; } return _0 -> this.getClientCertificate(_0);
    function set_getClientCertificate(v:stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>; var _1 : stdgo.Error; }):stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>; var _1 : stdgo.Error; } {
        this.getClientCertificate = v;
        return v;
    }
    public var getConfigForClient(get, set) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>; var _1 : stdgo.Error; };
    function get_getConfigForClient():stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>; var _1 : stdgo.Error; } return _0 -> this.getConfigForClient(_0);
    function set_getConfigForClient(v:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>; var _1 : stdgo.Error; }):stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>; var _1 : stdgo.Error; } {
        this.getConfigForClient = v;
        return v;
    }
    public var verifyPeerCertificate(get, set) : (stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>) -> stdgo.Error;
    function get_verifyPeerCertificate():(stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>) -> stdgo.Error return (_0, _1) -> this.verifyPeerCertificate([for (i in _0) [for (i in i) i]], [for (i in _1) [for (i in i) i]]);
    function set_verifyPeerCertificate(v:(stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>) -> stdgo.Error):(stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>) -> stdgo.Error {
        this.verifyPeerCertificate = v;
        return v;
    }
    public var verifyConnection(get, set) : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState -> stdgo.Error;
    function get_verifyConnection():stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState -> stdgo.Error return _0 -> this.verifyConnection(_0);
    function set_verifyConnection(v:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState -> stdgo.Error):stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState -> stdgo.Error {
        this.verifyConnection = v;
        return v;
    }
    public var rootCAs(get, set) : stdgo._internal.crypto.x509.X509_CertPool.CertPool;
    function get_rootCAs():stdgo._internal.crypto.x509.X509_CertPool.CertPool return this.rootCAs;
    function set_rootCAs(v:stdgo._internal.crypto.x509.X509_CertPool.CertPool):stdgo._internal.crypto.x509.X509_CertPool.CertPool {
        this.rootCAs = (v : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
        return v;
    }
    public var nextProtos(get, set) : Array<String>;
    function get_nextProtos():Array<String> return [for (i in this.nextProtos) i];
    function set_nextProtos(v:Array<String>):Array<String> {
        this.nextProtos = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var serverName(get, set) : String;
    function get_serverName():String return this.serverName;
    function set_serverName(v:String):String {
        this.serverName = (v : stdgo.GoString);
        return v;
    }
    public var clientAuth(get, set) : ClientAuthType;
    function get_clientAuth():ClientAuthType return this.clientAuth;
    function set_clientAuth(v:ClientAuthType):ClientAuthType {
        this.clientAuth = v;
        return v;
    }
    public var clientCAs(get, set) : stdgo._internal.crypto.x509.X509_CertPool.CertPool;
    function get_clientCAs():stdgo._internal.crypto.x509.X509_CertPool.CertPool return this.clientCAs;
    function set_clientCAs(v:stdgo._internal.crypto.x509.X509_CertPool.CertPool):stdgo._internal.crypto.x509.X509_CertPool.CertPool {
        this.clientCAs = (v : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
        return v;
    }
    public var insecureSkipVerify(get, set) : Bool;
    function get_insecureSkipVerify():Bool return this.insecureSkipVerify;
    function set_insecureSkipVerify(v:Bool):Bool {
        this.insecureSkipVerify = v;
        return v;
    }
    public var cipherSuites(get, set) : Array<std.UInt>;
    function get_cipherSuites():Array<std.UInt> return [for (i in this.cipherSuites) i];
    function set_cipherSuites(v:Array<std.UInt>):Array<std.UInt> {
        this.cipherSuites = ([for (i in v) (i : stdgo.GoUInt16)] : stdgo.Slice<stdgo.GoUInt16>);
        return v;
    }
    public var preferServerCipherSuites(get, set) : Bool;
    function get_preferServerCipherSuites():Bool return this.preferServerCipherSuites;
    function set_preferServerCipherSuites(v:Bool):Bool {
        this.preferServerCipherSuites = v;
        return v;
    }
    public var sessionTicketsDisabled(get, set) : Bool;
    function get_sessionTicketsDisabled():Bool return this.sessionTicketsDisabled;
    function set_sessionTicketsDisabled(v:Bool):Bool {
        this.sessionTicketsDisabled = v;
        return v;
    }
    public var sessionTicketKey(get, set) : haxe.ds.Vector<std.UInt>;
    function get_sessionTicketKey():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.sessionTicketKey) i]);
    function set_sessionTicketKey(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.sessionTicketKey = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var clientSessionCache(get, set) : ClientSessionCache;
    function get_clientSessionCache():ClientSessionCache return this.clientSessionCache;
    function set_clientSessionCache(v:ClientSessionCache):ClientSessionCache {
        this.clientSessionCache = v;
        return v;
    }
    public var unwrapSession(get, set) : (stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState) -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Error; };
    function get_unwrapSession():(stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState) -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Error; } return (_0, _1) -> this.unwrapSession([for (i in _0) i], _1);
    function set_unwrapSession(v:(stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState) -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Error; }):(stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState) -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Error; } {
        this.unwrapSession = v;
        return v;
    }
    public var wrapSession(get, set) : (stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState, stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    function get_wrapSession():(stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState, stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return (_0, _1) -> this.wrapSession(_0, _1);
    function set_wrapSession(v:(stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState, stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }):(stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState, stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        this.wrapSession = v;
        return v;
    }
    public var minVersion(get, set) : std.UInt;
    function get_minVersion():std.UInt return this.minVersion;
    function set_minVersion(v:std.UInt):std.UInt {
        this.minVersion = (v : stdgo.GoUInt16);
        return v;
    }
    public var maxVersion(get, set) : std.UInt;
    function get_maxVersion():std.UInt return this.maxVersion;
    function set_maxVersion(v:std.UInt):std.UInt {
        this.maxVersion = (v : stdgo.GoUInt16);
        return v;
    }
    public var curvePreferences(get, set) : Array<CurveID>;
    function get_curvePreferences():Array<CurveID> return [for (i in this.curvePreferences) i];
    function set_curvePreferences(v:Array<CurveID>):Array<CurveID> {
        this.curvePreferences = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_CurveID.CurveID>);
        return v;
    }
    public var dynamicRecordSizingDisabled(get, set) : Bool;
    function get_dynamicRecordSizingDisabled():Bool return this.dynamicRecordSizingDisabled;
    function set_dynamicRecordSizingDisabled(v:Bool):Bool {
        this.dynamicRecordSizingDisabled = v;
        return v;
    }
    public var renegotiation(get, set) : RenegotiationSupport;
    function get_renegotiation():RenegotiationSupport return this.renegotiation;
    function set_renegotiation(v:RenegotiationSupport):RenegotiationSupport {
        this.renegotiation = v;
        return v;
    }
    public var keyLogWriter(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get_keyLogWriter():stdgo._internal.io.Io_Writer.Writer return this.keyLogWriter;
    function set_keyLogWriter(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this.keyLogWriter = v;
        return v;
    }
    public var _mutex(get, set) : stdgo._internal.sync.Sync_RWMutex.RWMutex;
    function get__mutex():stdgo._internal.sync.Sync_RWMutex.RWMutex return this._mutex;
    function set__mutex(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        this._mutex = v;
        return v;
    }
    public var _sessionTicketKeys(get, set) : Array<T_ticketKey>;
    function get__sessionTicketKeys():Array<T_ticketKey> return [for (i in this._sessionTicketKeys) i];
    function set__sessionTicketKeys(v:Array<T_ticketKey>):Array<T_ticketKey> {
        this._sessionTicketKeys = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>);
        return v;
    }
    public var _autoSessionTicketKeys(get, set) : Array<T_ticketKey>;
    function get__autoSessionTicketKeys():Array<T_ticketKey> return [for (i in this._autoSessionTicketKeys) i];
    function set__autoSessionTicketKeys(v:Array<T_ticketKey>):Array<T_ticketKey> {
        this._autoSessionTicketKeys = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>);
        return v;
    }
    public function new(?rand:stdgo._internal.io.Io_Reader.Reader, ?time:() -> stdgo._internal.time.Time_Time.Time, ?certificates:Array<Certificate>, ?nameToCertificate:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>>, ?getCertificate:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>; var _1 : stdgo.Error; }, ?getClientCertificate:stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>; var _1 : stdgo.Error; }, ?getConfigForClient:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>; var _1 : stdgo.Error; }, ?verifyPeerCertificate:(stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>) -> stdgo.Error, ?verifyConnection:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState -> stdgo.Error, ?rootCAs:stdgo._internal.crypto.x509.X509_CertPool.CertPool, ?nextProtos:Array<String>, ?serverName:String, ?clientAuth:ClientAuthType, ?clientCAs:stdgo._internal.crypto.x509.X509_CertPool.CertPool, ?insecureSkipVerify:Bool, ?cipherSuites:Array<std.UInt>, ?preferServerCipherSuites:Bool, ?sessionTicketsDisabled:Bool, ?sessionTicketKey:haxe.ds.Vector<std.UInt>, ?clientSessionCache:ClientSessionCache, ?unwrapSession:(stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState) -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Error; }, ?wrapSession:(stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState, stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }, ?minVersion:std.UInt, ?maxVersion:std.UInt, ?curvePreferences:Array<CurveID>, ?dynamicRecordSizingDisabled:Bool, ?renegotiation:RenegotiationSupport, ?keyLogWriter:stdgo._internal.io.Io_Writer.Writer, ?_mutex:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_sessionTicketKeys:Array<T_ticketKey>, ?_autoSessionTicketKeys:Array<T_ticketKey>) this = new stdgo._internal.crypto.tls.Tls_Config.Config(
rand,
time,
([for (i in certificates) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>),
(nameToCertificate : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>>),
getCertificate,
getClientCertificate,
getConfigForClient,
verifyPeerCertificate,
verifyConnection,
(rootCAs : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>),
([for (i in nextProtos) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(serverName : stdgo.GoString),
clientAuth,
(clientCAs : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>),
insecureSkipVerify,
([for (i in cipherSuites) (i : stdgo.GoUInt16)] : stdgo.Slice<stdgo.GoUInt16>),
preferServerCipherSuites,
sessionTicketsDisabled,
([for (i in sessionTicketKey) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
clientSessionCache,
unwrapSession,
wrapSession,
(minVersion : stdgo.GoUInt16),
(maxVersion : stdgo.GoUInt16),
([for (i in curvePreferences) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_CurveID.CurveID>),
dynamicRecordSizingDisabled,
renegotiation,
keyLogWriter,
_mutex,
([for (i in _sessionTicketKeys) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>),
([for (i in _autoSessionTicketKeys) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
