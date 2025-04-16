package stdgo.crypto.tls;
var tLS_RSA_WITH_RC4_128_SHA : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_RSA_WITH_3DES_EDE_CBC_SHA : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_RSA_WITH_AES_128_CBC_SHA : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_RSA_WITH_AES_256_CBC_SHA : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_RSA_WITH_AES_128_CBC_SHA256 : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_RSA_WITH_AES_128_GCM_SHA256 : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_RSA_WITH_AES_256_GCM_SHA384 : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_ECDHE_ECDSA_WITH_RC4_128_SHA : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_ECDHE_RSA_WITH_RC4_128_SHA : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_ECDHE_RSA_WITH_AES_128_CBC_SHA : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_ECDHE_RSA_WITH_AES_256_CBC_SHA : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256 : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256 : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256 : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256 : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_AES_128_GCM_SHA256 : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_AES_256_GCM_SHA384 : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_CHACHA20_POLY1305_SHA256 : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_FALLBACK_SCSV : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_ECDHE_RSA_WITH_CHACHA20_POLY1305 : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var tLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305 : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var versionTLS10 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var versionTLS11 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var versionTLS12 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var versionTLS13 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var versionSSL30 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var curveP256 : CurveID = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
var curveP384 : CurveID = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
var curveP521 : CurveID = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
var x25519 : CurveID = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
var noClientCert : ClientAuthType = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType);
var requestClientCert : ClientAuthType = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType);
var requireAnyClientCert : ClientAuthType = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType);
var verifyClientCertIfGiven : ClientAuthType = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType);
var requireAndVerifyClientCert : ClientAuthType = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType);
var pKCS1WithSHA256 : SignatureScheme = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
var pKCS1WithSHA384 : SignatureScheme = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
var pKCS1WithSHA512 : SignatureScheme = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
var pSSWithSHA256 : SignatureScheme = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
var pSSWithSHA384 : SignatureScheme = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
var pSSWithSHA512 : SignatureScheme = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
var eCDSAWithP256AndSHA256 : SignatureScheme = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
var eCDSAWithP384AndSHA384 : SignatureScheme = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
var eCDSAWithP521AndSHA512 : SignatureScheme = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
var ed25519 : SignatureScheme = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
var pKCS1WithSHA1 : SignatureScheme = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
var eCDSAWithSHA1 : SignatureScheme = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
var renegotiateNever : RenegotiationSupport = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_renegotiationsupport.RenegotiationSupport);
var renegotiateOnceAsClient : RenegotiationSupport = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_renegotiationsupport.RenegotiationSupport);
var renegotiateFreelyAsClient : RenegotiationSupport = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_renegotiationsupport.RenegotiationSupport);
var qUICEncryptionLevelInitial : QUICEncryptionLevel = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel);
var qUICEncryptionLevelEarly : QUICEncryptionLevel = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel);
var qUICEncryptionLevelHandshake : QUICEncryptionLevel = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel);
var qUICEncryptionLevelApplication : QUICEncryptionLevel = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel);
var qUICNoEvent : QUICEventKind = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind);
var qUICSetReadSecret : QUICEventKind = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind);
var qUICSetWriteSecret : QUICEventKind = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind);
var qUICWriteData : QUICEventKind = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind);
var qUICTransportParameters : QUICEventKind = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind);
var qUICTransportParametersRequired : QUICEventKind = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind);
var qUICRejectedEarlyData : QUICEventKind = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind);
var qUICHandshakeDone : QUICEventKind = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind);
typedef ClientSessionCache = stdgo._internal.crypto.tls.Tls_clientsessioncache.ClientSessionCache;
typedef CipherSuite = stdgo._internal.crypto.tls.Tls_ciphersuite.CipherSuite;
typedef ConnectionState = stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState;
typedef ClientHelloInfo = stdgo._internal.crypto.tls.Tls_clienthelloinfo.ClientHelloInfo;
typedef CertificateRequestInfo = stdgo._internal.crypto.tls.Tls_certificaterequestinfo.CertificateRequestInfo;
typedef Config = stdgo._internal.crypto.tls.Tls_config.Config;
typedef Certificate = stdgo._internal.crypto.tls.Tls_certificate.Certificate;
typedef CertificateVerificationError = stdgo._internal.crypto.tls.Tls_certificateverificationerror.CertificateVerificationError;
typedef Conn = stdgo._internal.crypto.tls.Tls_conn.Conn;
typedef RecordHeaderError = stdgo._internal.crypto.tls.Tls_recordheadererror.RecordHeaderError;
typedef QUICConn = stdgo._internal.crypto.tls.Tls_quicconn.QUICConn;
typedef QUICConfig = stdgo._internal.crypto.tls.Tls_quicconfig.QUICConfig;
typedef QUICEvent = stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent;
typedef QUICSessionTicketOptions = stdgo._internal.crypto.tls.Tls_quicsessionticketoptions.QUICSessionTicketOptions;
typedef SessionState = stdgo._internal.crypto.tls.Tls_sessionstate.SessionState;
typedef ClientSessionState = stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState;
typedef Dialer = stdgo._internal.crypto.tls.Tls_dialer.Dialer;
typedef AlertError = stdgo._internal.crypto.tls.Tls_alerterror.AlertError;
typedef CurveID = stdgo._internal.crypto.tls.Tls_curveid.CurveID;
typedef ClientAuthType = stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType;
typedef SignatureScheme = stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme;
typedef RenegotiationSupport = stdgo._internal.crypto.tls.Tls_renegotiationsupport.RenegotiationSupport;
typedef QUICEncryptionLevel = stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel;
typedef QUICEventKind = stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind;
typedef CipherSuitePointer = stdgo._internal.crypto.tls.Tls_ciphersuitepointer.CipherSuitePointer;
typedef ConnectionStatePointer = stdgo._internal.crypto.tls.Tls_connectionstatepointer.ConnectionStatePointer;
typedef ClientHelloInfoPointer = stdgo._internal.crypto.tls.Tls_clienthelloinfopointer.ClientHelloInfoPointer;
typedef CertificateRequestInfoPointer = stdgo._internal.crypto.tls.Tls_certificaterequestinfopointer.CertificateRequestInfoPointer;
typedef ConfigPointer = stdgo._internal.crypto.tls.Tls_configpointer.ConfigPointer;
typedef CertificatePointer = stdgo._internal.crypto.tls.Tls_certificatepointer.CertificatePointer;
typedef CertificateVerificationErrorPointer = stdgo._internal.crypto.tls.Tls_certificateverificationerrorpointer.CertificateVerificationErrorPointer;
typedef ConnPointer = stdgo._internal.crypto.tls.Tls_connpointer.ConnPointer;
typedef RecordHeaderErrorPointer = stdgo._internal.crypto.tls.Tls_recordheadererrorpointer.RecordHeaderErrorPointer;
typedef QUICConnPointer = stdgo._internal.crypto.tls.Tls_quicconnpointer.QUICConnPointer;
typedef QUICConfigPointer = stdgo._internal.crypto.tls.Tls_quicconfigpointer.QUICConfigPointer;
typedef QUICEventPointer = stdgo._internal.crypto.tls.Tls_quiceventpointer.QUICEventPointer;
typedef QUICSessionTicketOptionsPointer = stdgo._internal.crypto.tls.Tls_quicsessionticketoptionspointer.QUICSessionTicketOptionsPointer;
typedef SessionStatePointer = stdgo._internal.crypto.tls.Tls_sessionstatepointer.SessionStatePointer;
typedef ClientSessionStatePointer = stdgo._internal.crypto.tls.Tls_clientsessionstatepointer.ClientSessionStatePointer;
typedef DialerPointer = stdgo._internal.crypto.tls.Tls_dialerpointer.DialerPointer;
typedef AlertErrorPointer = stdgo._internal.crypto.tls.Tls_alerterrorpointer.AlertErrorPointer;
typedef CurveIDPointer = stdgo._internal.crypto.tls.Tls_curveidpointer.CurveIDPointer;
typedef ClientAuthTypePointer = stdgo._internal.crypto.tls.Tls_clientauthtypepointer.ClientAuthTypePointer;
typedef SignatureSchemePointer = stdgo._internal.crypto.tls.Tls_signatureschemepointer.SignatureSchemePointer;
typedef RenegotiationSupportPointer = stdgo._internal.crypto.tls.Tls_renegotiationsupportpointer.RenegotiationSupportPointer;
typedef QUICEncryptionLevelPointer = stdgo._internal.crypto.tls.Tls_quicencryptionlevelpointer.QUICEncryptionLevelPointer;
typedef QUICEventKindPointer = stdgo._internal.crypto.tls.Tls_quiceventkindpointer.QUICEventKindPointer;
/**
    * Package tls partially implements TLS 1.2, as specified in RFC 5246,
    * and TLS 1.3, as specified in RFC 8446.
**/
class Tls {
    /**
        * CipherSuites returns a list of cipher suites currently implemented by this
        * package, excluding those with security issues, which are returned by
        * InsecureCipherSuites.
        * 
        * The list is sorted by ID. Note that the default cipher suites selected by
        * this package might depend on logic that can't be captured by a static list,
        * and might not match those returned by this function.
    **/
    static public inline function cipherSuites():stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_ciphersuite.CipherSuite>> return stdgo._internal.crypto.tls.Tls_ciphersuites.cipherSuites();
    /**
        * InsecureCipherSuites returns a list of cipher suites currently implemented by
        * this package and which have security issues.
        * 
        * Most applications should not use the cipher suites in this list, and should
        * only use those returned by CipherSuites.
    **/
    static public inline function insecureCipherSuites():stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_ciphersuite.CipherSuite>> return stdgo._internal.crypto.tls.Tls_insecureciphersuites.insecureCipherSuites();
    /**
        * CipherSuiteName returns the standard name for the passed cipher suite ID
        * (e.g. "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"), or a fallback representation
        * of the ID value if the cipher suite is not implemented by this package.
    **/
    static public inline function cipherSuiteName(_id:stdgo.GoUInt16):stdgo.GoString return stdgo._internal.crypto.tls.Tls_ciphersuitename.cipherSuiteName(_id);
    /**
        * VersionName returns the name for the provided TLS version number
        * (e.g. "TLS 1.3"), or a fallback representation of the value if the
        * version is not implemented by this package.
    **/
    static public inline function versionName(_version:stdgo.GoUInt16):stdgo.GoString return stdgo._internal.crypto.tls.Tls_versionname.versionName(_version);
    /**
        * NewLRUClientSessionCache returns a ClientSessionCache with the given
        * capacity that uses an LRU strategy. If capacity is < 1, a default capacity
        * is used instead.
    **/
    static public inline function newLRUClientSessionCache(_capacity:stdgo.GoInt):stdgo._internal.crypto.tls.Tls_clientsessioncache.ClientSessionCache return stdgo._internal.crypto.tls.Tls_newlruclientsessioncache.newLRUClientSessionCache(_capacity);
    /**
        * QUICClient returns a new TLS client side connection using QUICTransport as the
        * underlying transport. The config cannot be nil.
        * 
        * The config's MinVersion must be at least TLS 1.3.
    **/
    static public inline function qUICClient(_config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconfig.QUICConfig>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn> return stdgo._internal.crypto.tls.Tls_quicclient.qUICClient(_config);
    /**
        * QUICServer returns a new TLS server side connection using QUICTransport as the
        * underlying transport. The config cannot be nil.
        * 
        * The config's MinVersion must be at least TLS 1.3.
    **/
    static public inline function qUICServer(_config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconfig.QUICConfig>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn> return stdgo._internal.crypto.tls.Tls_quicserver.qUICServer(_config);
    /**
        * ParseSessionState parses a [SessionState] encoded by [SessionState.Bytes].
    **/
    static public inline function parseSessionState(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Error; } return stdgo._internal.crypto.tls.Tls_parsesessionstate.parseSessionState(_data);
    /**
        * NewResumptionState returns a state value that can be returned by
        * [ClientSessionCache.Get] to resume a previous session.
        * 
        * state needs to be returned by [ParseSessionState], and the ticket and session
        * state must have been returned by [ClientSessionState.ResumptionState].
    **/
    static public inline function newResumptionState(_ticket:stdgo.Slice<stdgo.GoUInt8>, _state:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>; var _1 : stdgo.Error; } return stdgo._internal.crypto.tls.Tls_newresumptionstate.newResumptionState(_ticket, _state);
    /**
        * Server returns a new TLS server side connection
        * using conn as the underlying transport.
        * The configuration config must be non-nil and must include
        * at least one certificate or else set GetCertificate.
    **/
    static public inline function server(_conn:stdgo._internal.net.Net_conn.Conn, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> return stdgo._internal.crypto.tls.Tls_server.server(_conn, _config);
    /**
        * Client returns a new TLS client side connection
        * using conn as the underlying transport.
        * The config cannot be nil: users must set either ServerName or
        * InsecureSkipVerify in the config.
    **/
    static public inline function client(_conn:stdgo._internal.net.Net_conn.Conn, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> return stdgo._internal.crypto.tls.Tls_client.client(_conn, _config);
    /**
        * NewListener creates a Listener which accepts connections from an inner
        * Listener and wraps each connection with Server.
        * The configuration config must be non-nil and must include
        * at least one certificate or else set GetCertificate.
    **/
    static public inline function newListener(_inner:stdgo._internal.net.Net_listener.Listener, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo._internal.net.Net_listener.Listener return stdgo._internal.crypto.tls.Tls_newlistener.newListener(_inner, _config);
    /**
        * Listen creates a TLS listener accepting connections on the
        * given network address using net.Listen.
        * The configuration config must be non-nil and must include
        * at least one certificate or else set GetCertificate.
    **/
    static public inline function listen(_network:stdgo.GoString, _laddr:stdgo.GoString, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):{ var _0 : stdgo._internal.net.Net_listener.Listener; var _1 : stdgo.Error; } return stdgo._internal.crypto.tls.Tls_listen.listen(_network, _laddr, _config);
    /**
        * DialWithDialer connects to the given network address using dialer.Dial and
        * then initiates a TLS handshake, returning the resulting TLS connection. Any
        * timeout or deadline given in the dialer apply to connection and TLS
        * handshake as a whole.
        * 
        * DialWithDialer interprets a nil configuration as equivalent to the zero
        * configuration; see the documentation of Config for the defaults.
        * 
        * DialWithDialer uses context.Background internally; to specify the context,
        * use Dialer.DialContext with NetDialer set to the desired dialer.
    **/
    static public inline function dialWithDialer(_dialer:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>, _network:stdgo.GoString, _addr:stdgo.GoString, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>; var _1 : stdgo.Error; } return stdgo._internal.crypto.tls.Tls_dialwithdialer.dialWithDialer(_dialer, _network, _addr, _config);
    /**
        * Dial connects to the given network address using net.Dial
        * and then initiates a TLS handshake, returning the resulting
        * TLS connection.
        * Dial interprets a nil configuration as equivalent to
        * the zero configuration; see the documentation of Config
        * for the defaults.
    **/
    static public inline function dial(_network:stdgo.GoString, _addr:stdgo.GoString, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>; var _1 : stdgo.Error; } return stdgo._internal.crypto.tls.Tls_dial.dial(_network, _addr, _config);
    /**
        * LoadX509KeyPair reads and parses a public/private key pair from a pair
        * of files. The files must contain PEM encoded data. The certificate file
        * may contain intermediate certificates following the leaf certificate to
        * form a certificate chain. On successful return, Certificate.Leaf will
        * be nil because the parsed form of the certificate is not retained.
    **/
    static public inline function loadX509KeyPair(_certFile:stdgo.GoString, _keyFile:stdgo.GoString):{ var _0 : stdgo._internal.crypto.tls.Tls_certificate.Certificate; var _1 : stdgo.Error; } return stdgo._internal.crypto.tls.Tls_loadx509keypair.loadX509KeyPair(_certFile, _keyFile);
    /**
        * X509KeyPair parses a public/private key pair from a pair of
        * PEM encoded data. On successful return, Certificate.Leaf will be nil because
        * the parsed form of the certificate is not retained.
    **/
    static public inline function x509KeyPair(_certPEMBlock:stdgo.Slice<stdgo.GoUInt8>, _keyPEMBlock:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.tls.Tls_certificate.Certificate; var _1 : stdgo.Error; } return stdgo._internal.crypto.tls.Tls_x509keypair.x509KeyPair(_certPEMBlock, _keyPEMBlock);
}
