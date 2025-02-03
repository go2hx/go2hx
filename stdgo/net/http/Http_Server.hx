package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.Server_static_extension) abstract Server(stdgo._internal.net.http.Http_Server.Server) from stdgo._internal.net.http.Http_Server.Server to stdgo._internal.net.http.Http_Server.Server {
    public var addr(get, set) : String;
    function get_addr():String return this.addr;
    function set_addr(v:String):String {
        this.addr = (v : stdgo.GoString);
        return v;
    }
    public var handler(get, set) : Handler;
    function get_handler():Handler return this.handler;
    function set_handler(v:Handler):Handler {
        this.handler = v;
        return v;
    }
    public var disableGeneralOptionsHandler(get, set) : Bool;
    function get_disableGeneralOptionsHandler():Bool return this.disableGeneralOptionsHandler;
    function set_disableGeneralOptionsHandler(v:Bool):Bool {
        this.disableGeneralOptionsHandler = v;
        return v;
    }
    public var tLSConfig(get, set) : stdgo._internal.crypto.tls.Tls_Config.Config;
    function get_tLSConfig():stdgo._internal.crypto.tls.Tls_Config.Config return this.tLSConfig;
    function set_tLSConfig(v:stdgo._internal.crypto.tls.Tls_Config.Config):stdgo._internal.crypto.tls.Tls_Config.Config {
        this.tLSConfig = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return v;
    }
    public var readTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_readTimeout():stdgo._internal.time.Time_Duration.Duration return this.readTimeout;
    function set_readTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.readTimeout = v;
        return v;
    }
    public var readHeaderTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_readHeaderTimeout():stdgo._internal.time.Time_Duration.Duration return this.readHeaderTimeout;
    function set_readHeaderTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.readHeaderTimeout = v;
        return v;
    }
    public var writeTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_writeTimeout():stdgo._internal.time.Time_Duration.Duration return this.writeTimeout;
    function set_writeTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.writeTimeout = v;
        return v;
    }
    public var idleTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_idleTimeout():stdgo._internal.time.Time_Duration.Duration return this.idleTimeout;
    function set_idleTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.idleTimeout = v;
        return v;
    }
    public var maxHeaderBytes(get, set) : StdTypes.Int;
    function get_maxHeaderBytes():StdTypes.Int return this.maxHeaderBytes;
    function set_maxHeaderBytes(v:StdTypes.Int):StdTypes.Int {
        this.maxHeaderBytes = (v : stdgo.GoInt);
        return v;
    }
    public var tLSNextProto(get, set) : stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, stdgo._internal.net.http.Http_Handler.Handler) -> Void>;
    function get_tLSNextProto():stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, stdgo._internal.net.http.Http_Handler.Handler) -> Void> return this.tLSNextProto;
    function set_tLSNextProto(v:stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, stdgo._internal.net.http.Http_Handler.Handler) -> Void>):stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, stdgo._internal.net.http.Http_Handler.Handler) -> Void> {
        this.tLSNextProto = (v : stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, stdgo._internal.net.http.Http_Handler.Handler) -> Void>);
        return v;
    }
    public var connState(get, set) : (stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState) -> Void;
    function get_connState():(stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState) -> Void return (_0, _1) -> this.connState(_0, _1);
    function set_connState(v:(stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState) -> Void):(stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState) -> Void {
        this.connState = v;
        return v;
    }
    public var errorLog(get, set) : stdgo._internal.log.Log_Logger.Logger;
    function get_errorLog():stdgo._internal.log.Log_Logger.Logger return this.errorLog;
    function set_errorLog(v:stdgo._internal.log.Log_Logger.Logger):stdgo._internal.log.Log_Logger.Logger {
        this.errorLog = (v : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        return v;
    }
    public var baseContext(get, set) : stdgo._internal.net.Net_Listener.Listener -> stdgo._internal.context.Context_Context.Context;
    function get_baseContext():stdgo._internal.net.Net_Listener.Listener -> stdgo._internal.context.Context_Context.Context return _0 -> this.baseContext(_0);
    function set_baseContext(v:stdgo._internal.net.Net_Listener.Listener -> stdgo._internal.context.Context_Context.Context):stdgo._internal.net.Net_Listener.Listener -> stdgo._internal.context.Context_Context.Context {
        this.baseContext = v;
        return v;
    }
    public var connContext(get, set) : (stdgo._internal.context.Context_Context.Context, stdgo._internal.net.Net_Conn.Conn) -> stdgo._internal.context.Context_Context.Context;
    function get_connContext():(stdgo._internal.context.Context_Context.Context, stdgo._internal.net.Net_Conn.Conn) -> stdgo._internal.context.Context_Context.Context return (_0, _1) -> this.connContext(_0, _1);
    function set_connContext(v:(stdgo._internal.context.Context_Context.Context, stdgo._internal.net.Net_Conn.Conn) -> stdgo._internal.context.Context_Context.Context):(stdgo._internal.context.Context_Context.Context, stdgo._internal.net.Net_Conn.Conn) -> stdgo._internal.context.Context_Context.Context {
        this.connContext = v;
        return v;
    }
    public function new(?addr:String, ?handler:Handler, ?disableGeneralOptionsHandler:Bool, ?tLSConfig:stdgo._internal.crypto.tls.Tls_Config.Config, ?readTimeout:stdgo._internal.time.Time_Duration.Duration, ?readHeaderTimeout:stdgo._internal.time.Time_Duration.Duration, ?writeTimeout:stdgo._internal.time.Time_Duration.Duration, ?idleTimeout:stdgo._internal.time.Time_Duration.Duration, ?maxHeaderBytes:StdTypes.Int, ?tLSNextProto:stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, stdgo._internal.net.http.Http_Handler.Handler) -> Void>, ?connState:(stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState) -> Void, ?errorLog:stdgo._internal.log.Log_Logger.Logger, ?baseContext:stdgo._internal.net.Net_Listener.Listener -> stdgo._internal.context.Context_Context.Context, ?connContext:(stdgo._internal.context.Context_Context.Context, stdgo._internal.net.Net_Conn.Conn) -> stdgo._internal.context.Context_Context.Context) this = new stdgo._internal.net.http.Http_Server.Server(
(addr : stdgo.GoString),
handler,
disableGeneralOptionsHandler,
(tLSConfig : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>),
readTimeout,
readHeaderTimeout,
writeTimeout,
idleTimeout,
(maxHeaderBytes : stdgo.GoInt),
(tLSNextProto : stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, stdgo._internal.net.http.Http_Handler.Handler) -> Void>),
connState,
(errorLog : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>),
baseContext,
connContext);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
