package stdgo._internal.net.http;
class T_http2clientConnPool_asInterface {
    @:keep
    @:tdfield
    public dynamic function markDead(_cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void @:_0 __self__.value.markDead(_cc);
    @:keep
    @:tdfield
    public dynamic function getClientConn(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:_0 __self__.value.getClientConn(_req, _addr);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2clientconnpoolpointer.T_http2clientConnPoolPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
