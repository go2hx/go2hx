package stdgo._internal.net.http;
@:structInit class T_http2frameWriteResult {
    @:optional
    public var __38 : stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable = new stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _wr : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest = ({} : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?__38:stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable, ?_wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest, ?_err:stdgo.Error) {
        if (__38 != null) this.__38 = __38;
        if (_wr != null) this._wr = _wr;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2frameWriteResult(__38, _wr, _err);
    }
}
