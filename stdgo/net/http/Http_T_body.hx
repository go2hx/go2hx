package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_body_static_extension) abstract T_body(stdgo._internal.net.http.Http_T_body.T_body) from stdgo._internal.net.http.Http_T_body.T_body to stdgo._internal.net.http.Http_T_body.T_body {
    public function new() this = new stdgo._internal.net.http.Http_T_body.T_body();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
