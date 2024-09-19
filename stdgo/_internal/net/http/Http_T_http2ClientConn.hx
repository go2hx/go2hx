package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension) class T_http2ClientConn {
    public var _t : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>);
    public var _tconn : stdgo._internal.net.Net_Conn.Conn = (null : stdgo._internal.net.Net_Conn.Conn);
    public var _tconnClosed : Bool = false;
    public var _tlsState : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
    public var _reused : stdgo.GoUInt32 = 0;
    public var _singleUse : Bool = false;
    public var _getConnCalled : Bool = false;
    public var _readerDone : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public var _readerErr : stdgo.Error = (null : stdgo.Error);
    public var _idleTimeout : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var _idleTimer : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _cond : stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond> = (null : stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond>);
    public var _flow : stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow = ({} : stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow);
    public var _inflow : stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow = ({} : stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow);
    public var _doNotReuse : Bool = false;
    public var _closing : Bool = false;
    public var _closed : Bool = false;
    public var _seenSettings : Bool = false;
    public var _wantSettingsAck : Bool = false;
    public var _goAway : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>);
    public var _goAwayDebug : stdgo.GoString = "";
    public var _streams : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>> = (null : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>>);
    public var _streamsReserved : stdgo.GoInt = 0;
    public var _nextStreamID : stdgo.GoUInt32 = 0;
    public var _pendingRequests : stdgo.GoInt = 0;
    public var _pings : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>> = (null : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>>);
    public var _br : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
    public var _lastActive : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var _lastIdle : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var _maxFrameSize : stdgo.GoUInt32 = 0;
    public var _maxConcurrentStreams : stdgo.GoUInt32 = 0;
    public var _peerMaxHeaderListSize : stdgo.GoUInt64 = 0;
    public var _peerMaxHeaderTableSize : stdgo.GoUInt32 = 0;
    public var _initialWindowSize : stdgo.GoUInt32 = 0;
    public var _reqHeaderMu : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public var _wmu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _bw : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
    public var _fr : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
    public var _werr : stdgo.Error = (null : stdgo.Error);
    public var _hbuf : stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
    public var _henc : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder> = (null : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder>);
    public function new(?_t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, ?_tconn:stdgo._internal.net.Net_Conn.Conn, ?_tconnClosed:Bool, ?_tlsState:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>, ?_reused:stdgo.GoUInt32, ?_singleUse:Bool, ?_getConnCalled:Bool, ?_readerDone:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_readerErr:stdgo.Error, ?_idleTimeout:stdgo._internal.time.Time_Duration.Duration, ?_idleTimer:stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_cond:stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond>, ?_flow:stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow, ?_inflow:stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow, ?_doNotReuse:Bool, ?_closing:Bool, ?_closed:Bool, ?_seenSettings:Bool, ?_wantSettingsAck:Bool, ?_goAway:stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>, ?_goAwayDebug:stdgo.GoString, ?_streams:stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>>, ?_streamsReserved:stdgo.GoInt, ?_nextStreamID:stdgo.GoUInt32, ?_pendingRequests:stdgo.GoInt, ?_pings:stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>>, ?_br:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, ?_lastActive:stdgo._internal.time.Time_Time.Time, ?_lastIdle:stdgo._internal.time.Time_Time.Time, ?_maxFrameSize:stdgo.GoUInt32, ?_maxConcurrentStreams:stdgo.GoUInt32, ?_peerMaxHeaderListSize:stdgo.GoUInt64, ?_peerMaxHeaderTableSize:stdgo.GoUInt32, ?_initialWindowSize:stdgo.GoUInt32, ?_reqHeaderMu:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_wmu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_bw:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>, ?_fr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, ?_werr:stdgo.Error, ?_hbuf:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_henc:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder>) {
        if (_t != null) this._t = _t;
        if (_tconn != null) this._tconn = _tconn;
        if (_tconnClosed != null) this._tconnClosed = _tconnClosed;
        if (_tlsState != null) this._tlsState = _tlsState;
        if (_reused != null) this._reused = _reused;
        if (_singleUse != null) this._singleUse = _singleUse;
        if (_getConnCalled != null) this._getConnCalled = _getConnCalled;
        if (_readerDone != null) this._readerDone = _readerDone;
        if (_readerErr != null) this._readerErr = _readerErr;
        if (_idleTimeout != null) this._idleTimeout = _idleTimeout;
        if (_idleTimer != null) this._idleTimer = _idleTimer;
        if (_mu != null) this._mu = _mu;
        if (_cond != null) this._cond = _cond;
        if (_flow != null) this._flow = _flow;
        if (_inflow != null) this._inflow = _inflow;
        if (_doNotReuse != null) this._doNotReuse = _doNotReuse;
        if (_closing != null) this._closing = _closing;
        if (_closed != null) this._closed = _closed;
        if (_seenSettings != null) this._seenSettings = _seenSettings;
        if (_wantSettingsAck != null) this._wantSettingsAck = _wantSettingsAck;
        if (_goAway != null) this._goAway = _goAway;
        if (_goAwayDebug != null) this._goAwayDebug = _goAwayDebug;
        if (_streams != null) this._streams = _streams;
        if (_streamsReserved != null) this._streamsReserved = _streamsReserved;
        if (_nextStreamID != null) this._nextStreamID = _nextStreamID;
        if (_pendingRequests != null) this._pendingRequests = _pendingRequests;
        if (_pings != null) this._pings = _pings;
        if (_br != null) this._br = _br;
        if (_lastActive != null) this._lastActive = _lastActive;
        if (_lastIdle != null) this._lastIdle = _lastIdle;
        if (_maxFrameSize != null) this._maxFrameSize = _maxFrameSize;
        if (_maxConcurrentStreams != null) this._maxConcurrentStreams = _maxConcurrentStreams;
        if (_peerMaxHeaderListSize != null) this._peerMaxHeaderListSize = _peerMaxHeaderListSize;
        if (_peerMaxHeaderTableSize != null) this._peerMaxHeaderTableSize = _peerMaxHeaderTableSize;
        if (_initialWindowSize != null) this._initialWindowSize = _initialWindowSize;
        if (_reqHeaderMu != null) this._reqHeaderMu = _reqHeaderMu;
        if (_wmu != null) this._wmu = _wmu;
        if (_bw != null) this._bw = _bw;
        if (_fr != null) this._fr = _fr;
        if (_werr != null) this._werr = _werr;
        if (_hbuf != null) this._hbuf = _hbuf;
        if (_henc != null) this._henc = _henc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2ClientConn(
_t,
_tconn,
_tconnClosed,
_tlsState,
_reused,
_singleUse,
_getConnCalled,
_readerDone,
_readerErr,
_idleTimeout,
_idleTimer,
_mu,
_cond,
_flow,
_inflow,
_doNotReuse,
_closing,
_closed,
_seenSettings,
_wantSettingsAck,
_goAway,
_goAwayDebug,
_streams,
_streamsReserved,
_nextStreamID,
_pendingRequests,
_pings,
_br,
_lastActive,
_lastIdle,
_maxFrameSize,
_maxConcurrentStreams,
_peerMaxHeaderListSize,
_peerMaxHeaderTableSize,
_initialWindowSize,
_reqHeaderMu,
_wmu,
_bw,
_fr,
_werr,
_hbuf,
_henc);
    }
}
