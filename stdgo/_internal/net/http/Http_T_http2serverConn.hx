package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension) class T_http2serverConn {
    public var _srv : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server>);
    public var _hs : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
    public var _conn : stdgo._internal.net.Net_Conn.Conn = (null : stdgo._internal.net.Net_Conn.Conn);
    public var _bw : stdgo.Ref<stdgo._internal.net.http.Http_T_http2bufferedWriter.T_http2bufferedWriter> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2bufferedWriter.T_http2bufferedWriter>);
    public var _handler : stdgo._internal.net.http.Http_Handler.Handler = (null : stdgo._internal.net.http.Http_Handler.Handler);
    public var _baseCtx : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public var _framer : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
    public var _doneServing : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public var _readFrameCh : stdgo.Chan<stdgo._internal.net.http.Http_T_http2readFrameResult.T_http2readFrameResult> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2readFrameResult.T_http2readFrameResult>);
    public var _wantWriteFrameCh : stdgo.Chan<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest>);
    public var _wroteFrameCh : stdgo.Chan<stdgo._internal.net.http.Http_T_http2frameWriteResult.T_http2frameWriteResult> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2frameWriteResult.T_http2frameWriteResult>);
    public var _bodyReadCh : stdgo.Chan<stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg>);
    public var _serveMsgCh : stdgo.Chan<stdgo.AnyInterface> = (null : stdgo.Chan<stdgo.AnyInterface>);
    public var _flow : stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow = ({} : stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow);
    public var _inflow : stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow = ({} : stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow);
    public var _tlsState : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
    public var _remoteAddrStr : stdgo.GoString = "";
    public var _writeSched : stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler = (null : stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler);
    public var _serveG : stdgo._internal.net.http.Http_T_http2goroutineLock.T_http2goroutineLock = ((0 : stdgo.GoUInt64) : stdgo._internal.net.http.Http_T_http2goroutineLock.T_http2goroutineLock);
    public var _pushEnabled : Bool = false;
    public var _sawClientPreface : Bool = false;
    public var _sawFirstSettings : Bool = false;
    public var _needToSendSettingsAck : Bool = false;
    public var _unackedSettings : stdgo.GoInt = 0;
    public var _queuedControlFrames : stdgo.GoInt = 0;
    public var _clientMaxStreams : stdgo.GoUInt32 = 0;
    public var _advMaxStreams : stdgo.GoUInt32 = 0;
    public var _curClientStreams : stdgo.GoUInt32 = 0;
    public var _curPushedStreams : stdgo.GoUInt32 = 0;
    public var _curHandlers : stdgo.GoUInt32 = 0;
    public var _maxClientStreamID : stdgo.GoUInt32 = 0;
    public var _maxPushPromiseID : stdgo.GoUInt32 = 0;
    public var _streams : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>> = (null : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>>);
    public var _unstartedHandlers : stdgo.Slice<stdgo._internal.net.http.Http_T_http2unstartedHandler.T_http2unstartedHandler> = (null : stdgo.Slice<stdgo._internal.net.http.Http_T_http2unstartedHandler.T_http2unstartedHandler>);
    public var _initialStreamSendWindowSize : stdgo.GoInt32 = 0;
    public var _maxFrameSize : stdgo.GoInt32 = 0;
    public var _peerMaxHeaderListSize : stdgo.GoUInt32 = 0;
    public var _canonHeader : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var _canonHeaderKeysSize : stdgo.GoInt = 0;
    public var _writingFrame : Bool = false;
    public var _writingFrameAsync : Bool = false;
    public var _needsFrameFlush : Bool = false;
    public var _inGoAway : Bool = false;
    public var _inFrameScheduleLoop : Bool = false;
    public var _needToSendGoAway : Bool = false;
    public var _goAwayCode : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode = ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode);
    public var _shutdownTimer : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
    public var _idleTimer : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
    public var _headerWriteBuf : stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
    public var _hpackEncoder : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder> = (null : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder>);
    public var _shutdownOnce : stdgo._internal.sync.Sync_Once.Once = ({} : stdgo._internal.sync.Sync_Once.Once);
    public function new(?_srv:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server>, ?_hs:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, ?_conn:stdgo._internal.net.Net_Conn.Conn, ?_bw:stdgo.Ref<stdgo._internal.net.http.Http_T_http2bufferedWriter.T_http2bufferedWriter>, ?_handler:stdgo._internal.net.http.Http_Handler.Handler, ?_baseCtx:stdgo._internal.context.Context_Context.Context, ?_framer:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, ?_doneServing:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_readFrameCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2readFrameResult.T_http2readFrameResult>, ?_wantWriteFrameCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest>, ?_wroteFrameCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2frameWriteResult.T_http2frameWriteResult>, ?_bodyReadCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg>, ?_serveMsgCh:stdgo.Chan<stdgo.AnyInterface>, ?_flow:stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow, ?_inflow:stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow, ?_tlsState:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>, ?_remoteAddrStr:stdgo.GoString, ?_writeSched:stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler, ?_serveG:stdgo._internal.net.http.Http_T_http2goroutineLock.T_http2goroutineLock, ?_pushEnabled:Bool, ?_sawClientPreface:Bool, ?_sawFirstSettings:Bool, ?_needToSendSettingsAck:Bool, ?_unackedSettings:stdgo.GoInt, ?_queuedControlFrames:stdgo.GoInt, ?_clientMaxStreams:stdgo.GoUInt32, ?_advMaxStreams:stdgo.GoUInt32, ?_curClientStreams:stdgo.GoUInt32, ?_curPushedStreams:stdgo.GoUInt32, ?_curHandlers:stdgo.GoUInt32, ?_maxClientStreamID:stdgo.GoUInt32, ?_maxPushPromiseID:stdgo.GoUInt32, ?_streams:stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>>, ?_unstartedHandlers:stdgo.Slice<stdgo._internal.net.http.Http_T_http2unstartedHandler.T_http2unstartedHandler>, ?_initialStreamSendWindowSize:stdgo.GoInt32, ?_maxFrameSize:stdgo.GoInt32, ?_peerMaxHeaderListSize:stdgo.GoUInt32, ?_canonHeader:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_canonHeaderKeysSize:stdgo.GoInt, ?_writingFrame:Bool, ?_writingFrameAsync:Bool, ?_needsFrameFlush:Bool, ?_inGoAway:Bool, ?_inFrameScheduleLoop:Bool, ?_needToSendGoAway:Bool, ?_goAwayCode:stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode, ?_shutdownTimer:stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>, ?_idleTimer:stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>, ?_headerWriteBuf:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_hpackEncoder:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder>, ?_shutdownOnce:stdgo._internal.sync.Sync_Once.Once) {
        if (_srv != null) this._srv = _srv;
        if (_hs != null) this._hs = _hs;
        if (_conn != null) this._conn = _conn;
        if (_bw != null) this._bw = _bw;
        if (_handler != null) this._handler = _handler;
        if (_baseCtx != null) this._baseCtx = _baseCtx;
        if (_framer != null) this._framer = _framer;
        if (_doneServing != null) this._doneServing = _doneServing;
        if (_readFrameCh != null) this._readFrameCh = _readFrameCh;
        if (_wantWriteFrameCh != null) this._wantWriteFrameCh = _wantWriteFrameCh;
        if (_wroteFrameCh != null) this._wroteFrameCh = _wroteFrameCh;
        if (_bodyReadCh != null) this._bodyReadCh = _bodyReadCh;
        if (_serveMsgCh != null) this._serveMsgCh = _serveMsgCh;
        if (_flow != null) this._flow = _flow;
        if (_inflow != null) this._inflow = _inflow;
        if (_tlsState != null) this._tlsState = _tlsState;
        if (_remoteAddrStr != null) this._remoteAddrStr = _remoteAddrStr;
        if (_writeSched != null) this._writeSched = _writeSched;
        if (_serveG != null) this._serveG = _serveG;
        if (_pushEnabled != null) this._pushEnabled = _pushEnabled;
        if (_sawClientPreface != null) this._sawClientPreface = _sawClientPreface;
        if (_sawFirstSettings != null) this._sawFirstSettings = _sawFirstSettings;
        if (_needToSendSettingsAck != null) this._needToSendSettingsAck = _needToSendSettingsAck;
        if (_unackedSettings != null) this._unackedSettings = _unackedSettings;
        if (_queuedControlFrames != null) this._queuedControlFrames = _queuedControlFrames;
        if (_clientMaxStreams != null) this._clientMaxStreams = _clientMaxStreams;
        if (_advMaxStreams != null) this._advMaxStreams = _advMaxStreams;
        if (_curClientStreams != null) this._curClientStreams = _curClientStreams;
        if (_curPushedStreams != null) this._curPushedStreams = _curPushedStreams;
        if (_curHandlers != null) this._curHandlers = _curHandlers;
        if (_maxClientStreamID != null) this._maxClientStreamID = _maxClientStreamID;
        if (_maxPushPromiseID != null) this._maxPushPromiseID = _maxPushPromiseID;
        if (_streams != null) this._streams = _streams;
        if (_unstartedHandlers != null) this._unstartedHandlers = _unstartedHandlers;
        if (_initialStreamSendWindowSize != null) this._initialStreamSendWindowSize = _initialStreamSendWindowSize;
        if (_maxFrameSize != null) this._maxFrameSize = _maxFrameSize;
        if (_peerMaxHeaderListSize != null) this._peerMaxHeaderListSize = _peerMaxHeaderListSize;
        if (_canonHeader != null) this._canonHeader = _canonHeader;
        if (_canonHeaderKeysSize != null) this._canonHeaderKeysSize = _canonHeaderKeysSize;
        if (_writingFrame != null) this._writingFrame = _writingFrame;
        if (_writingFrameAsync != null) this._writingFrameAsync = _writingFrameAsync;
        if (_needsFrameFlush != null) this._needsFrameFlush = _needsFrameFlush;
        if (_inGoAway != null) this._inGoAway = _inGoAway;
        if (_inFrameScheduleLoop != null) this._inFrameScheduleLoop = _inFrameScheduleLoop;
        if (_needToSendGoAway != null) this._needToSendGoAway = _needToSendGoAway;
        if (_goAwayCode != null) this._goAwayCode = _goAwayCode;
        if (_shutdownTimer != null) this._shutdownTimer = _shutdownTimer;
        if (_idleTimer != null) this._idleTimer = _idleTimer;
        if (_headerWriteBuf != null) this._headerWriteBuf = _headerWriteBuf;
        if (_hpackEncoder != null) this._hpackEncoder = _hpackEncoder;
        if (_shutdownOnce != null) this._shutdownOnce = _shutdownOnce;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2serverConn(
_srv,
_hs,
_conn,
_bw,
_handler,
_baseCtx,
_framer,
_doneServing,
_readFrameCh,
_wantWriteFrameCh,
_wroteFrameCh,
_bodyReadCh,
_serveMsgCh,
_flow,
_inflow,
_tlsState,
_remoteAddrStr,
_writeSched,
_serveG,
_pushEnabled,
_sawClientPreface,
_sawFirstSettings,
_needToSendSettingsAck,
_unackedSettings,
_queuedControlFrames,
_clientMaxStreams,
_advMaxStreams,
_curClientStreams,
_curPushedStreams,
_curHandlers,
_maxClientStreamID,
_maxPushPromiseID,
_streams,
_unstartedHandlers,
_initialStreamSendWindowSize,
_maxFrameSize,
_peerMaxHeaderListSize,
_canonHeader,
_canonHeaderKeysSize,
_writingFrame,
_writingFrameAsync,
_needsFrameFlush,
_inGoAway,
_inFrameScheduleLoop,
_needToSendGoAway,
_goAwayCode,
_shutdownTimer,
_idleTimer,
_headerWriteBuf,
_hpackEncoder,
_shutdownOnce);
    }
}
