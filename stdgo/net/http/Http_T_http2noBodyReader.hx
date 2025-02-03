package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2noBodyReader_static_extension) abstract T_http2noBodyReader(stdgo._internal.net.http.Http_T_http2noBodyReader.T_http2noBodyReader) from stdgo._internal.net.http.Http_T_http2noBodyReader.T_http2noBodyReader to stdgo._internal.net.http.Http_T_http2noBodyReader.T_http2noBodyReader {
    public function new() this = new stdgo._internal.net.http.Http_T_http2noBodyReader.T_http2noBodyReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
