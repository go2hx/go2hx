package stdgo._internal.net.http;
class Transport_asInterface {
    @:keep
    @:tdfield
    public dynamic function cancelRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void @:_0 __self__.value.cancelRequest(_req);
    @:keep
    @:tdfield
    public dynamic function closeIdleConnections():Void @:_0 __self__.value.closeIdleConnections();
    @:keep
    @:tdfield
    public dynamic function registerProtocol(_scheme:stdgo.GoString, _rt:stdgo._internal.net.http.Http_RoundTripper.RoundTripper):Void @:_0 __self__.value.registerProtocol(_scheme, _rt);
    @:keep
    @:tdfield
    public dynamic function clone():stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> return @:_0 __self__.value.clone();
    @:keep
    @:tdfield
    public dynamic function roundTrip(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value.roundTrip(_req);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_TransportPointer.TransportPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
