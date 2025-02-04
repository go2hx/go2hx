package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2PriorityParam_asInterface) class T_http2PriorityParam_static_extension {
    @:keep
    @:tdfield
    static public function isZero( _p:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam):Bool {
        @:recv var _p:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam = _p?.__copy__();
        return stdgo.Go.toInterface(_p) == stdgo.Go.toInterface((new stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam() : stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam));
    }
}
