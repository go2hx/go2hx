package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension) class T_response {
    public var _conn : stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>);
    public var _req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
    public var _reqBody : stdgo._internal.io.Io_ReadCloser.ReadCloser = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
    public var _cancelCtx : stdgo._internal.context.Context_CancelFunc.CancelFunc = (null : stdgo._internal.context.Context_CancelFunc.CancelFunc);
    public var _wroteHeader : Bool = false;
    public var _wroteContinue : Bool = false;
    public var _wants10KeepAlive : Bool = false;
    public var _wantsClose : Bool = false;
    public var _canWriteContinue : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_);
    public var _writeContinueMu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _w : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
    public var _cw : stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter = ({} : stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter);
    public var _handlerHeader : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public var _calledHeader : Bool = false;
    public var _written : stdgo.GoInt64 = 0;
    public var _contentLength : stdgo.GoInt64 = 0;
    public var _status : stdgo.GoInt = 0;
    public var _closeAfterReply : Bool = false;
    public var _fullDuplex : Bool = false;
    public var _requestBodyLimitHit : Bool = false;
    public var _trailers : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _handlerDone : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_);
    public var _dateBuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(29, 29).__setNumber32__();
    public var _clenBuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(10, 10).__setNumber32__();
    public var _statusBuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(3, 3).__setNumber32__();
    public var _closeNotifyCh : stdgo.Chan<Bool> = (null : stdgo.Chan<Bool>);
    public var _didCloseNotify : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_);
    public function new(?_conn:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, ?_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, ?_reqBody:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_cancelCtx:stdgo._internal.context.Context_CancelFunc.CancelFunc, ?_wroteHeader:Bool, ?_wroteContinue:Bool, ?_wants10KeepAlive:Bool, ?_wantsClose:Bool, ?_canWriteContinue:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_, ?_writeContinueMu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_w:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>, ?_cw:stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter, ?_handlerHeader:stdgo._internal.net.http.Http_Header.Header, ?_calledHeader:Bool, ?_written:stdgo.GoInt64, ?_contentLength:stdgo.GoInt64, ?_status:stdgo.GoInt, ?_closeAfterReply:Bool, ?_fullDuplex:Bool, ?_requestBodyLimitHit:Bool, ?_trailers:stdgo.Slice<stdgo.GoString>, ?_handlerDone:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_, ?_dateBuf:stdgo.GoArray<stdgo.GoUInt8>, ?_clenBuf:stdgo.GoArray<stdgo.GoUInt8>, ?_statusBuf:stdgo.GoArray<stdgo.GoUInt8>, ?_closeNotifyCh:stdgo.Chan<Bool>, ?_didCloseNotify:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_) {
        if (_conn != null) this._conn = _conn;
        if (_req != null) this._req = _req;
        if (_reqBody != null) this._reqBody = _reqBody;
        if (_cancelCtx != null) this._cancelCtx = _cancelCtx;
        if (_wroteHeader != null) this._wroteHeader = _wroteHeader;
        if (_wroteContinue != null) this._wroteContinue = _wroteContinue;
        if (_wants10KeepAlive != null) this._wants10KeepAlive = _wants10KeepAlive;
        if (_wantsClose != null) this._wantsClose = _wantsClose;
        if (_canWriteContinue != null) this._canWriteContinue = _canWriteContinue;
        if (_writeContinueMu != null) this._writeContinueMu = _writeContinueMu;
        if (_w != null) this._w = _w;
        if (_cw != null) this._cw = _cw;
        if (_handlerHeader != null) this._handlerHeader = _handlerHeader;
        if (_calledHeader != null) this._calledHeader = _calledHeader;
        if (_written != null) this._written = _written;
        if (_contentLength != null) this._contentLength = _contentLength;
        if (_status != null) this._status = _status;
        if (_closeAfterReply != null) this._closeAfterReply = _closeAfterReply;
        if (_fullDuplex != null) this._fullDuplex = _fullDuplex;
        if (_requestBodyLimitHit != null) this._requestBodyLimitHit = _requestBodyLimitHit;
        if (_trailers != null) this._trailers = _trailers;
        if (_handlerDone != null) this._handlerDone = _handlerDone;
        if (_dateBuf != null) this._dateBuf = _dateBuf;
        if (_clenBuf != null) this._clenBuf = _clenBuf;
        if (_statusBuf != null) this._statusBuf = _statusBuf;
        if (_closeNotifyCh != null) this._closeNotifyCh = _closeNotifyCh;
        if (_didCloseNotify != null) this._didCloseNotify = _didCloseNotify;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_response(
_conn,
_req,
_reqBody,
_cancelCtx,
_wroteHeader,
_wroteContinue,
_wants10KeepAlive,
_wantsClose,
_canWriteContinue,
_writeContinueMu,
_w,
_cw,
_handlerHeader,
_calledHeader,
_written,
_contentLength,
_status,
_closeAfterReply,
_fullDuplex,
_requestBodyLimitHit,
_trailers,
_handlerDone,
_dateBuf,
_clenBuf,
_statusBuf,
_closeNotifyCh,
_didCloseNotify);
    }
}
