package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2RSTStreamFrame_static_extension) abstract T_http2RSTStreamFrame(stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame) from stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame to stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame {
    public var errCode(get, set) : T_http2ErrCode;
    function get_errCode():T_http2ErrCode return this.errCode;
    function set_errCode(v:T_http2ErrCode):T_http2ErrCode {
        this.errCode = v;
        return v;
    }
    public function new(?errCode:T_http2ErrCode) this = new stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame(errCode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
