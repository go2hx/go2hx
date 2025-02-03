package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2responseWriter_static_extension) abstract T_http2responseWriter(stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter) from stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter to stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter {
    public function new() this = new stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
