package stdgo.crypto.tls;
/**
    Package tls partially implements TLS 1.2, as specified in RFC 5246,
    and TLS 1.3, as specified in RFC 8446.
**/
class Tls {
    /**
        CipherSuites returns a list of cipher suites currently implemented by this
        package, excluding those with security issues, which are returned by
        InsecureCipherSuites.
        
        The list is sorted by ID. Note that the default cipher suites selected by
        this package might depend on logic that can't be captured by a static list,
        and might not match those returned by this function.
    **/
    static public inline function cipherSuites():Array<CipherSuite> {
        return [for (i in stdgo._internal.crypto.tls.Tls_cipherSuites.cipherSuites()) i];
    }
    /**
        InsecureCipherSuites returns a list of cipher suites currently implemented by
        this package and which have security issues.
        
        Most applications should not use the cipher suites in this list, and should
        only use those returned by CipherSuites.
    **/
    static public inline function insecureCipherSuites():Array<CipherSuite> {
        return [for (i in stdgo._internal.crypto.tls.Tls_insecureCipherSuites.insecureCipherSuites()) i];
    }
    /**
        CipherSuiteName returns the standard name for the passed cipher suite ID
        (e.g. "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"), or a fallback representation
        of the ID value if the cipher suite is not implemented by this package.
    **/
    static public inline function cipherSuiteName(_id:std.UInt):String {
        final _id = (_id : stdgo.GoUInt16);
        return stdgo._internal.crypto.tls.Tls_cipherSuiteName.cipherSuiteName(_id);
    }
    /**
        VersionName returns the name for the provided TLS version number
        (e.g. "TLS 1.3"), or a fallback representation of the value if the
        version is not implemented by this package.
    **/
    static public inline function versionName(_version:std.UInt):String {
        final _version = (_version : stdgo.GoUInt16);
        return stdgo._internal.crypto.tls.Tls_versionName.versionName(_version);
    }
    /**
        NewLRUClientSessionCache returns a ClientSessionCache with the given
        capacity that uses an LRU strategy. If capacity is < 1, a default capacity
        is used instead.
    **/
    static public inline function newLRUClientSessionCache(_capacity:StdTypes.Int):ClientSessionCache {
        final _capacity = (_capacity : stdgo.GoInt);
        return stdgo._internal.crypto.tls.Tls_newLRUClientSessionCache.newLRUClientSessionCache(_capacity);
    }
    /**
        QUICClient returns a new TLS client side connection using QUICTransport as the
        underlying transport. The config cannot be nil.
        
        The config's MinVersion must be at least TLS 1.3.
    **/
    static public inline function qUICClient(_config:QUICConfig):QUICConn {
        final _config = (_config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConfig.QUICConfig>);
        return stdgo._internal.crypto.tls.Tls_qUICClient.qUICClient(_config);
    }
    /**
        QUICServer returns a new TLS server side connection using QUICTransport as the
        underlying transport. The config cannot be nil.
        
        The config's MinVersion must be at least TLS 1.3.
    **/
    static public inline function qUICServer(_config:QUICConfig):QUICConn {
        final _config = (_config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConfig.QUICConfig>);
        return stdgo._internal.crypto.tls.Tls_qUICServer.qUICServer(_config);
    }
    /**
        ParseSessionState parses a [SessionState] encoded by [SessionState.Bytes].
    **/
    static public inline function parseSessionState(_data:Array<std.UInt>):stdgo.Tuple<SessionState, stdgo.Error> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_parseSessionState.parseSessionState(_data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewResumptionState returns a state value that can be returned by
        [ClientSessionCache.Get] to resume a previous session.
        
        state needs to be returned by [ParseSessionState], and the ticket and session
        state must have been returned by [ClientSessionState.ResumptionState].
    **/
    static public inline function newResumptionState(_ticket:Array<std.UInt>, _state:SessionState):stdgo.Tuple<ClientSessionState, stdgo.Error> {
        final _ticket = ([for (i in _ticket) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _state = (_state : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_newResumptionState.newResumptionState(_ticket, _state);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Server returns a new TLS server side connection
        using conn as the underlying transport.
        The configuration config must be non-nil and must include
        at least one certificate or else set GetCertificate.
    **/
    static public inline function server(_conn:stdgo._internal.net.Net_Conn.Conn, _config:Config):Conn {
        final _config = (_config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return stdgo._internal.crypto.tls.Tls_server.server(_conn, _config);
    }
    /**
        Client returns a new TLS client side connection
        using conn as the underlying transport.
        The config cannot be nil: users must set either ServerName or
        InsecureSkipVerify in the config.
    **/
    static public inline function client(_conn:stdgo._internal.net.Net_Conn.Conn, _config:Config):Conn {
        final _config = (_config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return stdgo._internal.crypto.tls.Tls_client.client(_conn, _config);
    }
    /**
        NewListener creates a Listener which accepts connections from an inner
        Listener and wraps each connection with Server.
        The configuration config must be non-nil and must include
        at least one certificate or else set GetCertificate.
    **/
    static public inline function newListener(_inner:stdgo._internal.net.Net_Listener.Listener, _config:Config):stdgo._internal.net.Net_Listener.Listener {
        final _config = (_config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return stdgo._internal.crypto.tls.Tls_newListener.newListener(_inner, _config);
    }
    /**
        Listen creates a TLS listener accepting connections on the
        given network address using net.Listen.
        The configuration config must be non-nil and must include
        at least one certificate or else set GetCertificate.
    **/
    static public inline function listen(_network:String, _laddr:String, _config:Config):stdgo.Tuple<stdgo._internal.net.Net_Listener.Listener, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _laddr = (_laddr : stdgo.GoString);
        final _config = (_config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_listen.listen(_network, _laddr, _config);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        DialWithDialer connects to the given network address using dialer.Dial and
        then initiates a TLS handshake, returning the resulting TLS connection. Any
        timeout or deadline given in the dialer apply to connection and TLS
        handshake as a whole.
        
        DialWithDialer interprets a nil configuration as equivalent to the zero
        configuration; see the documentation of Config for the defaults.
        
        DialWithDialer uses context.Background internally; to specify the context,
        use Dialer.DialContext with NetDialer set to the desired dialer.
    **/
    static public inline function dialWithDialer(_dialer:stdgo._internal.net.Net_Dialer.Dialer, _network:String, _addr:String, _config:Config):stdgo.Tuple<Conn, stdgo.Error> {
        final _dialer = (_dialer : stdgo.Ref<stdgo._internal.net.Net_Dialer.Dialer>);
        final _network = (_network : stdgo.GoString);
        final _addr = (_addr : stdgo.GoString);
        final _config = (_config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_dialWithDialer.dialWithDialer(_dialer, _network, _addr, _config);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Dial connects to the given network address using net.Dial
        and then initiates a TLS handshake, returning the resulting
        TLS connection.
        Dial interprets a nil configuration as equivalent to
        the zero configuration; see the documentation of Config
        for the defaults.
    **/
    static public inline function dial(_network:String, _addr:String, _config:Config):stdgo.Tuple<Conn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _addr = (_addr : stdgo.GoString);
        final _config = (_config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_dial.dial(_network, _addr, _config);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        LoadX509KeyPair reads and parses a public/private key pair from a pair
        of files. The files must contain PEM encoded data. The certificate file
        may contain intermediate certificates following the leaf certificate to
        form a certificate chain. On successful return, Certificate.Leaf will
        be nil because the parsed form of the certificate is not retained.
    **/
    static public inline function loadX509KeyPair(_certFile:String, _keyFile:String):stdgo.Tuple<Certificate, stdgo.Error> {
        final _certFile = (_certFile : stdgo.GoString);
        final _keyFile = (_keyFile : stdgo.GoString);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_loadX509KeyPair.loadX509KeyPair(_certFile, _keyFile);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        X509KeyPair parses a public/private key pair from a pair of
        PEM encoded data. On successful return, Certificate.Leaf will be nil because
        the parsed form of the certificate is not retained.
    **/
    static public inline function x509KeyPair(_certPEMBlock:Array<std.UInt>, _keyPEMBlock:Array<std.UInt>):stdgo.Tuple<Certificate, stdgo.Error> {
        final _certPEMBlock = ([for (i in _certPEMBlock) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _keyPEMBlock = ([for (i in _keyPEMBlock) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_x509KeyPair.x509KeyPair(_certPEMBlock, _keyPEMBlock);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
