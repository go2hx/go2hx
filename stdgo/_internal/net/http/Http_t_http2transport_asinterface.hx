package stdgo._internal.net.http;
class T_http2Transport_asInterface {
    @:keep
    @:tdfield
    public dynamic function newClientConn(_c:stdgo._internal.net.Net_conn.Conn):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:_0 __self__.value.newClientConn(_c);
    @:keep
    @:tdfield
    public dynamic function closeIdleConnections():Void @:_0 __self__.value.closeIdleConnections();
    @:keep
    @:tdfield
    public dynamic function roundTripOpt(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _opt:stdgo._internal.net.http.Http_t_http2roundtripopt.T_http2RoundTripOpt):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value.roundTripOpt(_req, _opt);
    @:keep
    @:tdfield
    public dynamic function roundTrip(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value.roundTrip(_req);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2transportpointer.T_http2TransportPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
