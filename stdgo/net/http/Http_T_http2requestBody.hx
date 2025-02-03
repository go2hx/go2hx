package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2requestBody_static_extension) abstract T_http2requestBody(stdgo._internal.net.http.Http_T_http2requestBody.T_http2requestBody) from stdgo._internal.net.http.Http_T_http2requestBody.T_http2requestBody to stdgo._internal.net.http.Http_T_http2requestBody.T_http2requestBody {
    public function new() this = new stdgo._internal.net.http.Http_T_http2requestBody.T_http2requestBody();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
