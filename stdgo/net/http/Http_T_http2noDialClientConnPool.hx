package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2noDialClientConnPool_static_extension) abstract T_http2noDialClientConnPool(stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool) from stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool to stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool {
    public function new() this = new stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
