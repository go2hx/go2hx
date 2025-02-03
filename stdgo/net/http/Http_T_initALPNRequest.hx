package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_initALPNRequest_static_extension) abstract T_initALPNRequest(stdgo._internal.net.http.Http_T_initALPNRequest.T_initALPNRequest) from stdgo._internal.net.http.Http_T_initALPNRequest.T_initALPNRequest to stdgo._internal.net.http.Http_T_initALPNRequest.T_initALPNRequest {
    public function new() this = new stdgo._internal.net.http.Http_T_initALPNRequest.T_initALPNRequest();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
