package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2resAndError_static_extension) abstract T_http2resAndError(stdgo._internal.net.http.Http_T_http2resAndError.T_http2resAndError) from stdgo._internal.net.http.Http_T_http2resAndError.T_http2resAndError to stdgo._internal.net.http.Http_T_http2resAndError.T_http2resAndError {
    public function new() this = new stdgo._internal.net.http.Http_T_http2resAndError.T_http2resAndError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
