package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension) class T_persistConn {
    public var _alt : stdgo._internal.net.http.Http_RoundTripper.RoundTripper = (null : stdgo._internal.net.http.Http_RoundTripper.RoundTripper);
    public var _t : stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>);
    public var _cacheKey : stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey = ({} : stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey);
    public var _conn : stdgo._internal.net.Net_Conn.Conn = (null : stdgo._internal.net.Net_Conn.Conn);
    public var _tlsState : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
    public var _br : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
    public var _bw : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
    public var _nwrite : stdgo.GoInt64 = 0;
    public var _reqch : stdgo.Chan<stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan>);
    public var _writech : stdgo.Chan<stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest>);
    public var _closech : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public var _isProxy : Bool = false;
    public var _sawEOF : Bool = false;
    public var _readLimit : stdgo.GoInt64 = 0;
    public var _writeErrCh : stdgo.Chan<stdgo.Error> = (null : stdgo.Chan<stdgo.Error>);
    public var _writeLoopDone : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public var _idleAt : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var _idleTimer : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _numExpectedResponses : stdgo.GoInt = 0;
    public var _closed : stdgo.Error = (null : stdgo.Error);
    public var _canceledErr : stdgo.Error = (null : stdgo.Error);
    public var _broken : Bool = false;
    public var _reused : Bool = false;
    public var _mutateHeaderFunc : stdgo._internal.net.http.Http_Header.Header -> Void = null;
    public function new(?_alt:stdgo._internal.net.http.Http_RoundTripper.RoundTripper, ?_t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, ?_cacheKey:stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, ?_conn:stdgo._internal.net.Net_Conn.Conn, ?_tlsState:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>, ?_br:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, ?_bw:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>, ?_nwrite:stdgo.GoInt64, ?_reqch:stdgo.Chan<stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan>, ?_writech:stdgo.Chan<stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest>, ?_closech:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_isProxy:Bool, ?_sawEOF:Bool, ?_readLimit:stdgo.GoInt64, ?_writeErrCh:stdgo.Chan<stdgo.Error>, ?_writeLoopDone:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_idleAt:stdgo._internal.time.Time_Time.Time, ?_idleTimer:stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_numExpectedResponses:stdgo.GoInt, ?_closed:stdgo.Error, ?_canceledErr:stdgo.Error, ?_broken:Bool, ?_reused:Bool, ?_mutateHeaderFunc:stdgo._internal.net.http.Http_Header.Header -> Void) {
        if (_alt != null) this._alt = _alt;
        if (_t != null) this._t = _t;
        if (_cacheKey != null) this._cacheKey = _cacheKey;
        if (_conn != null) this._conn = _conn;
        if (_tlsState != null) this._tlsState = _tlsState;
        if (_br != null) this._br = _br;
        if (_bw != null) this._bw = _bw;
        if (_nwrite != null) this._nwrite = _nwrite;
        if (_reqch != null) this._reqch = _reqch;
        if (_writech != null) this._writech = _writech;
        if (_closech != null) this._closech = _closech;
        if (_isProxy != null) this._isProxy = _isProxy;
        if (_sawEOF != null) this._sawEOF = _sawEOF;
        if (_readLimit != null) this._readLimit = _readLimit;
        if (_writeErrCh != null) this._writeErrCh = _writeErrCh;
        if (_writeLoopDone != null) this._writeLoopDone = _writeLoopDone;
        if (_idleAt != null) this._idleAt = _idleAt;
        if (_idleTimer != null) this._idleTimer = _idleTimer;
        if (_mu != null) this._mu = _mu;
        if (_numExpectedResponses != null) this._numExpectedResponses = _numExpectedResponses;
        if (_closed != null) this._closed = _closed;
        if (_canceledErr != null) this._canceledErr = _canceledErr;
        if (_broken != null) this._broken = _broken;
        if (_reused != null) this._reused = _reused;
        if (_mutateHeaderFunc != null) this._mutateHeaderFunc = _mutateHeaderFunc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_persistConn(
_alt,
_t,
_cacheKey,
_conn,
_tlsState,
_br,
_bw,
_nwrite,
_reqch,
_writech,
_closech,
_isProxy,
_sawEOF,
_readLimit,
_writeErrCh,
_writeLoopDone,
_idleAt,
_idleTimer,
_mu,
_numExpectedResponses,
_closed,
_canceledErr,
_broken,
_reused,
_mutateHeaderFunc);
    }
}
