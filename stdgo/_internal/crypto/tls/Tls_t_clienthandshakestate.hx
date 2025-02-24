package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_clienthandshakestate_static_extension.T_clientHandshakeState_static_extension) class T_clientHandshakeState {
    public var _c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>);
    public var _ctx : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public var _serverHello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>);
    public var _hello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>);
    public var _suite : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuite.T_cipherSuite> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuite.T_cipherSuite>);
    public var _finishedHash : stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash = ({} : stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash);
    public var _masterSecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _session : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>);
    public var _ticket : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, ?_ctx:stdgo._internal.context.Context_context.Context, ?_serverHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>, ?_hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, ?_suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuite.T_cipherSuite>, ?_finishedHash:stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash, ?_masterSecret:stdgo.Slice<stdgo.GoUInt8>, ?_session:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>, ?_ticket:stdgo.Slice<stdgo.GoUInt8>) {
        if (_c != null) this._c = _c;
        if (_ctx != null) this._ctx = _ctx;
        if (_serverHello != null) this._serverHello = _serverHello;
        if (_hello != null) this._hello = _hello;
        if (_suite != null) this._suite = _suite;
        if (_finishedHash != null) this._finishedHash = _finishedHash;
        if (_masterSecret != null) this._masterSecret = _masterSecret;
        if (_session != null) this._session = _session;
        if (_ticket != null) this._ticket = _ticket;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_clientHandshakeState(_c, _ctx, _serverHello, _hello, _suite, _finishedHash, _masterSecret, _session, _ticket);
    }
}
