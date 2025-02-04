package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_server_static_extension.Server_static_extension) class Server {
    public var addr : stdgo.GoString = "";
    public var handler : stdgo._internal.net.http.Http_handler.Handler = (null : stdgo._internal.net.http.Http_handler.Handler);
    public var disableGeneralOptionsHandler : Bool = false;
    public var tLSConfig : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
    public var readTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var readHeaderTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var writeTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var idleTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var maxHeaderBytes : stdgo.GoInt = 0;
    public var tLSNextProto : stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, stdgo._internal.net.http.Http_handler.Handler) -> Void> = (null : stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, stdgo._internal.net.http.Http_handler.Handler) -> Void>);
    public var connState : (stdgo._internal.net.Net_conn.Conn, stdgo._internal.net.http.Http_connstate.ConnState) -> Void = null;
    public var errorLog : stdgo.Ref<stdgo._internal.log.Log_logger.Logger> = (null : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
    public var baseContext : stdgo._internal.net.Net_listener.Listener -> stdgo._internal.context.Context_context.Context = null;
    public var connContext : (stdgo._internal.context.Context_context.Context, stdgo._internal.net.Net_conn.Conn) -> stdgo._internal.context.Context_context.Context = null;
    public function new(?addr:stdgo.GoString, ?handler:stdgo._internal.net.http.Http_handler.Handler, ?disableGeneralOptionsHandler:Bool, ?tLSConfig:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, ?readTimeout:stdgo._internal.time.Time_duration.Duration, ?readHeaderTimeout:stdgo._internal.time.Time_duration.Duration, ?writeTimeout:stdgo._internal.time.Time_duration.Duration, ?idleTimeout:stdgo._internal.time.Time_duration.Duration, ?maxHeaderBytes:stdgo.GoInt, ?tLSNextProto:stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, stdgo._internal.net.http.Http_handler.Handler) -> Void>, ?connState:(stdgo._internal.net.Net_conn.Conn, stdgo._internal.net.http.Http_connstate.ConnState) -> Void, ?errorLog:stdgo.Ref<stdgo._internal.log.Log_logger.Logger>, ?baseContext:stdgo._internal.net.Net_listener.Listener -> stdgo._internal.context.Context_context.Context, ?connContext:(stdgo._internal.context.Context_context.Context, stdgo._internal.net.Net_conn.Conn) -> stdgo._internal.context.Context_context.Context) {
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
connContext);
    }
}
