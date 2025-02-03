package stdgo.net.http;
class T_http2noDialClientConnPool_static_extension {
    static public function getClientConn(_p:T_http2noDialClientConnPool, _req:Request, _addr:String):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        final _addr = (_addr : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noDialClientConnPool_static_extension.T_http2noDialClientConnPool_static_extension.getClientConn(_p, _req, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _getStartDialLocked(__self__:stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool, _0:stdgo._internal.context.Context_Context.Context, _1:String):T_http2dialCall {
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.net.http.Http_T_http2noDialClientConnPool_static_extension.T_http2noDialClientConnPool_static_extension._getStartDialLocked(__self__, _0, _1);
    }
    public static function _getClientConn(__self__:stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool, _0:Request, _1:String, _2:Bool):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        final _1 = (_1 : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noDialClientConnPool_static_extension.T_http2noDialClientConnPool_static_extension._getClientConn(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _closeIdleConnections(__self__:stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool):Void {
        stdgo._internal.net.http.Http_T_http2noDialClientConnPool_static_extension.T_http2noDialClientConnPool_static_extension._closeIdleConnections(__self__);
    }
    public static function _addConnLocked(__self__:stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool, _0:String, _1:T_http2ClientConn):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>);
        stdgo._internal.net.http.Http_T_http2noDialClientConnPool_static_extension.T_http2noDialClientConnPool_static_extension._addConnLocked(__self__, _0, _1);
    }
    public static function _addConnIfNeeded(__self__:stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool, _0:String, _1:T_http2Transport, _2:stdgo._internal.crypto.tls.Tls_Conn.Conn):stdgo.Tuple<Bool, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noDialClientConnPool_static_extension.T_http2noDialClientConnPool_static_extension._addConnIfNeeded(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function markDead(__self__:stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool, _0:T_http2ClientConn):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>);
        stdgo._internal.net.http.Http_T_http2noDialClientConnPool_static_extension.T_http2noDialClientConnPool_static_extension.markDead(__self__, _0);
    }
}
