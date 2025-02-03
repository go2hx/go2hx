package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_responseAndError_static_extension) abstract T_responseAndError(stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError) from stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError to stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError {
    public function new() this = new stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
