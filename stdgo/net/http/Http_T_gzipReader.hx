package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_gzipReader_static_extension) abstract T_gzipReader(stdgo._internal.net.http.Http_T_gzipReader.T_gzipReader) from stdgo._internal.net.http.Http_T_gzipReader.T_gzipReader to stdgo._internal.net.http.Http_T_gzipReader.T_gzipReader {
    public function new() this = new stdgo._internal.net.http.Http_T_gzipReader.T_gzipReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
