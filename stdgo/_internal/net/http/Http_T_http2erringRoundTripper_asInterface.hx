package stdgo._internal.net.http;
class T_http2erringRoundTripper_asInterface {
    @:keep
    public dynamic function roundTrip(_0:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return __self__.value.roundTrip(_0);
    @:keep
    public dynamic function roundTripErr():stdgo.Error return __self__.value.roundTripErr();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2erringRoundTripper.T_http2erringRoundTripper>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}