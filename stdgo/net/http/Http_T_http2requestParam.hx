package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2requestParam_static_extension) abstract T_http2requestParam(stdgo._internal.net.http.Http_T_http2requestParam.T_http2requestParam) from stdgo._internal.net.http.Http_T_http2requestParam.T_http2requestParam to stdgo._internal.net.http.Http_T_http2requestParam.T_http2requestParam {
    public function new() this = new stdgo._internal.net.http.Http_T_http2requestParam.T_http2requestParam();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
