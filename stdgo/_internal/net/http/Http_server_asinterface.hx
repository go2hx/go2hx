package stdgo._internal.net.http;
class Server_asInterface {
    @:keep
    @:tdfield
    public dynamic function listenAndServeTLS(_certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error return @:_0 __self__.value.listenAndServeTLS(_certFile, _keyFile);
    @:keep
    @:tdfield
    public dynamic function setKeepAlivesEnabled(_v:Bool):Void @:_0 __self__.value.setKeepAlivesEnabled(_v);
    @:keep
    @:tdfield
    public dynamic function serveTLS(_l:stdgo._internal.net.Net_listener.Listener, _certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error return @:_0 __self__.value.serveTLS(_l, _certFile, _keyFile);
    @:keep
    @:tdfield
    public dynamic function serve(_l:stdgo._internal.net.Net_listener.Listener):stdgo.Error return @:_0 __self__.value.serve(_l);
    @:keep
    @:tdfield
    public dynamic function listenAndServe():stdgo.Error return @:_0 __self__.value.listenAndServe();
    @:keep
    @:tdfield
    public dynamic function registerOnShutdown(_f:() -> Void):Void @:_0 __self__.value.registerOnShutdown(_f);
    @:keep
    @:tdfield
    public dynamic function shutdown(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Error return @:_0 __self__.value.shutdown(_ctx);
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_serverpointer.ServerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
