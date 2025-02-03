package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2errorReader_static_extension) abstract T_http2errorReader(stdgo._internal.net.http.Http_T_http2errorReader.T_http2errorReader) from stdgo._internal.net.http.Http_T_http2errorReader.T_http2errorReader to stdgo._internal.net.http.Http_T_http2errorReader.T_http2errorReader {
    public function new() this = new stdgo._internal.net.http.Http_T_http2errorReader.T_http2errorReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
