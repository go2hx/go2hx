package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2clientConnPool_static_extension) abstract T_http2clientConnPool(stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool) from stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool to stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool {
    public function new() this = new stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
