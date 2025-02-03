package stdgo.net.http;
class T_http2erringRoundTripper_static_extension {
    static public function roundTrip(_rt:T_http2erringRoundTripper, _0:Request):stdgo.Tuple<Response, stdgo.Error> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2erringRoundTripper_static_extension.T_http2erringRoundTripper_static_extension.roundTrip(_rt, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function roundTripErr(_rt:T_http2erringRoundTripper):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2erringRoundTripper_static_extension.T_http2erringRoundTripper_static_extension.roundTripErr(_rt);
    }
}
