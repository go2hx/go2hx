package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_serverHandler_static_extension) abstract T_serverHandler(stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler) from stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler to stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler {
    public function new() this = new stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
