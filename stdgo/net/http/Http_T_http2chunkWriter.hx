package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2chunkWriter_static_extension) abstract T_http2chunkWriter(stdgo._internal.net.http.Http_T_http2chunkWriter.T_http2chunkWriter) from stdgo._internal.net.http.Http_T_http2chunkWriter.T_http2chunkWriter to stdgo._internal.net.http.Http_T_http2chunkWriter.T_http2chunkWriter {
    public function new() this = new stdgo._internal.net.http.Http_T_http2chunkWriter.T_http2chunkWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
