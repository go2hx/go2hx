package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2dataBuffer_static_extension) abstract T_http2dataBuffer(stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer) from stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer to stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer {
    public function new() this = new stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
