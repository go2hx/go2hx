package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_writeRequest_static_extension) abstract T_writeRequest(stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest) from stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest to stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest {
    public function new() this = new stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
