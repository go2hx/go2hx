package stdgo._internal.net.http;
class T_http2ClientConn_asInterface {
    @:keep
    @:tdfield
    public dynamic function ping(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Error return @:_0 __self__.value.ping(_ctx);
    @:keep
    @:tdfield
    public dynamic function roundTrip(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value.roundTrip(_req);
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function shutdown(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Error return @:_0 __self__.value.shutdown(_ctx);
    @:keep
    @:tdfield
    public dynamic function state():stdgo._internal.net.http.Http_t_http2clientconnstate.T_http2ClientConnState return @:_0 __self__.value.state();
    @:keep
    @:tdfield
    public dynamic function reserveNewRequest():Bool return @:_0 __self__.value.reserveNewRequest();
    @:keep
    @:tdfield
    public dynamic function canTakeNewRequest():Bool return @:_0 __self__.value.canTakeNewRequest();
    @:keep
    @:tdfield
    public dynamic function setDoNotReuse():Void @:_0 __self__.value.setDoNotReuse();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2clientconnpointer.T_http2ClientConnPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
