package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.Transport_static_extension) abstract Transport(stdgo._internal.net.http.Http_Transport.Transport) from stdgo._internal.net.http.Http_Transport.Transport to stdgo._internal.net.http.Http_Transport.Transport {
    public var proxy(get, set) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; };
    function get_proxy():stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; } return _0 -> this.proxy(_0);
    function set_proxy(v:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; }):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; } {
        this.proxy = v;
        return v;
    }
    public var onProxyConnectResponse(get, set) : (stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) -> stdgo.Error;
    function get_onProxyConnectResponse():(stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) -> stdgo.Error return (_0, _1, _2, _3) -> this.onProxyConnectResponse(_0, _1, _2, _3);
    function set_onProxyConnectResponse(v:(stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) -> stdgo.Error):(stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) -> stdgo.Error {
        this.onProxyConnectResponse = v;
        return v;
    }
    public var dialContext(get, set) : (stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    function get_dialContext():(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return (_0, _1, _2) -> this.dialContext(_0, _1, _2);
    function set_dialContext(v:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }):(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        this.dialContext = v;
        return v;
    }
    public var dial(get, set) : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    function get_dial():(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return (_0, _1) -> this.dial(_0, _1);
    function set_dial(v:(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }):(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        this.dial = v;
        return v;
    }
    public var dialTLSContext(get, set) : (stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    function get_dialTLSContext():(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return (_0, _1, _2) -> this.dialTLSContext(_0, _1, _2);
    function set_dialTLSContext(v:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }):(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        this.dialTLSContext = v;
        return v;
    }
    public var dialTLS(get, set) : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    function get_dialTLS():(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return (_0, _1) -> this.dialTLS(_0, _1);
    function set_dialTLS(v:(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }):(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        this.dialTLS = v;
        return v;
    }
    public var tLSClientConfig(get, set) : stdgo._internal.crypto.tls.Tls_Config.Config;
    function get_tLSClientConfig():stdgo._internal.crypto.tls.Tls_Config.Config return this.tLSClientConfig;
    function set_tLSClientConfig(v:stdgo._internal.crypto.tls.Tls_Config.Config):stdgo._internal.crypto.tls.Tls_Config.Config {
        this.tLSClientConfig = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return v;
    }
    public var tLSHandshakeTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_tLSHandshakeTimeout():stdgo._internal.time.Time_Duration.Duration return this.tLSHandshakeTimeout;
    function set_tLSHandshakeTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.tLSHandshakeTimeout = v;
        return v;
    }
    public var disableKeepAlives(get, set) : Bool;
    function get_disableKeepAlives():Bool return this.disableKeepAlives;
    function set_disableKeepAlives(v:Bool):Bool {
        this.disableKeepAlives = v;
        return v;
    }
    public var disableCompression(get, set) : Bool;
    function get_disableCompression():Bool return this.disableCompression;
    function set_disableCompression(v:Bool):Bool {
        this.disableCompression = v;
        return v;
    }
    public var maxIdleConns(get, set) : StdTypes.Int;
    function get_maxIdleConns():StdTypes.Int return this.maxIdleConns;
    function set_maxIdleConns(v:StdTypes.Int):StdTypes.Int {
        this.maxIdleConns = (v : stdgo.GoInt);
        return v;
    }
    public var maxIdleConnsPerHost(get, set) : StdTypes.Int;
    function get_maxIdleConnsPerHost():StdTypes.Int return this.maxIdleConnsPerHost;
    function set_maxIdleConnsPerHost(v:StdTypes.Int):StdTypes.Int {
        this.maxIdleConnsPerHost = (v : stdgo.GoInt);
        return v;
    }
    public var maxConnsPerHost(get, set) : StdTypes.Int;
    function get_maxConnsPerHost():StdTypes.Int return this.maxConnsPerHost;
    function set_maxConnsPerHost(v:StdTypes.Int):StdTypes.Int {
        this.maxConnsPerHost = (v : stdgo.GoInt);
        return v;
    }
    public var idleConnTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_idleConnTimeout():stdgo._internal.time.Time_Duration.Duration return this.idleConnTimeout;
    function set_idleConnTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.idleConnTimeout = v;
        return v;
    }
    public var responseHeaderTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_responseHeaderTimeout():stdgo._internal.time.Time_Duration.Duration return this.responseHeaderTimeout;
    function set_responseHeaderTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.responseHeaderTimeout = v;
        return v;
    }
    public var expectContinueTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_expectContinueTimeout():stdgo._internal.time.Time_Duration.Duration return this.expectContinueTimeout;
    function set_expectContinueTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.expectContinueTimeout = v;
        return v;
    }
    public var tLSNextProto(get, set) : stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>) -> stdgo._internal.net.http.Http_RoundTripper.RoundTripper>;
    function get_tLSNextProto():stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>) -> stdgo._internal.net.http.Http_RoundTripper.RoundTripper> return this.tLSNextProto;
    function set_tLSNextProto(v:stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>) -> stdgo._internal.net.http.Http_RoundTripper.RoundTripper>):stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>) -> stdgo._internal.net.http.Http_RoundTripper.RoundTripper> {
        this.tLSNextProto = (v : stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>) -> stdgo._internal.net.http.Http_RoundTripper.RoundTripper>);
        return v;
    }
    public var proxyConnectHeader(get, set) : Header;
    function get_proxyConnectHeader():Header return this.proxyConnectHeader;
    function set_proxyConnectHeader(v:Header):Header {
        this.proxyConnectHeader = v;
        return v;
    }
    public var getProxyConnectHeader(get, set) : (stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.GoString) -> { var _0 : stdgo._internal.net.http.Http_Header.Header; var _1 : stdgo.Error; };
    function get_getProxyConnectHeader():(stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.GoString) -> { var _0 : stdgo._internal.net.http.Http_Header.Header; var _1 : stdgo.Error; } return (_0, _1, _2) -> this.getProxyConnectHeader(_0, _1, _2);
    function set_getProxyConnectHeader(v:(stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.GoString) -> { var _0 : stdgo._internal.net.http.Http_Header.Header; var _1 : stdgo.Error; }):(stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.GoString) -> { var _0 : stdgo._internal.net.http.Http_Header.Header; var _1 : stdgo.Error; } {
        this.getProxyConnectHeader = v;
        return v;
    }
    public var maxResponseHeaderBytes(get, set) : haxe.Int64;
    function get_maxResponseHeaderBytes():haxe.Int64 return this.maxResponseHeaderBytes;
    function set_maxResponseHeaderBytes(v:haxe.Int64):haxe.Int64 {
        this.maxResponseHeaderBytes = (v : stdgo.GoInt64);
        return v;
    }
    public var writeBufferSize(get, set) : StdTypes.Int;
    function get_writeBufferSize():StdTypes.Int return this.writeBufferSize;
    function set_writeBufferSize(v:StdTypes.Int):StdTypes.Int {
        this.writeBufferSize = (v : stdgo.GoInt);
        return v;
    }
    public var readBufferSize(get, set) : StdTypes.Int;
    function get_readBufferSize():StdTypes.Int return this.readBufferSize;
    function set_readBufferSize(v:StdTypes.Int):StdTypes.Int {
        this.readBufferSize = (v : stdgo.GoInt);
        return v;
    }
    public var forceAttemptHTTP2(get, set) : Bool;
    function get_forceAttemptHTTP2():Bool return this.forceAttemptHTTP2;
    function set_forceAttemptHTTP2(v:Bool):Bool {
        this.forceAttemptHTTP2 = v;
        return v;
    }
    public function new(?proxy:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; }, ?onProxyConnectResponse:(stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) -> stdgo.Error, ?dialContext:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }, ?dial:(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }, ?dialTLSContext:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }, ?dialTLS:(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }, ?tLSClientConfig:stdgo._internal.crypto.tls.Tls_Config.Config, ?tLSHandshakeTimeout:stdgo._internal.time.Time_Duration.Duration, ?disableKeepAlives:Bool, ?disableCompression:Bool, ?maxIdleConns:StdTypes.Int, ?maxIdleConnsPerHost:StdTypes.Int, ?maxConnsPerHost:StdTypes.Int, ?idleConnTimeout:stdgo._internal.time.Time_Duration.Duration, ?responseHeaderTimeout:stdgo._internal.time.Time_Duration.Duration, ?expectContinueTimeout:stdgo._internal.time.Time_Duration.Duration, ?tLSNextProto:stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>) -> stdgo._internal.net.http.Http_RoundTripper.RoundTripper>, ?proxyConnectHeader:Header, ?getProxyConnectHeader:(stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.GoString) -> { var _0 : stdgo._internal.net.http.Http_Header.Header; var _1 : stdgo.Error; }, ?maxResponseHeaderBytes:haxe.Int64, ?writeBufferSize:StdTypes.Int, ?readBufferSize:StdTypes.Int, ?forceAttemptHTTP2:Bool) this = new stdgo._internal.net.http.Http_Transport.Transport(
proxy,
onProxyConnectResponse,
dialContext,
dial,
dialTLSContext,
dialTLS,
(tLSClientConfig : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>),
tLSHandshakeTimeout,
disableKeepAlives,
disableCompression,
(maxIdleConns : stdgo.GoInt),
(maxIdleConnsPerHost : stdgo.GoInt),
(maxConnsPerHost : stdgo.GoInt),
idleConnTimeout,
responseHeaderTimeout,
expectContinueTimeout,
(tLSNextProto : stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>) -> stdgo._internal.net.http.Http_RoundTripper.RoundTripper>),
proxyConnectHeader,
getProxyConnectHeader,
(maxResponseHeaderBytes : stdgo.GoInt64),
(writeBufferSize : stdgo.GoInt),
(readBufferSize : stdgo.GoInt),
forceAttemptHTTP2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
