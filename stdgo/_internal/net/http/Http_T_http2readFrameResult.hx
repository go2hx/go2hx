package stdgo._internal.net.http;
@:structInit class T_http2readFrameResult {
    public var _f : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame = (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _readMore : () -> Void = null;
    public function new(?_f:stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame, ?_err:stdgo.Error, ?_readMore:() -> Void) {
        if (_f != null) this._f = _f;
        if (_err != null) this._err = _err;
        if (_readMore != null) this._readMore = _readMore;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2readFrameResult(_f, _err, _readMore);
    }
}
