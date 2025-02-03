package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2ClientConn_static_extension) abstract T_http2ClientConn(stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn) from stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn to stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn {
    public function new() this = new stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
