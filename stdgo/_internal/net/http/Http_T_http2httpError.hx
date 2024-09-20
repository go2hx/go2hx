package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2httpError_static_extension.T_http2httpError_static_extension) class T_http2httpError {
    @:optional
    public var __16 : stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable = new stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _msg : stdgo.GoString = "";
    public var _timeout : Bool = false;
    public function new(?__16:stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable, ?_msg:stdgo.GoString, ?_timeout:Bool) {
        if (__16 != null) this.__16 = __16;
        if (_msg != null) this._msg = _msg;
        if (_timeout != null) this._timeout = _timeout;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2httpError(__16, _msg, _timeout);
    }
}
