package stdgo._internal.net.http;
class T_http2clientConnPool_asInterface {
    @:keep
    @:tdfield
    public dynamic function _closeIdleConnections():Void @:_0 __self__.value._closeIdleConnections();
    @:keep
    @:tdfield
    public dynamic function markDead(_cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void @:_0 __self__.value.markDead(_cc);
    @:keep
    @:tdfield
    public dynamic function _addConnLocked(_key:stdgo.GoString, _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void @:_0 __self__.value._addConnLocked(_key, _cc);
    @:keep
    @:tdfield
    public dynamic function _addConnIfNeeded(_key:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):{ var _0 : Bool; var _1 : stdgo.Error; } return @:_0 __self__.value._addConnIfNeeded(_key, _t, _c);
    @:keep
    @:tdfield
    public dynamic function _getStartDialLocked(_ctx:stdgo._internal.context.Context_Context.Context, _addr:stdgo.GoString):stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall> return @:_0 __self__.value._getStartDialLocked(_ctx, _addr);
    @:keep
    @:tdfield
    public dynamic function _getClientConn(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _addr:stdgo.GoString, _dialOnMiss:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:_0 __self__.value._getClientConn(_req, _addr, _dialOnMiss);
    @:keep
    @:tdfield
    public dynamic function getClientConn(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:_0 __self__.value.getClientConn(_req, _addr);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_http2clientConnPoolPointer.T_http2clientConnPoolPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
