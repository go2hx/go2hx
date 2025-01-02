package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2erringRoundTripper_asInterface) class T_http2erringRoundTripper_static_extension {
    @:keep
    @:tdfield
    static public function roundTrip( _rt:stdgo._internal.net.http.Http_T_http2erringRoundTripper.T_http2erringRoundTripper, _0:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _rt:stdgo._internal.net.http.Http_T_http2erringRoundTripper.T_http2erringRoundTripper = _rt?.__copy__();
        return { _0 : null, _1 : _rt._err };
    }
    @:keep
    @:tdfield
    static public function roundTripErr( _rt:stdgo._internal.net.http.Http_T_http2erringRoundTripper.T_http2erringRoundTripper):stdgo.Error {
        @:recv var _rt:stdgo._internal.net.http.Http_T_http2erringRoundTripper.T_http2erringRoundTripper = _rt?.__copy__();
        return _rt._err;
    }
}
