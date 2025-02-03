package stdgo.net.http;
class T_http2Transport_static_extension {
    static public function newClientConn(_t:T_http2Transport, _c:stdgo._internal.net.Net_Conn.Conn):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension.newClientConn(_t, _c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function closeIdleConnections(_t:T_http2Transport):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>);
        stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension.closeIdleConnections(_t);
    }
    static public function roundTripOpt(_t:T_http2Transport, _req:Request, _opt:T_http2RoundTripOpt):stdgo.Tuple<Response, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension.roundTripOpt(_t, _req, _opt);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function roundTrip(_t:T_http2Transport, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension.roundTrip(_t, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
