package stdgo._internal.net.http;
@:keep class T_http2ClientConnPool_static_extension {
    static public function markDead(t:stdgo._internal.net.http.Http_T_http2ClientConnPool.T_http2ClientConnPool, _0:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void t.markDead(_0);
    static public function getClientConn(t:stdgo._internal.net.http.Http_T_http2ClientConnPool.T_http2ClientConnPool, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } return t.getClientConn(_req, _addr);
}
