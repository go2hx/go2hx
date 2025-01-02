package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2clientStream_static_extension.T_http2clientStream_static_extension) class T_http2clientStream {
    public var _cc : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>);
    public var _ctx : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public var _reqCancel : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public var _trace : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace> = (null : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>);
    public var iD : stdgo.GoUInt32 = 0;
    public var _bufPipe : stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe = ({} : stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe);
    public var _requestedGzip : Bool = false;
    public var _isHead : Bool = false;
    public var _abortOnce : stdgo._internal.sync.Sync_Once.Once = ({} : stdgo._internal.sync.Sync_Once.Once);
    public var _abort : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public var _abortErr : stdgo.Error = (null : stdgo.Error);
    public var _peerClosed : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public var _donec : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public var _on100 : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public var _respHeaderRecv : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public var _res : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
    public var _flow : stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow = ({} : stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow);
    public var _inflow : stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow = ({} : stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow);
    public var _bytesRemain : stdgo.GoInt64 = 0;
    public var _readErr : stdgo.Error = (null : stdgo.Error);
    public var _reqBody : stdgo._internal.io.Io_ReadCloser.ReadCloser = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
    public var _reqBodyContentLength : stdgo.GoInt64 = 0;
    public var _reqBodyClosed : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public var _sentEndStream : Bool = false;
    public var _sentHeaders : Bool = false;
    public var _firstByte : Bool = false;
    public var _pastHeaders : Bool = false;
    public var _pastTrailers : Bool = false;
    public var _num1xx : stdgo.GoUInt8 = 0;
    public var _readClosed : Bool = false;
    public var _readAborted : Bool = false;
    public var _trailer : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public var _resTrailer : stdgo.Ref<stdgo._internal.net.http.Http_Header.Header> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Header.Header>);
    public function new(?_cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, ?_ctx:stdgo._internal.context.Context_Context.Context, ?_reqCancel:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>, ?iD:stdgo.GoUInt32, ?_bufPipe:stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe, ?_requestedGzip:Bool, ?_isHead:Bool, ?_abortOnce:stdgo._internal.sync.Sync_Once.Once, ?_abort:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_abortErr:stdgo.Error, ?_peerClosed:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_donec:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_on100:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_respHeaderRecv:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_res:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>, ?_flow:stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow, ?_inflow:stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow, ?_bytesRemain:stdgo.GoInt64, ?_readErr:stdgo.Error, ?_reqBody:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_reqBodyContentLength:stdgo.GoInt64, ?_reqBodyClosed:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_sentEndStream:Bool, ?_sentHeaders:Bool, ?_firstByte:Bool, ?_pastHeaders:Bool, ?_pastTrailers:Bool, ?_num1xx:stdgo.GoUInt8, ?_readClosed:Bool, ?_readAborted:Bool, ?_trailer:stdgo._internal.net.http.Http_Header.Header, ?_resTrailer:stdgo.Ref<stdgo._internal.net.http.Http_Header.Header>) {
        if (_cc != null) this._cc = _cc;
        if (_ctx != null) this._ctx = _ctx;
        if (_reqCancel != null) this._reqCancel = _reqCancel;
        if (_trace != null) this._trace = _trace;
        if (iD != null) this.iD = iD;
        if (_bufPipe != null) this._bufPipe = _bufPipe;
        if (_requestedGzip != null) this._requestedGzip = _requestedGzip;
        if (_isHead != null) this._isHead = _isHead;
        if (_abortOnce != null) this._abortOnce = _abortOnce;
        if (_abort != null) this._abort = _abort;
        if (_abortErr != null) this._abortErr = _abortErr;
        if (_peerClosed != null) this._peerClosed = _peerClosed;
        if (_donec != null) this._donec = _donec;
        if (_on100 != null) this._on100 = _on100;
        if (_respHeaderRecv != null) this._respHeaderRecv = _respHeaderRecv;
        if (_res != null) this._res = _res;
        if (_flow != null) this._flow = _flow;
        if (_inflow != null) this._inflow = _inflow;
        if (_bytesRemain != null) this._bytesRemain = _bytesRemain;
        if (_readErr != null) this._readErr = _readErr;
        if (_reqBody != null) this._reqBody = _reqBody;
        if (_reqBodyContentLength != null) this._reqBodyContentLength = _reqBodyContentLength;
        if (_reqBodyClosed != null) this._reqBodyClosed = _reqBodyClosed;
        if (_sentEndStream != null) this._sentEndStream = _sentEndStream;
        if (_sentHeaders != null) this._sentHeaders = _sentHeaders;
        if (_firstByte != null) this._firstByte = _firstByte;
        if (_pastHeaders != null) this._pastHeaders = _pastHeaders;
        if (_pastTrailers != null) this._pastTrailers = _pastTrailers;
        if (_num1xx != null) this._num1xx = _num1xx;
        if (_readClosed != null) this._readClosed = _readClosed;
        if (_readAborted != null) this._readAborted = _readAborted;
        if (_trailer != null) this._trailer = _trailer;
        if (_resTrailer != null) this._resTrailer = _resTrailer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2clientStream(
_cc,
_ctx,
_reqCancel,
_trace,
iD,
_bufPipe,
_requestedGzip,
_isHead,
_abortOnce,
_abort,
_abortErr,
_peerClosed,
_donec,
_on100,
_respHeaderRecv,
_res,
_flow,
_inflow,
_bytesRemain,
_readErr,
_reqBody,
_reqBodyContentLength,
_reqBodyClosed,
_sentEndStream,
_sentHeaders,
_firstByte,
_pastHeaders,
_pastTrailers,
_num1xx,
_readClosed,
_readAborted,
_trailer,
_resTrailer);
    }
}
