package stdgo._internal.net.http;
class T_http2serverInternalState_asInterface {
    @:keep
    public dynamic function _startGracefulShutdown():Void __self__.value._startGracefulShutdown();
    @:keep
    public dynamic function _unregisterConn(_sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):Void __self__.value._unregisterConn(_sc);
    @:keep
    public dynamic function _registerConn(_sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):Void __self__.value._registerConn(_sc);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
