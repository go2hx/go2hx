package stdgo.net.http;
class RoundTripper_static_extension {
    static public function roundTrip(t:stdgo._internal.net.http.Http_RoundTripper.RoundTripper, _0:Request):stdgo.Tuple<Response, stdgo.Error> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_RoundTripper_static_extension.RoundTripper_static_extension.roundTrip(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
