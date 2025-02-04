package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2connerror_static_extension.T_http2connError_static_extension) class T_http2connError {
    public var code : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode = ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode);
    public var reason : stdgo.GoString = "";
    public function new(?code:stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode, ?reason:stdgo.GoString) {
        if (code != null) this.code = code;
        if (reason != null) this.reason = reason;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2connError(code, reason);
    }
}
