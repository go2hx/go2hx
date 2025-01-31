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
    public function new(?addr:stdgo.GoString, ?handler:stdgo._internal.net.http.Http_Handler.Handler, ?disableGeneralOptionsHandler:Bool, ?tLSConfig:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, ?readTimeout:stdgo._internal.time.Time_Duration.Duration, ?readHeaderTimeout:stdgo._internal.time.Time_Duration.Duration, ?writeTimeout:stdgo._internal.time.Time_Duration.Duration, ?idleTimeout:stdgo._internal.time.Time_Duration.Duration, ?maxHeaderBytes:stdgo.GoInt, ?tLSNextProto:stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, stdgo._internal.net.http.Http_Handler.Handler) -> Void>, ?connState:(stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState) -> Void, ?errorLog:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>, ?baseContext:stdgo._internal.net.Net_Listener.Listener -> stdgo._internal.context.Context_Context.Context, ?connContext:(stdgo._internal.context.Context_Context.Context, stdgo._internal.net.Net_Conn.Conn) -> stdgo._internal.context.Context_Context.Context) {
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
