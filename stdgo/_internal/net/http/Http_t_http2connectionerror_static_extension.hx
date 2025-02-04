package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2ConnectionError_asInterface) class T_http2ConnectionError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError = _e;
        return stdgo._internal.net.http.Http__fmt._fmt.sprintf(("connection error: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((_e : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode))))?.__copy__();
    }
}
