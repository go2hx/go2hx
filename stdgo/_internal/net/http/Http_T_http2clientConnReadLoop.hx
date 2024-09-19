package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2clientConnReadLoop_static_extension.T_http2clientConnReadLoop_static_extension) class T_http2clientConnReadLoop {
    @:optional
    public var __48 : stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable = new stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _cc : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>);
    public function new(?__48:stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable, ?_cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>) {
        if (__48 != null) this.__48 = __48;
        if (_cc != null) this._cc = _cc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2clientConnReadLoop(__48, _cc);
    }
}
