package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2dialCall_static_extension.T_http2dialCall_static_extension) class T_http2dialCall {
    @:optional
    public var __16 : stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable = new stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _p : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>);
    public var _ctx : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public var _done : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _res : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?__16:stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable, ?_p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>, ?_ctx:stdgo._internal.context.Context_Context.Context, ?_done:stdgo.Chan<{ }>, ?_res:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, ?_err:stdgo.Error) {
        if (__16 != null) this.__16 = __16;
        if (_p != null) this._p = _p;
        if (_ctx != null) this._ctx = _ctx;
        if (_done != null) this._done = _done;
        if (_res != null) this._res = _res;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2dialCall(__16, _p, _ctx, _done, _res, _err);
    }
}
