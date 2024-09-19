package stdgo._internal.net.http;
class T_http2noDialClientConnPool_asInterface {
    @:keep
    public dynamic function getClientConn(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } return __self__.value.getClientConn(_req, _addr);
    @:embedded
    public dynamic function _getStartDialLocked(_ctx:stdgo._internal.context.Context_Context.Context, _addr:stdgo.GoString):stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall> return __self__.value._getStartDialLocked(_ctx, _addr);
    @:embedded
    public dynamic function _getClientConn(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _addr:stdgo.GoString, _dialOnMiss:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } return __self__.value._getClientConn(_req, _addr, _dialOnMiss);
    @:embedded
    public dynamic function _closeIdleConnections():Void __self__.value._closeIdleConnections();
    @:embedded
    public dynamic function _addConnLocked(_key:stdgo.GoString, _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void __self__.value._addConnLocked(_key, _cc);
    @:embedded
    public dynamic function _addConnIfNeeded(_key:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):{ var _0 : Bool; var _1 : stdgo.Error; } return __self__.value._addConnIfNeeded(_key, _t, _c);
    @:embedded
    public dynamic function markDead(__0:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void __self__.value.markDead(__0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
