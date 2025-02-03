package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2clientConnReadLoop_static_extension) abstract T_http2clientConnReadLoop(stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop) from stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop to stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop {
    public function new() this = new stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
