package stdgo._internal.net.http;
@:keep class T_http2ClientConnPool_static_extension {
    @:interfacetypeffun
    static public function markDead(t:stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool, _0:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void t.markDead(_0);
    @:interfacetypeffun
    static public function getClientConn(t:stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return t.getClientConn(_req, _addr);
}
@:keep @:allow(stdgo._internal.net.http.Http.T_http2clientConnPool_asInterface) class T_http2clientConnPool_static_extension {
    @:keep
    @:tdfield
    static public function markDead( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool>, _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void throw "T_http2clientConnPool:net.http.markDead is not yet implemented";
    @:keep
    @:tdfield
    static public function getClientConn( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } throw "T_http2clientConnPool:net.http.getClientConn is not yet implemented";
}
