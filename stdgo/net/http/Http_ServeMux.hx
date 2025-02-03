package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.ServeMux_static_extension) abstract ServeMux(stdgo._internal.net.http.Http_ServeMux.ServeMux) from stdgo._internal.net.http.Http_ServeMux.ServeMux to stdgo._internal.net.http.Http_ServeMux.ServeMux {
    public function new() this = new stdgo._internal.net.http.Http_ServeMux.ServeMux();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
