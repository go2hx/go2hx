package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension) class Server {
    public var addr : stdgo.GoString = "";
    public var handler : stdgo._internal.net.http.Http_Handler.Handler = (null : stdgo._internal.net.http.Http_Handler.Handler);
    public var disableGeneralOptionsHandler : Bool = false;
    public var tLSConfig : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
    public var readTimeout : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var readHeaderTimeout : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var writeTimeout : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var idleTimeout : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var maxHeaderBytes : stdgo.GoInt = 0;
    public var tLSNextProto : stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, stdgo._internal.net.http.Http_Handler.Handler) -> Void> = (null : stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, stdgo._internal.net.http.Http_Handler.Handler) -> Void>);
    public var connState : (stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState) -> Void = null;
    public var errorLog : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> = (null : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
    public var baseContext : stdgo._internal.net.Net_Listener.Listener -> stdgo._internal.context.Context_Context.Context = null;
    public var connContext : (stdgo._internal.context.Context_Context.Context, stdgo._internal.net.Net_Conn.Conn) -> stdgo._internal.context.Context_Context.Context = null;
    public var _inShutdown : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_);
    public var _disableKeepAlives : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_);
    public var _nextProtoOnce : stdgo._internal.sync.Sync_Once.Once = ({} : stdgo._internal.sync.Sync_Once.Once);
    public var _nextProtoErr : stdgo.Error = (null : stdgo.Error);
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _listeners : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.Net_Listener.Listener>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.Net_Listener.Listener>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public var _activeConn : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public var _onShutdown : stdgo.Slice<() -> Void> = (null : stdgo.Slice<() -> Void>);
    public var _listenerGroup : stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
    public function new(?addr:stdgo.GoString, ?handler:stdgo._internal.net.http.Http_Handler.Handler, ?disableGeneralOptionsHandler:Bool, ?tLSConfig:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, ?readTimeout:stdgo._internal.time.Time_Duration.Duration, ?readHeaderTimeout:stdgo._internal.time.Time_Duration.Duration, ?writeTimeout:stdgo._internal.time.Time_Duration.Duration, ?idleTimeout:stdgo._internal.time.Time_Duration.Duration, ?maxHeaderBytes:stdgo.GoInt, ?tLSNextProto:stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, stdgo._internal.net.http.Http_Handler.Handler) -> Void>, ?connState:(stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState) -> Void, ?errorLog:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>, ?baseContext:stdgo._internal.net.Net_Listener.Listener -> stdgo._internal.context.Context_Context.Context, ?connContext:(stdgo._internal.context.Context_Context.Context, stdgo._internal.net.Net_Conn.Conn) -> stdgo._internal.context.Context_Context.Context, ?_inShutdown:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_, ?_disableKeepAlives:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_, ?_nextProtoOnce:stdgo._internal.sync.Sync_Once.Once, ?_nextProtoErr:stdgo.Error, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_listeners:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.Net_Listener.Listener>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_activeConn:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_onShutdown:stdgo.Slice<() -> Void>, ?_listenerGroup:stdgo._internal.sync.Sync_WaitGroup.WaitGroup) {
        if (addr != null) this.addr = addr;
        if (handler != null) this.handler = handler;
        if (disableGeneralOptionsHandler != null) this.disableGeneralOptionsHandler = disableGeneralOptionsHandler;
        if (tLSConfig != null) this.tLSConfig = tLSConfig;
        if (readTimeout != null) this.readTimeout = readTimeout;
        if (readHeaderTimeout != null) this.readHeaderTimeout = readHeaderTimeout;
        if (writeTimeout != null) this.writeTimeout = writeTimeout;
        if (idleTimeout != null) this.idleTimeout = idleTimeout;
        if (maxHeaderBytes != null) this.maxHeaderBytes = maxHeaderBytes;
        if (tLSNextProto != null) this.tLSNextProto = tLSNextProto;
        if (connState != null) this.connState = connState;
        if (errorLog != null) this.errorLog = errorLog;
        if (baseContext != null) this.baseContext = baseContext;
        if (connContext != null) this.connContext = connContext;
        if (_inShutdown != null) this._inShutdown = _inShutdown;
        if (_disableKeepAlives != null) this._disableKeepAlives = _disableKeepAlives;
        if (_nextProtoOnce != null) this._nextProtoOnce = _nextProtoOnce;
        if (_nextProtoErr != null) this._nextProtoErr = _nextProtoErr;
        if (_mu != null) this._mu = _mu;
        if (_listeners != null) this._listeners = _listeners;
        if (_activeConn != null) this._activeConn = _activeConn;
        if (_onShutdown != null) this._onShutdown = _onShutdown;
        if (_listenerGroup != null) this._listenerGroup = _listenerGroup;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Server(
addr,
handler,
disableGeneralOptionsHandler,
tLSConfig,
readTimeout,
readHeaderTimeout,
writeTimeout,
idleTimeout,
maxHeaderBytes,
tLSNextProto,
connState,
errorLog,
baseContext,
connContext,
_inShutdown,
_disableKeepAlives,
_nextProtoOnce,
_nextProtoErr,
_mu,
_listeners,
_activeConn,
_onShutdown,
_listenerGroup);
    }
}
