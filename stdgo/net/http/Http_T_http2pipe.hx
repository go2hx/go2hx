package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2pipe_static_extension) abstract T_http2pipe(stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe) from stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe to stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe {
    public function new() this = new stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
