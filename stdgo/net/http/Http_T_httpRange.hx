package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_httpRange_static_extension) abstract T_httpRange(stdgo._internal.net.http.Http_T_httpRange.T_httpRange) from stdgo._internal.net.http.Http_T_httpRange.T_httpRange to stdgo._internal.net.http.Http_T_httpRange.T_httpRange {
    public function new() this = new stdgo._internal.net.http.Http_T_httpRange.T_httpRange();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
