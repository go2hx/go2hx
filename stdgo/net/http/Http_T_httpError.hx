package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_httpError_static_extension) abstract T_httpError(stdgo._internal.net.http.Http_T_httpError.T_httpError) from stdgo._internal.net.http.Http_T_httpError.T_httpError to stdgo._internal.net.http.Http_T_httpError.T_httpError {
    public function new() this = new stdgo._internal.net.http.Http_T_httpError.T_httpError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
