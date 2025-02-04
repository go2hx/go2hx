package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2connError_asInterface) class T_http2connError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.net.http.Http_t_http2connerror.T_http2connError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.http.Http_t_http2connerror.T_http2connError = _e?.__copy__();
        return stdgo._internal.net.http.Http__fmt._fmt.sprintf(("http2: connection error: %v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_e.code)), stdgo.Go.toInterface(_e.reason))?.__copy__();
    }
}
