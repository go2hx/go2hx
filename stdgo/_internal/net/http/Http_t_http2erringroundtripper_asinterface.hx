package stdgo._internal.net.http;
class T_http2erringRoundTripper_asInterface {
    @:keep
    @:tdfield
    public dynamic function roundTrip(_0:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value.roundTrip(_0);
    @:keep
    @:tdfield
    public dynamic function roundTripErr():stdgo.Error return @:_0 __self__.value.roundTripErr();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2erringroundtripperpointer.T_http2erringRoundTripperPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
