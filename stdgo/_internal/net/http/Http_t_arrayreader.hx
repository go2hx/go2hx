package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_arrayreader_static_extension.T_arrayReader_static_extension) class T_arrayReader {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_arrayReader();
    }
}
