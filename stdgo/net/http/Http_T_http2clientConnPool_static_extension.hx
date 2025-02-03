package stdgo.net.http;
class T_http2clientConnPool_static_extension {
    static public function markDead(_p:T_http2clientConnPool, _cc:T_http2ClientConn):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>);
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>);
        stdgo._internal.net.http.Http_T_http2clientConnPool_static_extension.T_http2clientConnPool_static_extension.markDead(_p, _cc);
    }
    static public function getClientConn(_p:T_http2clientConnPool, _req:Request, _addr:String):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        final _addr = (_addr : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2clientConnPool_static_extension.T_http2clientConnPool_static_extension.getClientConn(_p, _req, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
