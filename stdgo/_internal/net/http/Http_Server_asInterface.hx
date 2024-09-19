package stdgo._internal.net.http;
class Server_asInterface {
    @:keep
    public dynamic function _onceSetNextProtoDefaults():Void __self__.value._onceSetNextProtoDefaults();
    @:keep
    public dynamic function _onceSetNextProtoDefaults_Serve():Void __self__.value._onceSetNextProtoDefaults_Serve();
    @:keep
    public dynamic function _setupHTTP2_Serve():stdgo.Error return __self__.value._setupHTTP2_Serve();
    @:keep
    public dynamic function _setupHTTP2_ServeTLS():stdgo.Error return __self__.value._setupHTTP2_ServeTLS();
    @:keep
    public dynamic function listenAndServeTLS(_certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error return __self__.value.listenAndServeTLS(_certFile, _keyFile);
    @:keep
    public dynamic function _logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._logf(_format, ..._args);
    @:keep
    public dynamic function setKeepAlivesEnabled(_v:Bool):Void __self__.value.setKeepAlivesEnabled(_v);
    @:keep
    public dynamic function _shuttingDown():Bool return __self__.value._shuttingDown();
    @:keep
    public dynamic function _doKeepAlives():Bool return __self__.value._doKeepAlives();
    @:keep
    public dynamic function _readHeaderTimeout():stdgo._internal.time.Time_Duration.Duration return __self__.value._readHeaderTimeout();
    @:keep
    public dynamic function _idleTimeout():stdgo._internal.time.Time_Duration.Duration return __self__.value._idleTimeout();
    @:keep
    public dynamic function _trackConn(_c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, _add:Bool):Void __self__.value._trackConn(_c, _add);
    @:keep
    public dynamic function _trackListener(_ln:stdgo.Ref<stdgo._internal.net.Net_Listener.Listener>, _add:Bool):Bool return __self__.value._trackListener(_ln, _add);
    @:keep
    public dynamic function serveTLS(_l:stdgo._internal.net.Net_Listener.Listener, _certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error return __self__.value.serveTLS(_l, _certFile, _keyFile);
    @:keep
    public dynamic function serve(_l:stdgo._internal.net.Net_Listener.Listener):stdgo.Error return __self__.value.serve(_l);
    @:keep
    public dynamic function _shouldConfigureHTTP2ForServe():Bool return __self__.value._shouldConfigureHTTP2ForServe();
    @:keep
    public dynamic function listenAndServe():stdgo.Error return __self__.value.listenAndServe();
    @:keep
    public dynamic function _closeListenersLocked():stdgo.Error return __self__.value._closeListenersLocked();
    @:keep
    public dynamic function _closeIdleConns():Bool return __self__.value._closeIdleConns();
    @:keep
    public dynamic function registerOnShutdown(_f:() -> Void):Void __self__.value.registerOnShutdown(_f);
    @:keep
    public dynamic function shutdown(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return __self__.value.shutdown(_ctx);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function _tlsHandshakeTimeout():stdgo._internal.time.Time_Duration.Duration return __self__.value._tlsHandshakeTimeout();
    @:keep
    public dynamic function _initialReadLimitSize():stdgo.GoInt64 return __self__.value._initialReadLimitSize();
    @:keep
    public dynamic function _maxHeaderBytes():stdgo.GoInt return __self__.value._maxHeaderBytes();
    @:keep
    public dynamic function _newConn(_rwc:stdgo._internal.net.Net_Conn.Conn):stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> return __self__.value._newConn(_rwc);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_Server.Server>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
