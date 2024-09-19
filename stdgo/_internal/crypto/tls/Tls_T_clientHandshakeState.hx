package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_T_clientHandshakeState_static_extension.T_clientHandshakeState_static_extension) class T_clientHandshakeState {
    public var _c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
    public var _ctx : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public var _serverHello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>);
    public var _hello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>);
    public var _suite : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>);
    public var _finishedHash : stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash = ({} : stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash);
    public var _masterSecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _session : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>);
    public var _ticket : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, ?_ctx:stdgo._internal.context.Context_Context.Context, ?_serverHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>, ?_hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, ?_suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>, ?_finishedHash:stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash, ?_masterSecret:stdgo.Slice<stdgo.GoUInt8>, ?_session:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>, ?_ticket:stdgo.Slice<stdgo.GoUInt8>) {
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