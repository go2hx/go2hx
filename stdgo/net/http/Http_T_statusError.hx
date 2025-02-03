package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_statusError_static_extension) abstract T_statusError(stdgo._internal.net.http.Http_T_statusError.T_statusError) from stdgo._internal.net.http.Http_T_statusError.T_statusError to stdgo._internal.net.http.Http_T_statusError.T_statusError {
    public function new() this = new stdgo._internal.net.http.Http_T_statusError.T_statusError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
