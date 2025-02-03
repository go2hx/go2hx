package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_lruSessionCacheEntry_static_extension) abstract T_lruSessionCacheEntry(stdgo._internal.crypto.tls.Tls_T_lruSessionCacheEntry.T_lruSessionCacheEntry) from stdgo._internal.crypto.tls.Tls_T_lruSessionCacheEntry.T_lruSessionCacheEntry to stdgo._internal.crypto.tls.Tls_T_lruSessionCacheEntry.T_lruSessionCacheEntry {
    public var _sessionKey(get, set) : String;
    function get__sessionKey():String return this._sessionKey;
    function set__sessionKey(v:String):String {
        this._sessionKey = (v : stdgo.GoString);
        return v;
    }
    public var _state(get, set) : ClientSessionState;
    function get__state():ClientSessionState return this._state;
    function set__state(v:ClientSessionState):ClientSessionState {
        this._state = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>);
        return v;
    }
    public function new(?_sessionKey:String, ?_state:ClientSessionState) this = new stdgo._internal.crypto.tls.Tls_T_lruSessionCacheEntry.T_lruSessionCacheEntry((_sessionKey : stdgo.GoString), (_state : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
