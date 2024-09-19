package stdgo._internal.net.http;
@:structInit class T_writeRequest {
    public var _req : stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>);
    public var _ch : stdgo.Chan<stdgo.Error> = (null : stdgo.Chan<stdgo.Error>);
    public var _continueCh : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public function new(?_req:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>, ?_ch:stdgo.Chan<stdgo.Error>, ?_continueCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>) {
        if (_req != null) this._req = _req;
        if (_ch != null) this._ch = _ch;
        if (_continueCh != null) this._continueCh = _continueCh;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_writeRequest(_req, _ch, _continueCh);
    }
}
