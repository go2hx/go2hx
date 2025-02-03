package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.ClientSessionState_static_extension) abstract ClientSessionState(stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState) from stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState to stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState {
    public var _ticket(get, set) : Array<std.UInt>;
    function get__ticket():Array<std.UInt> return [for (i in this._ticket) i];
    function set__ticket(v:Array<std.UInt>):Array<std.UInt> {
        this._ticket = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _session(get, set) : SessionState;
    function get__session():SessionState return this._session;
    function set__session(v:SessionState):SessionState {
        this._session = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>);
        return v;
    }
    public function new(?_ticket:Array<std.UInt>, ?_session:SessionState) this = new stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState(([for (i in _ticket) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_session : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
