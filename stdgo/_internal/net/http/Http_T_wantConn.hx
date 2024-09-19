package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_wantConn_static_extension.T_wantConn_static_extension) class T_wantConn {
    public var _cm : stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod = ({} : stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod);
    public var _key : stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey = ({} : stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey);
    public var _ctx : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public var _ready : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public var _beforeDial : () -> Void = null;
    public var _afterDial : () -> Void = null;
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _pc : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_cm:stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod, ?_key:stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, ?_ctx:stdgo._internal.context.Context_Context.Context, ?_ready:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_beforeDial:() -> Void, ?_afterDial:() -> Void, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, ?_err:stdgo.Error) {
        if (_cm != null) this._cm = _cm;
        if (_key != null) this._key = _key;
        if (_ctx != null) this._ctx = _ctx;
        if (_ready != null) this._ready = _ready;
        if (_beforeDial != null) this._beforeDial = _beforeDial;
        if (_afterDial != null) this._afterDial = _afterDial;
        if (_mu != null) this._mu = _mu;
        if (_pc != null) this._pc = _pc;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_wantConn(_cm, _key, _ctx, _ready, _beforeDial, _afterDial, _mu, _pc, _err);
    }
}
