package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2connError_static_extension) abstract T_http2connError(stdgo._internal.net.http.Http_T_http2connError.T_http2connError) from stdgo._internal.net.http.Http_T_http2connError.T_http2connError to stdgo._internal.net.http.Http_T_http2connError.T_http2connError {
    public var code(get, set) : T_http2ErrCode;
    function get_code():T_http2ErrCode return this.code;
    function set_code(v:T_http2ErrCode):T_http2ErrCode {
        this.code = v;
        return v;
    }
    public var reason(get, set) : String;
    function get_reason():String return this.reason;
    function set_reason(v:String):String {
        this.reason = (v : stdgo.GoString);
        return v;
    }
    public function new(?code:T_http2ErrCode, ?reason:String) this = new stdgo._internal.net.http.Http_T_http2connError.T_http2connError(code, (reason : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
