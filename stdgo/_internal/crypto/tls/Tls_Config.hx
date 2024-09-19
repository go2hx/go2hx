package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_Config_static_extension.Config_static_extension) class Config {
    public var rand : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var time : () -> stdgo._internal.time.Time_Time.Time = null;
    public var certificates : stdgo.Slice<stdgo._internal.crypto.tls.Tls_Certificate.Certificate> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
    public var nameToCertificate : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>>);
    public var getCertificate : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>; var _1 : stdgo.Error; } = null;
    public var getClientCertificate : stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>; var _1 : stdgo.Error; } = null;
    public var getConfigForClient : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>; var _1 : stdgo.Error; } = null;
    public var verifyPeerCertificate : (stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>) -> stdgo.Error = null;
    public var verifyConnection : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState -> stdgo.Error = null;
    public var rootCAs : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
    public var nextProtos : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var serverName : stdgo.GoString = "";
    public var clientAuth : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType);
    public var clientCAs : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
    public var insecureSkipVerify : Bool = false;
    public var cipherSuites : stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
    public var preferServerCipherSuites : Bool = false;
    public var sessionTicketsDisabled : Bool = false;
    public var sessionTicketKey : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt8)]);
    public var clientSessionCache : stdgo._internal.crypto.tls.Tls_ClientSessionCache.ClientSessionCache = (null : stdgo._internal.crypto.tls.Tls_ClientSessionCache.ClientSessionCache);
    public var unwrapSession : (stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState) -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Error; } = null;
    public var wrapSession : (stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState, stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = null;
    public var minVersion : stdgo.GoUInt16 = 0;
    public var maxVersion : stdgo.GoUInt16 = 0;
    public var curvePreferences : stdgo.Slice<stdgo._internal.crypto.tls.Tls_CurveID.CurveID> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_CurveID.CurveID>);
    public var dynamicRecordSizingDisabled : Bool = false;
    public var renegotiation : stdgo._internal.crypto.tls.Tls_RenegotiationSupport.RenegotiationSupport = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_RenegotiationSupport.RenegotiationSupport);
    public var keyLogWriter : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public var _mutex : stdgo._internal.sync.Sync_RWMutex.RWMutex = ({} : stdgo._internal.sync.Sync_RWMutex.RWMutex);
    public var _sessionTicketKeys : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>);
    public var _autoSessionTicketKeys : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>);
    public function new(?rand:stdgo._internal.io.Io_Reader.Reader, ?time:() -> stdgo._internal.time.Time_Time.Time, ?certificates:stdgo.Slice<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>, ?nameToCertificate:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>>, ?getCertificate:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>; var _1 : stdgo.Error; }, ?getClientCertificate:stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>; var _1 : stdgo.Error; }, ?getConfigForClient:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>; var _1 : stdgo.Error; }, ?verifyPeerCertificate:(stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>) -> stdgo.Error, ?verifyConnection:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState -> stdgo.Error, ?rootCAs:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>, ?nextProtos:stdgo.Slice<stdgo.GoString>, ?serverName:stdgo.GoString, ?clientAuth:stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType, ?clientCAs:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>, ?insecureSkipVerify:Bool, ?cipherSuites:stdgo.Slice<stdgo.GoUInt16>, ?preferServerCipherSuites:Bool, ?sessionTicketsDisabled:Bool, ?sessionTicketKey:stdgo.GoArray<stdgo.GoUInt8>, ?clientSessionCache:stdgo._internal.crypto.tls.Tls_ClientSessionCache.ClientSessionCache, ?unwrapSession:(stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState) -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Error; }, ?wrapSession:(stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState, stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }, ?minVersion:stdgo.GoUInt16, ?maxVersion:stdgo.GoUInt16, ?curvePreferences:stdgo.Slice<stdgo._internal.crypto.tls.Tls_CurveID.CurveID>, ?dynamicRecordSizingDisabled:Bool, ?renegotiation:stdgo._internal.crypto.tls.Tls_RenegotiationSupport.RenegotiationSupport, ?keyLogWriter:stdgo._internal.io.Io_Writer.Writer, ?_mutex:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_sessionTicketKeys:stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>, ?_autoSessionTicketKeys:stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>) {
        if (rand != null) this.rand = rand;
        if (time != null) this.time = time;
        if (certificates != null) this.certificates = certificates;
        if (nameToCertificate != null) this.nameToCertificate = nameToCertificate;
        if (getCertificate != null) this.getCertificate = getCertificate;
        if (getClientCertificate != null) this.getClientCertificate = getClientCertificate;
        if (getConfigForClient != null) this.getConfigForClient = getConfigForClient;
        if (verifyPeerCertificate != null) this.verifyPeerCertificate = verifyPeerCertificate;
        if (verifyConnection != null) this.verifyConnection = verifyConnection;
        if (rootCAs != null) this.rootCAs = rootCAs;
        if (nextProtos != null) this.nextProtos = nextProtos;
        if (serverName != null) this.serverName = serverName;
        if (clientAuth != null) this.clientAuth = clientAuth;
        if (clientCAs != null) this.clientCAs = clientCAs;
        if (insecureSkipVerify != null) this.insecureSkipVerify = insecureSkipVerify;
        if (cipherSuites != null) this.cipherSuites = cipherSuites;
        if (preferServerCipherSuites != null) this.preferServerCipherSuites = preferServerCipherSuites;
        if (sessionTicketsDisabled != null) this.sessionTicketsDisabled = sessionTicketsDisabled;
        if (sessionTicketKey != null) this.sessionTicketKey = sessionTicketKey;
        if (clientSessionCache != null) this.clientSessionCache = clientSessionCache;
        if (unwrapSession != null) this.unwrapSession = unwrapSession;
        if (wrapSession != null) this.wrapSession = wrapSession;
        if (minVersion != null) this.minVersion = minVersion;
        if (maxVersion != null) this.maxVersion = maxVersion;
        if (curvePreferences != null) this.curvePreferences = curvePreferences;
        if (dynamicRecordSizingDisabled != null) this.dynamicRecordSizingDisabled = dynamicRecordSizingDisabled;
        if (renegotiation != null) this.renegotiation = renegotiation;
        if (keyLogWriter != null) this.keyLogWriter = keyLogWriter;
        if (_mutex != null) this._mutex = _mutex;
        if (_sessionTicketKeys != null) this._sessionTicketKeys = _sessionTicketKeys;
        if (_autoSessionTicketKeys != null) this._autoSessionTicketKeys = _autoSessionTicketKeys;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Config(
rand,
time,
certificates,
nameToCertificate,
getCertificate,
getClientCertificate,
getConfigForClient,
verifyPeerCertificate,
verifyConnection,
rootCAs,
nextProtos,
serverName,
clientAuth,
clientCAs,
insecureSkipVerify,
cipherSuites,
preferServerCipherSuites,
sessionTicketsDisabled,
sessionTicketKey,
clientSessionCache,
unwrapSession,
wrapSession,
minVersion,
maxVersion,
curvePreferences,
dynamicRecordSizingDisabled,
renegotiation,
keyLogWriter,
_mutex,
_sessionTicketKeys,
_autoSessionTicketKeys);
    }
}
