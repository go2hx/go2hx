package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2httpError_static_extension) abstract T_http2httpError(stdgo._internal.net.http.Http_T_http2httpError.T_http2httpError) from stdgo._internal.net.http.Http_T_http2httpError.T_http2httpError to stdgo._internal.net.http.Http_T_http2httpError.T_http2httpError {
    public function new() this = new stdgo._internal.net.http.Http_T_http2httpError.T_http2httpError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
