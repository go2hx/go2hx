package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13_static_extension.T_clientHandshakeStateTLS13_static_extension) class T_clientHandshakeStateTLS13 {
    public var _c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>);
    public var _ctx : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public var _serverHello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>);
    public var _hello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>);
    public var _ecdheKey : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>);
    public var _session : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>);
    public var _earlySecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _binderKey : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _certReq : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13>);
    public var _usingPSK : Bool = false;
    public var _sentDummyCCS : Bool = false;
    public var _suite : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>);
    public var _transcript : stdgo._internal.hash.Hash_hash.Hash = (null : stdgo._internal.hash.Hash_hash.Hash);
    public var _masterSecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _trafficSecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, ?_ctx:stdgo._internal.context.Context_context.Context, ?_serverHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>, ?_hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, ?_ecdheKey:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>, ?_session:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>, ?_earlySecret:stdgo.Slice<stdgo.GoUInt8>, ?_binderKey:stdgo.Slice<stdgo.GoUInt8>, ?_certReq:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13>, ?_usingPSK:Bool, ?_sentDummyCCS:Bool, ?_suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>, ?_transcript:stdgo._internal.hash.Hash_hash.Hash, ?_masterSecret:stdgo.Slice<stdgo.GoUInt8>, ?_trafficSecret:stdgo.Slice<stdgo.GoUInt8>) {
        if (_c != null) this._c = _c;
        if (_ctx != null) this._ctx = _ctx;
        if (_serverHello != null) this._serverHello = _serverHello;
        if (_hello != null) this._hello = _hello;
        if (_ecdheKey != null) this._ecdheKey = _ecdheKey;
        if (_session != null) this._session = _session;
        if (_earlySecret != null) this._earlySecret = _earlySecret;
        if (_binderKey != null) this._binderKey = _binderKey;
        if (_certReq != null) this._certReq = _certReq;
        if (_usingPSK != null) this._usingPSK = _usingPSK;
        if (_sentDummyCCS != null) this._sentDummyCCS = _sentDummyCCS;
        if (_suite != null) this._suite = _suite;
        if (_transcript != null) this._transcript = _transcript;
        if (_masterSecret != null) this._masterSecret = _masterSecret;
        if (_trafficSecret != null) this._trafficSecret = _trafficSecret;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_clientHandshakeStateTLS13(
_c,
_ctx,
_serverHello,
_hello,
_ecdheKey,
_session,
_earlySecret,
_binderKey,
_certReq,
_usingPSK,
_sentDummyCCS,
_suite,
_transcript,
_masterSecret,
_trafficSecret);
    }
}
