package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2addConnCall_static_extension.T_http2addConnCall_static_extension) class T_http2addConnCall {
    @:optional
    public var __18 : stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable = new stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _p : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>);
    public var _done : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?__18:stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable, ?_p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>, ?_done:stdgo.Chan<{ }>, ?_err:stdgo.Error) {
        if (__18 != null) this.__18 = __18;
        if (_p != null) this._p = _p;
        if (_done != null) this._done = _done;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2addConnCall(__18, _p, _done, _err);
    }
}
