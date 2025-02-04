package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_transport_static_extension.Transport_static_extension) class Transport {
    public var proxy : stdgo.Ref<stdgo._internal.net.http.Http_request.Request> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } = null;
    public var onProxyConnectResponse : (stdgo._internal.context.Context_context.Context, stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.Ref<stdgo._internal.net.http.Http_response.Response>) -> stdgo.Error = null;
    public var dialContext : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = null;
    public var dial : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = null;
    public var dialTLSContext : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = null;
    public var dialTLS : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = null;
    public var tLSClientConfig : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
    public var tLSHandshakeTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var disableKeepAlives : Bool = false;
    public var disableCompression : Bool = false;
    public var maxIdleConns : stdgo.GoInt = 0;
    public var maxIdleConnsPerHost : stdgo.GoInt = 0;
    public var maxConnsPerHost : stdgo.GoInt = 0;
    public var idleConnTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var responseHeaderTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var expectContinueTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var tLSNextProto : stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>) -> stdgo._internal.net.http.Http_roundtripper.RoundTripper> = (null : stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>) -> stdgo._internal.net.http.Http_roundtripper.RoundTripper>);
    public var proxyConnectHeader : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var getProxyConnectHeader : (stdgo._internal.context.Context_context.Context, stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, stdgo.GoString) -> { var _0 : stdgo._internal.net.http.Http_header.Header; var _1 : stdgo.Error; } = null;
    public var maxResponseHeaderBytes : stdgo.GoInt64 = 0;
    public var writeBufferSize : stdgo.GoInt = 0;
    public var readBufferSize : stdgo.GoInt = 0;
    public var forceAttemptHTTP2 : Bool = false;
    public function new(?proxy:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; }, ?onProxyConnectResponse:(stdgo._internal.context.Context_context.Context, stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.Ref<stdgo._internal.net.http.Http_response.Response>) -> stdgo.Error, ?dialContext:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; }, ?dial:(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; }, ?dialTLSContext:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; }, ?dialTLS:(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; }, ?tLSClientConfig:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, ?tLSHandshakeTimeout:stdgo._internal.time.Time_duration.Duration, ?disableKeepAlives:Bool, ?disableCompression:Bool, ?maxIdleConns:stdgo.GoInt, ?maxIdleConnsPerHost:stdgo.GoInt, ?maxConnsPerHost:stdgo.GoInt, ?idleConnTimeout:stdgo._internal.time.Time_duration.Duration, ?responseHeaderTimeout:stdgo._internal.time.Time_duration.Duration, ?expectContinueTimeout:stdgo._internal.time.Time_duration.Duration, ?tLSNextProto:stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>) -> stdgo._internal.net.http.Http_roundtripper.RoundTripper>, ?proxyConnectHeader:stdgo._internal.net.http.Http_header.Header, ?getProxyConnectHeader:(stdgo._internal.context.Context_context.Context, stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, stdgo.GoString) -> { var _0 : stdgo._internal.net.http.Http_header.Header; var _1 : stdgo.Error; }, ?maxResponseHeaderBytes:stdgo.GoInt64, ?writeBufferSize:stdgo.GoInt, ?readBufferSize:stdgo.GoInt, ?forceAttemptHTTP2:Bool) {
        if (proxy != null) this.proxy = proxy;
        if (onProxyConnectResponse != null) this.onProxyConnectResponse = onProxyConnectResponse;
        if (dialContext != null) this.dialContext = dialContext;
        if (dial != null) this.dial = dial;
        if (dialTLSContext != null) this.dialTLSContext = dialTLSContext;
        if (dialTLS != null) this.dialTLS = dialTLS;
        if (tLSClientConfig != null) this.tLSClientConfig = tLSClientConfig;
        if (tLSHandshakeTimeout != null) this.tLSHandshakeTimeout = tLSHandshakeTimeout;
        if (disableKeepAlives != null) this.disableKeepAlives = disableKeepAlives;
        if (disableCompression != null) this.disableCompression = disableCompression;
        if (maxIdleConns != null) this.maxIdleConns = maxIdleConns;
        if (maxIdleConnsPerHost != null) this.maxIdleConnsPerHost = maxIdleConnsPerHost;
        if (maxConnsPerHost != null) this.maxConnsPerHost = maxConnsPerHost;
        if (idleConnTimeout != null) this.idleConnTimeout = idleConnTimeout;
        if (responseHeaderTimeout != null) this.responseHeaderTimeout = responseHeaderTimeout;
        if (expectContinueTimeout != null) this.expectContinueTimeout = expectContinueTimeout;
        if (tLSNextProto != null) this.tLSNextProto = tLSNextProto;
        if (proxyConnectHeader != null) this.proxyConnectHeader = proxyConnectHeader;
        if (getProxyConnectHeader != null) this.getProxyConnectHeader = getProxyConnectHeader;
        if (maxResponseHeaderBytes != null) this.maxResponseHeaderBytes = maxResponseHeaderBytes;
        if (writeBufferSize != null) this.writeBufferSize = writeBufferSize;
        if (readBufferSize != null) this.readBufferSize = readBufferSize;
        if (forceAttemptHTTP2 != null) this.forceAttemptHTTP2 = forceAttemptHTTP2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Transport(
proxy,
onProxyConnectResponse,
dialContext,
dial,
dialTLSContext,
dialTLS,
tLSClientConfig,
tLSHandshakeTimeout,
disableKeepAlives,
disableCompression,
maxIdleConns,
maxIdleConnsPerHost,
maxConnsPerHost,
idleConnTimeout,
responseHeaderTimeout,
expectContinueTimeout,
tLSNextProto,
proxyConnectHeader,
getProxyConnectHeader,
maxResponseHeaderBytes,
writeBufferSize,
readBufferSize,
forceAttemptHTTP2);
    }
}
