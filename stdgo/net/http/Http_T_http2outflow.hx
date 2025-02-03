package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2outflow_static_extension) abstract T_http2outflow(stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow) from stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow to stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow {
    public function new() this = new stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
