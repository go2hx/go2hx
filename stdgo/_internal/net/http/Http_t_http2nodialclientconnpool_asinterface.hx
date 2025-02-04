package stdgo._internal.net.http;
class T_http2noDialClientConnPool_asInterface {
    @:keep
    @:tdfield
    public dynamic function getClientConn(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:_0 __self__.value.getClientConn(_req, _addr);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _getStartDialLocked(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall> return @:_0 __self__.value._getStartDialLocked(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _getClientConn(_0:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _1:stdgo.GoString, _2:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:_0 __self__.value._getClientConn(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _closeIdleConnections():Void @:_0 __self__.value._closeIdleConnections();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _addConnLocked(_0:stdgo.GoString, _1:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void @:_0 __self__.value._addConnLocked(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _addConnIfNeeded(_0:stdgo.GoString, _1:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _2:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):{ var _0 : Bool; var _1 : stdgo.Error; } return @:_0 __self__.value._addConnIfNeeded(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function markDead(_0:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void @:_0 __self__.value.markDead(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2nodialclientconnpoolpointer.T_http2noDialClientConnPoolPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
