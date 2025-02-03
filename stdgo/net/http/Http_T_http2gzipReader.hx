package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2gzipReader_static_extension) abstract T_http2gzipReader(stdgo._internal.net.http.Http_T_http2gzipReader.T_http2gzipReader) from stdgo._internal.net.http.Http_T_http2gzipReader.T_http2gzipReader to stdgo._internal.net.http.Http_T_http2gzipReader.T_http2gzipReader {
    public function new() this = new stdgo._internal.net.http.Http_T_http2gzipReader.T_http2gzipReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
