package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_servemux_static_extension.ServeMux_static_extension) class ServeMux {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ServeMux();
    }
}
