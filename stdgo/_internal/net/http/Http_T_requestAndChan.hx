package stdgo._internal.net.http;
@:structInit class T_requestAndChan {
    @:optional
    public var __94 : stdgo._internal.net.http.Http_T_incomparable.T_incomparable = new stdgo._internal.net.http.Http_T_incomparable.T_incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
    public var _cancelKey : stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey = ({} : stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey);
    public var _ch : stdgo.Chan<stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError>);
    public var _addedGzip : Bool = false;
    public var _continueCh : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public var _callerGone : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public function new(?__94:stdgo._internal.net.http.Http_T_incomparable.T_incomparable, ?_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, ?_cancelKey:stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey, ?_ch:stdgo.Chan<stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError>, ?_addedGzip:Bool, ?_continueCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_callerGone:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>) {
        if (__94 != null) this.__94 = __94;
        if (_req != null) this._req = _req;
        if (_cancelKey != null) this._cancelKey = _cancelKey;
        if (_ch != null) this._ch = _ch;
        if (_addedGzip != null) this._addedGzip = _addedGzip;
        if (_continueCh != null) this._continueCh = _continueCh;
        if (_callerGone != null) this._callerGone = _callerGone;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_requestAndChan(__94, _req, _cancelKey, _ch, _addedGzip, _continueCh, _callerGone);
    }
}
