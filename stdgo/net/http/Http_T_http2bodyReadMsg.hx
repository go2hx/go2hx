package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2bodyReadMsg_static_extension) abstract T_http2bodyReadMsg(stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg) from stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg to stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg {
    public function new() this = new stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
