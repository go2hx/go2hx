package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_gzipreader_static_extension.T_gzipReader_static_extension) class T_gzipReader {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gzipReader();
    }
}
