package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_fileHandler_static_extension) abstract T_fileHandler(stdgo._internal.net.http.Http_T_fileHandler.T_fileHandler) from stdgo._internal.net.http.Http_T_fileHandler.T_fileHandler to stdgo._internal.net.http.Http_T_fileHandler.T_fileHandler {
    public function new() this = new stdgo._internal.net.http.Http_T_fileHandler.T_fileHandler();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
