package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_T_lruSessionCacheEntry_static_extension.T_lruSessionCacheEntry_static_extension) class T_lruSessionCacheEntry {
    public var _sessionKey : stdgo.GoString = "";
    public var _state : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>);
    public function new(?_sessionKey:stdgo.GoString, ?_state:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>) {
        if (_sessionKey != null) this._sessionKey = _sessionKey;
        if (_state != null) this._state = _state;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_lruSessionCacheEntry(_sessionKey, _state);
    }
}
