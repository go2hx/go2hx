package stdgo.net.http;
class T_http2ClientConn_static_extension {
    static public function ping(_cc:T_http2ClientConn, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>);
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension.ping(_cc, _ctx);
    }
    static public function roundTrip(_cc:T_http2ClientConn, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension.roundTrip(_cc, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_cc:T_http2ClientConn):stdgo.Error {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>);
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension.close(_cc);
    }
    static public function shutdown(_cc:T_http2ClientConn, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>);
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension.shutdown(_cc, _ctx);
    }
    static public function state(_cc:T_http2ClientConn):T_http2ClientConnState {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>);
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension.state(_cc);
    }
    static public function reserveNewRequest(_cc:T_http2ClientConn):Bool {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>);
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension.reserveNewRequest(_cc);
    }
    static public function canTakeNewRequest(_cc:T_http2ClientConn):Bool {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>);
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension.canTakeNewRequest(_cc);
    }
    static public function setDoNotReuse(_cc:T_http2ClientConn):Void {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>);
        stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension.setDoNotReuse(_cc);
    }
}
