package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension) class Transport {
    public var _idleMu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _closeIdle : Bool = false;
    public var _idleConn : stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>>> = (null : stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>>>);
    public var _idleConnWait : stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue> = (null : stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>);
    public var _idleLRU : stdgo._internal.net.http.Http_T_connLRU.T_connLRU = ({} : stdgo._internal.net.http.Http_T_connLRU.T_connLRU);
    public var _reqMu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _reqCanceler : stdgo.GoMap<stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey, stdgo.Error -> Void> = (null : stdgo.GoMap<stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey, stdgo.Error -> Void>);
    public var _altMu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _altProto : stdgo._internal.sync.atomic_.Atomic__Value.Value = ({} : stdgo._internal.sync.atomic_.Atomic__Value.Value);
    public var _connsPerHostMu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _connsPerHost : stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.GoInt> = (null : stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.GoInt>);
    public var _connsPerHostWait : stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue> = (null : stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>);
    public var proxy : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; } = null;
    public var onProxyConnectResponse : (stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) -> stdgo.Error = null;
    public var dialContext : (stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } = null;
    public var dial : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } = null;
    public var dialTLSContext : (stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } = null;
    public var dialTLS : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } = null;
    public var tLSClientConfig : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
    public var tLSHandshakeTimeout : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var disableKeepAlives : Bool = false;
    public var disableCompression : Bool = false;
    public var maxIdleConns : stdgo.GoInt = 0;
    public var maxIdleConnsPerHost : stdgo.GoInt = 0;
    public var maxConnsPerHost : stdgo.GoInt = 0;
    public var idleConnTimeout : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var responseHeaderTimeout : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var expectContinueTimeout : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var tLSNextProto : stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>) -> stdgo._internal.net.http.Http_RoundTripper.RoundTripper> = (null : stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>) -> stdgo._internal.net.http.Http_RoundTripper.RoundTripper>);
    public var proxyConnectHeader : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public var getProxyConnectHeader : (stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.GoString) -> { var _0 : stdgo._internal.net.http.Http_Header.Header; var _1 : stdgo.Error; } = null;
    public var maxResponseHeaderBytes : stdgo.GoInt64 = 0;
    public var writeBufferSize : stdgo.GoInt = 0;
    public var readBufferSize : stdgo.GoInt = 0;
    public var _nextProtoOnce : stdgo._internal.sync.Sync_Once.Once = ({} : stdgo._internal.sync.Sync_Once.Once);
    public var _h2transport : stdgo._internal.net.http.Http_T_h2Transport.T_h2Transport = (null : stdgo._internal.net.http.Http_T_h2Transport.T_h2Transport);
    public var _tlsNextProtoWasNil : Bool = false;
    public var forceAttemptHTTP2 : Bool = false;
    public function new(?_idleMu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_closeIdle:Bool, ?_idleConn:stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>>>, ?_idleConnWait:stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>, ?_idleLRU:stdgo._internal.net.http.Http_T_connLRU.T_connLRU, ?_reqMu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_reqCanceler:stdgo.GoMap<stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey, stdgo.Error -> Void>, ?_altMu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_altProto:stdgo._internal.sync.atomic_.Atomic__Value.Value, ?_connsPerHostMu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_connsPerHost:stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.GoInt>, ?_connsPerHostWait:stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>, ?proxy:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; }, ?onProxyConnectResponse:(stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) -> stdgo.Error, ?dialContext:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }, ?dial:(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }, ?dialTLSContext:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }, ?dialTLS:(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }, ?tLSClientConfig:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, ?tLSHandshakeTimeout:stdgo._internal.time.Time_Duration.Duration, ?disableKeepAlives:Bool, ?disableCompression:Bool, ?maxIdleConns:stdgo.GoInt, ?maxIdleConnsPerHost:stdgo.GoInt, ?maxConnsPerHost:stdgo.GoInt, ?idleConnTimeout:stdgo._internal.time.Time_Duration.Duration, ?responseHeaderTimeout:stdgo._internal.time.Time_Duration.Duration, ?expectContinueTimeout:stdgo._internal.time.Time_Duration.Duration, ?tLSNextProto:stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>) -> stdgo._internal.net.http.Http_RoundTripper.RoundTripper>, ?proxyConnectHeader:stdgo._internal.net.http.Http_Header.Header, ?getProxyConnectHeader:(stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.GoString) -> { var _0 : stdgo._internal.net.http.Http_Header.Header; var _1 : stdgo.Error; }, ?maxResponseHeaderBytes:stdgo.GoInt64, ?writeBufferSize:stdgo.GoInt, ?readBufferSize:stdgo.GoInt, ?_nextProtoOnce:stdgo._internal.sync.Sync_Once.Once, ?_h2transport:stdgo._internal.net.http.Http_T_h2Transport.T_h2Transport, ?_tlsNextProtoWasNil:Bool, ?forceAttemptHTTP2:Bool) {
        if (_idleMu != null) this._idleMu = _idleMu;
        if (_closeIdle != null) this._closeIdle = _closeIdle;
        if (_idleConn != null) this._idleConn = _idleConn;
        if (_idleConnWait != null) this._idleConnWait = _idleConnWait;
        if (_idleLRU != null) this._idleLRU = _idleLRU;
        if (_reqMu != null) this._reqMu = _reqMu;
        if (_reqCanceler != null) this._reqCanceler = _reqCanceler;
        if (_altMu != null) this._altMu = _altMu;
        if (_altProto != null) this._altProto = _altProto;
        if (_connsPerHostMu != null) this._connsPerHostMu = _connsPerHostMu;
        if (_connsPerHost != null) this._connsPerHost = _connsPerHost;
        if (_connsPerHostWait != null) this._connsPerHostWait = _connsPerHostWait;
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
        if (_nextProtoOnce != null) this._nextProtoOnce = _nextProtoOnce;
        if (_h2transport != null) this._h2transport = _h2transport;
        if (_tlsNextProtoWasNil != null) this._tlsNextProtoWasNil = _tlsNextProtoWasNil;
        if (forceAttemptHTTP2 != null) this.forceAttemptHTTP2 = forceAttemptHTTP2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Transport(
_idleMu,
_closeIdle,
_idleConn,
_idleConnWait,
_idleLRU,
_reqMu,
_reqCanceler,
_altMu,
_altProto,
_connsPerHostMu,
_connsPerHost,
_connsPerHostWait,
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
_nextProtoOnce,
_h2transport,
_tlsNextProtoWasNil,
forceAttemptHTTP2);
    }
}
