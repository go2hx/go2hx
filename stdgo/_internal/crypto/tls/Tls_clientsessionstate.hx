package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_clientsessionstate_static_extension.ClientSessionState_static_extension) class ClientSessionState {
    public var _ticket : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _session : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>);
    public function new(?_ticket:stdgo.Slice<stdgo.GoUInt8>, ?_session:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>) {
        if (_ticket != null) this._ticket = _ticket;
        if (_session != null) this._session = _session;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ClientSessionState(_ticket, _session);
    }
}
