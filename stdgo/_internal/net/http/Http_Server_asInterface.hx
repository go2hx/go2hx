package stdgo._internal.net.http;
class Server_asInterface {
    @:keep
    @:tdfield
    public dynamic function _onceSetNextProtoDefaults():Void @:_0 __self__.value._onceSetNextProtoDefaults();
    @:keep
    @:tdfield
    public dynamic function _onceSetNextProtoDefaults_Serve():Void @:_0 __self__.value._onceSetNextProtoDefaults_Serve();
    @:keep
    @:tdfield
    public dynamic function _setupHTTP2_Serve():stdgo.Error return @:_0 __self__.value._setupHTTP2_Serve();
    @:keep
    @:tdfield
    public dynamic function _setupHTTP2_ServeTLS():stdgo.Error return @:_0 __self__.value._setupHTTP2_ServeTLS();
    @:keep
    @:tdfield
    public dynamic function listenAndServeTLS(_certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error return @:_0 __self__.value.listenAndServeTLS(_certFile, _keyFile);
    @:keep
    @:tdfield
    public dynamic function _logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._logf(_format, ..._args);
    @:keep
    @:tdfield
    public dynamic function setKeepAlivesEnabled(_v:Bool):Void @:_0 __self__.value.setKeepAlivesEnabled(_v);
    @:keep
    @:tdfield
    public dynamic function _shuttingDown():Bool return @:_0 __self__.value._shuttingDown();
    @:keep
    @:tdfield
    public dynamic function _doKeepAlives():Bool return @:_0 __self__.value._doKeepAlives();
    @:keep
    @:tdfield
    public dynamic function _readHeaderTimeout():stdgo._internal.time.Time_Duration.Duration return @:_0 __self__.value._readHeaderTimeout();
    @:keep
    @:tdfield
    public dynamic function _idleTimeout():stdgo._internal.time.Time_Duration.Duration return @:_0 __self__.value._idleTimeout();
    @:keep
    @:tdfield
    public dynamic function _trackConn(_c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, _add:Bool):Void @:_0 __self__.value._trackConn(_c, _add);
    @:keep
    @:tdfield
    public dynamic function _trackListener(_ln:stdgo.Ref<stdgo._internal.net.Net_Listener.Listener>, _add:Bool):Bool return @:_0 __self__.value._trackListener(_ln, _add);
    @:keep
    @:tdfield
    public dynamic function serveTLS(_l:stdgo._internal.net.Net_Listener.Listener, _certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error return @:_0 __self__.value.serveTLS(_l, _certFile, _keyFile);
    @:keep
    @:tdfield
    public dynamic function serve(_l:stdgo._internal.net.Net_Listener.Listener):stdgo.Error return @:_0 __self__.value.serve(_l);
    @:keep
    @:tdfield
    public dynamic function _shouldConfigureHTTP2ForServe():Bool return @:_0 __self__.value._shouldConfigureHTTP2ForServe();
    @:keep
    @:tdfield
    public dynamic function listenAndServe():stdgo.Error return @:_0 __self__.value.listenAndServe();
    @:keep
    @:tdfield
    public dynamic function _closeListenersLocked():stdgo.Error return @:_0 __self__.value._closeListenersLocked();
    @:keep
    @:tdfield
    public dynamic function _closeIdleConns():Bool return @:_0 __self__.value._closeIdleConns();
    @:keep
    @:tdfield
    public dynamic function registerOnShutdown(_f:() -> Void):Void @:_0 __self__.value.registerOnShutdown(_f);
    @:keep
    @:tdfield
    public dynamic function shutdown(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return @:_0 __self__.value.shutdown(_ctx);
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function _tlsHandshakeTimeout():stdgo._internal.time.Time_Duration.Duration return @:_0 __self__.value._tlsHandshakeTimeout();
    @:keep
    @:tdfield
    public dynamic function _initialReadLimitSize():stdgo.GoInt64 return @:_0 __self__.value._initialReadLimitSize();
    @:keep
    @:tdfield
    public dynamic function _maxHeaderBytes():stdgo.GoInt return @:_0 __self__.value._maxHeaderBytes();
    @:keep
    @:tdfield
    public dynamic function _newConn(_rwc:stdgo._internal.net.Net_Conn.Conn):stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> return @:_0 __self__.value._newConn(_rwc);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_ServerPointer.ServerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
