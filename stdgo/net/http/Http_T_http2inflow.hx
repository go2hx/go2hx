package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2inflow_static_extension) abstract T_http2inflow(stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow) from stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow to stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow {
    public function new() this = new stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
