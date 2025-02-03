package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2bufferedWriter_static_extension) abstract T_http2bufferedWriter(stdgo._internal.net.http.Http_T_http2bufferedWriter.T_http2bufferedWriter) from stdgo._internal.net.http.Http_T_http2bufferedWriter.T_http2bufferedWriter to stdgo._internal.net.http.Http_T_http2bufferedWriter.T_http2bufferedWriter {
    public function new() this = new stdgo._internal.net.http.Http_T_http2bufferedWriter.T_http2bufferedWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
