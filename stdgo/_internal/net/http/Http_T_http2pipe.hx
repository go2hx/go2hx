package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2pipe_static_extension.T_http2pipe_static_extension) class T_http2pipe {
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _c : stdgo._internal.sync.Sync_Cond.Cond = ({} : stdgo._internal.sync.Sync_Cond.Cond);
    public var _b : stdgo._internal.net.http.Http_T_http2pipeBuffer.T_http2pipeBuffer = (null : stdgo._internal.net.http.Http_T_http2pipeBuffer.T_http2pipeBuffer);
    public var _unread : stdgo.GoInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _breakErr : stdgo.Error = (null : stdgo.Error);
    public var _donec : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public var _readFn : () -> Void = null;
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_c:stdgo._internal.sync.Sync_Cond.Cond, ?_b:stdgo._internal.net.http.Http_T_http2pipeBuffer.T_http2pipeBuffer, ?_unread:stdgo.GoInt, ?_err:stdgo.Error, ?_breakErr:stdgo.Error, ?_donec:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_readFn:() -> Void) {
        if (_mu != null) this._mu = _mu;
        if (_c != null) this._c = _c;
        if (_b != null) this._b = _b;
        if (_unread != null) this._unread = _unread;
        if (_err != null) this._err = _err;
        if (_breakErr != null) this._breakErr = _breakErr;
        if (_donec != null) this._donec = _donec;
        if (_readFn != null) this._readFn = _readFn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2pipe(_mu, _c, _b, _unread, _err, _breakErr, _donec, _readFn);
    }
}
