package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2ConnectionError_asInterface) class T_http2ConnectionError_static_extension {
    @:keep
    static public function error( _e:stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("connection error: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((_e : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))))?.__copy__();
    }
}