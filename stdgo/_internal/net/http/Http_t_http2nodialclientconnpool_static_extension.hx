package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2noDialClientConnPool_asInterface) class T_http2noDialClientConnPool_static_extension {
    @:keep
    @:tdfield
    static public function getClientConn( _p:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool = _p?.__copy__();
        return @:check2 _p._getClientConn(_req, _addr?.__copy__(), false);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _getStartDialLocked( __self__:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall> return @:_5 __self__._getStartDialLocked(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _getClientConn( __self__:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool, _0:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _1:stdgo.GoString, _2:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:_5 __self__._getClientConn(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _closeIdleConnections( __self__:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool):Void return @:_5 __self__._closeIdleConnections();
    @:embedded
    @:embeddededffieldsffun
    public static function _addConnLocked( __self__:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool, _0:stdgo.GoString, _1:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void return @:_5 __self__._addConnLocked(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _addConnIfNeeded( __self__:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool, _0:stdgo.GoString, _1:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _2:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):{ var _0 : Bool; var _1 : stdgo.Error; } return @:_5 __self__._addConnIfNeeded(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function markDead( __self__:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool, _0:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void return @:_5 __self__.markDead(_0);
}
