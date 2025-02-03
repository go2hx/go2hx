package stdgo.net.http;
class T_http2ClientConnPool_static_extension {
    static public function markDead(t:stdgo._internal.net.http.Http_T_http2ClientConnPool.T_http2ClientConnPool, _0:T_http2ClientConn):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>);
        stdgo._internal.net.http.Http_T_http2ClientConnPool_static_extension.T_http2ClientConnPool_static_extension.markDead(t, _0);
    }
    static public function getClientConn(t:stdgo._internal.net.http.Http_T_http2ClientConnPool.T_http2ClientConnPool, _req:Request, _addr:String):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        final _addr = (_addr : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2ClientConnPool_static_extension.T_http2ClientConnPool_static_extension.getClientConn(t, _req, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
