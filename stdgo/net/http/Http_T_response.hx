package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_response_static_extension) abstract T_response(stdgo._internal.net.http.Http_T_response.T_response) from stdgo._internal.net.http.Http_T_response.T_response to stdgo._internal.net.http.Http_T_response.T_response {
    public function new() this = new stdgo._internal.net.http.Http_T_response.T_response();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
