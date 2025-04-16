package stdgo._internal.net.http;
@:interface typedef T_http2clientConnPoolIdleCloser = stdgo.StructType & {
    public dynamic function getClientConn(_0:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _1:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; };
    public dynamic function markDead(_0:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void;
};
