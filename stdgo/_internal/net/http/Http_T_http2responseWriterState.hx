package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2responseWriterState_static_extension.T_http2responseWriterState_static_extension) class T_http2responseWriterState {
    public var _stream : stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>);
    public var _req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
    public var _conn : stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>);
    public var _bw : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
    public var _handlerHeader : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public var _snapHeader : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public var _trailers : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _status : stdgo.GoInt = 0;
    public var _wroteHeader : Bool = false;
    public var _sentHeader : Bool = false;
    public var _handlerDone : Bool = false;
    public var _dirty : Bool = false;
    public var _sentContentLen : stdgo.GoInt64 = 0;
    public var _wroteBytes : stdgo.GoInt64 = 0;
    public var _closeNotifierMu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _closeNotifierCh : stdgo.Chan<Bool> = (null : stdgo.Chan<Bool>);
    public function new(?_stream:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, ?_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, ?_conn:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, ?_bw:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>, ?_handlerHeader:stdgo._internal.net.http.Http_Header.Header, ?_snapHeader:stdgo._internal.net.http.Http_Header.Header, ?_trailers:stdgo.Slice<stdgo.GoString>, ?_status:stdgo.GoInt, ?_wroteHeader:Bool, ?_sentHeader:Bool, ?_handlerDone:Bool, ?_dirty:Bool, ?_sentContentLen:stdgo.GoInt64, ?_wroteBytes:stdgo.GoInt64, ?_closeNotifierMu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_closeNotifierCh:stdgo.Chan<Bool>) {
        if (_stream != null) this._stream = _stream;
        if (_req != null) this._req = _req;
        if (_conn != null) this._conn = _conn;
        if (_bw != null) this._bw = _bw;
        if (_handlerHeader != null) this._handlerHeader = _handlerHeader;
        if (_snapHeader != null) this._snapHeader = _snapHeader;
        if (_trailers != null) this._trailers = _trailers;
        if (_status != null) this._status = _status;
        if (_wroteHeader != null) this._wroteHeader = _wroteHeader;
        if (_sentHeader != null) this._sentHeader = _sentHeader;
        if (_handlerDone != null) this._handlerDone = _handlerDone;
        if (_dirty != null) this._dirty = _dirty;
        if (_sentContentLen != null) this._sentContentLen = _sentContentLen;
        if (_wroteBytes != null) this._wroteBytes = _wroteBytes;
        if (_closeNotifierMu != null) this._closeNotifierMu = _closeNotifierMu;
        if (_closeNotifierCh != null) this._closeNotifierCh = _closeNotifierCh;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2responseWriterState(
_stream,
_req,
_conn,
_bw,
_handlerHeader,
_snapHeader,
_trailers,
_status,
_wroteHeader,
_sentHeader,
_handlerDone,
_dirty,
_sentContentLen,
_wroteBytes,
_closeNotifierMu,
_closeNotifierCh);
    }
}
