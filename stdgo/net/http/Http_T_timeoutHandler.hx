package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_timeoutHandler_static_extension) abstract T_timeoutHandler(stdgo._internal.net.http.Http_T_timeoutHandler.T_timeoutHandler) from stdgo._internal.net.http.Http_T_timeoutHandler.T_timeoutHandler to stdgo._internal.net.http.Http_T_timeoutHandler.T_timeoutHandler {
    public function new() this = new stdgo._internal.net.http.Http_T_timeoutHandler.T_timeoutHandler();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
