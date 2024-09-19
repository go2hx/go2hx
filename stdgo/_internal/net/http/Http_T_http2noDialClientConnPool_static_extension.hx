package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2noDialClientConnPool_asInterface) class T_http2noDialClientConnPool_static_extension {
    @:keep
    static public function getClientConn( _p:stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool = _p?.__copy__();
        return _p._getClientConn(_req, _addr?.__copy__(), false);
    }
    @:embedded
    public static function _getStartDialLocked( __self__:stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool, _ctx:stdgo._internal.context.Context_Context.Context, _addr:stdgo.GoString):stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall> return __self__._getStartDialLocked(_ctx, _addr);
    @:embedded
    public static function _getClientConn( __self__:stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _addr:stdgo.GoString, _dialOnMiss:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } return __self__._getClientConn(_req, _addr, _dialOnMiss);
    @:embedded
    public static function _closeIdleConnections( __self__:stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool) __self__._closeIdleConnections();
    @:embedded
    public static function _addConnLocked( __self__:stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool, _key:stdgo.GoString, _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>) __self__._addConnLocked(_key, _cc);
    @:embedded
    public static function _addConnIfNeeded( __self__:stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool, _key:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):{ var _0 : Bool; var _1 : stdgo.Error; } return __self__._addConnIfNeeded(_key, _t, _c);
    @:embedded
    public static function markDead( __self__:stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool, __0:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>) __self__.markDead(__0);
}
