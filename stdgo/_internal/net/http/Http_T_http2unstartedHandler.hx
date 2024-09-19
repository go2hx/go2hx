package stdgo._internal.net.http;
@:structInit class T_http2unstartedHandler {
    public var _streamID : stdgo.GoUInt32 = 0;
    public var _rw : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>);
    public var _req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
    public var _handler : (stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) -> Void = null;
    public function new(?_streamID:stdgo.GoUInt32, ?_rw:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>, ?_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, ?_handler:(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) -> Void) {
        if (_streamID != null) this._streamID = _streamID;
        if (_rw != null) this._rw = _rw;
        if (_req != null) this._req = _req;
        if (_handler != null) this._handler = _handler;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2unstartedHandler(_streamID, _rw, _req, _handler);
    }
}
