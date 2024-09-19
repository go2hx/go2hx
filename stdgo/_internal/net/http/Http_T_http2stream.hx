package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2stream_static_extension.T_http2stream_static_extension) class T_http2stream {
    public var _sc : stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>);
    public var _id : stdgo.GoUInt32 = 0;
    public var _body : stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>);
    public var _cw : stdgo._internal.net.http.Http_T_http2closeWaiter.T_http2closeWaiter = (null : stdgo._internal.net.http.Http_T_http2closeWaiter.T_http2closeWaiter);
    public var _ctx : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public var _cancelCtx : () -> Void = null;
    public var _bodyBytes : stdgo.GoInt64 = 0;
    public var _declBodyBytes : stdgo.GoInt64 = 0;
    public var _flow : stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow = ({} : stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow);
    public var _inflow : stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow = ({} : stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow);
    public var _state : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState = ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState);
    public var _resetQueued : Bool = false;
    public var _gotTrailerHeader : Bool = false;
    public var _wroteHeaders : Bool = false;
    public var _readDeadline : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
    public var _writeDeadline : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
    public var _closeErr : stdgo.Error = (null : stdgo.Error);
    public var _trailer : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public var _reqTrailer : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public function new(?_sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, ?_id:stdgo.GoUInt32, ?_body:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>, ?_cw:stdgo._internal.net.http.Http_T_http2closeWaiter.T_http2closeWaiter, ?_ctx:stdgo._internal.context.Context_Context.Context, ?_cancelCtx:() -> Void, ?_bodyBytes:stdgo.GoInt64, ?_declBodyBytes:stdgo.GoInt64, ?_flow:stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow, ?_inflow:stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow, ?_state:stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState, ?_resetQueued:Bool, ?_gotTrailerHeader:Bool, ?_wroteHeaders:Bool, ?_readDeadline:stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>, ?_writeDeadline:stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>, ?_closeErr:stdgo.Error, ?_trailer:stdgo._internal.net.http.Http_Header.Header, ?_reqTrailer:stdgo._internal.net.http.Http_Header.Header) {
        if (_sc != null) this._sc = _sc;
        if (_id != null) this._id = _id;
        if (_body != null) this._body = _body;
        if (_cw != null) this._cw = _cw;
        if (_ctx != null) this._ctx = _ctx;
        if (_cancelCtx != null) this._cancelCtx = _cancelCtx;
        if (_bodyBytes != null) this._bodyBytes = _bodyBytes;
        if (_declBodyBytes != null) this._declBodyBytes = _declBodyBytes;
        if (_flow != null) this._flow = _flow;
        if (_inflow != null) this._inflow = _inflow;
        if (_state != null) this._state = _state;
        if (_resetQueued != null) this._resetQueued = _resetQueued;
        if (_gotTrailerHeader != null) this._gotTrailerHeader = _gotTrailerHeader;
        if (_wroteHeaders != null) this._wroteHeaders = _wroteHeaders;
        if (_readDeadline != null) this._readDeadline = _readDeadline;
        if (_writeDeadline != null) this._writeDeadline = _writeDeadline;
        if (_closeErr != null) this._closeErr = _closeErr;
        if (_trailer != null) this._trailer = _trailer;
        if (_reqTrailer != null) this._reqTrailer = _reqTrailer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2stream(
_sc,
_id,
_body,
_cw,
_ctx,
_cancelCtx,
_bodyBytes,
_declBodyBytes,
_flow,
_inflow,
_state,
_resetQueued,
_gotTrailerHeader,
_wroteHeaders,
_readDeadline,
_writeDeadline,
_closeErr,
_trailer,
_reqTrailer);
    }
}
