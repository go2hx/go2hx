package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2serverConn_static_extension) abstract T_http2serverConn(stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn) from stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn to stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn {
    public function new() this = new stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
