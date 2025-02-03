package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2dialCall_static_extension) abstract T_http2dialCall(stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall) from stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall to stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall {
    public function new() this = new stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
