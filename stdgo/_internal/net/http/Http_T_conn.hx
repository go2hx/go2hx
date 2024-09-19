package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_conn_static_extension.T_conn_static_extension) class T_conn {
    public var _server : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
    public var _cancelCtx : stdgo._internal.context.Context_CancelFunc.CancelFunc = (null : stdgo._internal.context.Context_CancelFunc.CancelFunc);
    public var _rwc : stdgo._internal.net.Net_Conn.Conn = (null : stdgo._internal.net.Net_Conn.Conn);
    public var _remoteAddr : stdgo.GoString = "";
    public var _tlsState : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
    public var _werr : stdgo.Error = (null : stdgo.Error);
    public var _r : stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>);
    public var _bufr : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
    public var _bufw : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
    public var _lastMethod : stdgo.GoString = "";
    public var _curReq : stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.net.http.Http_T_response.T_response> = ({} : stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.net.http.Http_T_response.T_response>);
    public var _curState : stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64 = ({} : stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64);
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _hijackedv : Bool = false;
    public function new(?_server:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, ?_cancelCtx:stdgo._internal.context.Context_CancelFunc.CancelFunc, ?_rwc:stdgo._internal.net.Net_Conn.Conn, ?_remoteAddr:stdgo.GoString, ?_tlsState:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>, ?_werr:stdgo.Error, ?_r:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>, ?_bufr:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, ?_bufw:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>, ?_lastMethod:stdgo.GoString, ?_curReq:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.net.http.Http_T_response.T_response>, ?_curState:stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_hijackedv:Bool) {
        if (_server != null) this._server = _server;
        if (_cancelCtx != null) this._cancelCtx = _cancelCtx;
        if (_rwc != null) this._rwc = _rwc;
        if (_remoteAddr != null) this._remoteAddr = _remoteAddr;
        if (_tlsState != null) this._tlsState = _tlsState;
        if (_werr != null) this._werr = _werr;
        if (_r != null) this._r = _r;
        if (_bufr != null) this._bufr = _bufr;
        if (_bufw != null) this._bufw = _bufw;
        if (_lastMethod != null) this._lastMethod = _lastMethod;
        if (_curReq != null) this._curReq = _curReq;
        if (_curState != null) this._curState = _curState;
        if (_mu != null) this._mu = _mu;
        if (_hijackedv != null) this._hijackedv = _hijackedv;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_conn(
_server,
_cancelCtx,
_rwc,
_remoteAddr,
_tlsState,
_werr,
_r,
_bufr,
_bufw,
_lastMethod,
_curReq,
_curState,
_mu,
_hijackedv);
    }
}
