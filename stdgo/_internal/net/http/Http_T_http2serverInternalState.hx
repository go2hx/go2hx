package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2serverInternalState_static_extension.T_http2serverInternalState_static_extension) class T_http2serverInternalState {
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _activeConns : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_activeConns:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>) {
        if (_mu != null) this._mu = _mu;
        if (_activeConns != null) this._activeConns = _activeConns;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2serverInternalState(_mu, _activeConns);
    }
}
