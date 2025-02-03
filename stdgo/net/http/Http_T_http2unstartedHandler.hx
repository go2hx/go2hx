package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2unstartedHandler_static_extension) abstract T_http2unstartedHandler(stdgo._internal.net.http.Http_T_http2unstartedHandler.T_http2unstartedHandler) from stdgo._internal.net.http.Http_T_http2unstartedHandler.T_http2unstartedHandler to stdgo._internal.net.http.Http_T_http2unstartedHandler.T_http2unstartedHandler {
    public function new() this = new stdgo._internal.net.http.Http_T_http2unstartedHandler.T_http2unstartedHandler();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
