package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13_static_extension.T_serverHandshakeStateTLS13_static_extension) class T_serverHandshakeStateTLS13 {
    public var _c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>);
    public var _ctx : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public var _clientHello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>);
    public var _hello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>);
    public var _sentDummyCCS : Bool = false;
    public var _usingPSK : Bool = false;
    public var _earlyData : Bool = false;
    public var _suite : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>);
    public var _cert : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>);
    public var _sigAlg : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
    public var _earlySecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _sharedKey : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _handshakeSecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _masterSecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _trafficSecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _transcript : stdgo._internal.hash.Hash_hash.Hash = (null : stdgo._internal.hash.Hash_hash.Hash);
    public var _clientFinished : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, ?_ctx:stdgo._internal.context.Context_context.Context, ?_clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, ?_hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>, ?_sentDummyCCS:Bool, ?_usingPSK:Bool, ?_earlyData:Bool, ?_suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>, ?_cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>, ?_sigAlg:stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme, ?_earlySecret:stdgo.Slice<stdgo.GoUInt8>, ?_sharedKey:stdgo.Slice<stdgo.GoUInt8>, ?_handshakeSecret:stdgo.Slice<stdgo.GoUInt8>, ?_masterSecret:stdgo.Slice<stdgo.GoUInt8>, ?_trafficSecret:stdgo.Slice<stdgo.GoUInt8>, ?_transcript:stdgo._internal.hash.Hash_hash.Hash, ?_clientFinished:stdgo.Slice<stdgo.GoUInt8>) {
        if (_c != null) this._c = _c;
        if (_ctx != null) this._ctx = _ctx;
        if (_clientHello != null) this._clientHello = _clientHello;
        if (_hello != null) this._hello = _hello;
        if (_sentDummyCCS != null) this._sentDummyCCS = _sentDummyCCS;
        if (_usingPSK != null) this._usingPSK = _usingPSK;
        if (_earlyData != null) this._earlyData = _earlyData;
        if (_suite != null) this._suite = _suite;
        if (_cert != null) this._cert = _cert;
        if (_sigAlg != null) this._sigAlg = _sigAlg;
        if (_earlySecret != null) this._earlySecret = _earlySecret;
        if (_sharedKey != null) this._sharedKey = _sharedKey;
        if (_handshakeSecret != null) this._handshakeSecret = _handshakeSecret;
        if (_masterSecret != null) this._masterSecret = _masterSecret;
        if (_trafficSecret != null) this._trafficSecret = _trafficSecret;
        if (_transcript != null) this._transcript = _transcript;
        if (_clientFinished != null) this._clientFinished = _clientFinished;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_serverHandshakeStateTLS13(
_c,
_ctx,
_clientHello,
_hello,
_sentDummyCCS,
_usingPSK,
_earlyData,
_suite,
_cert,
_sigAlg,
_earlySecret,
_sharedKey,
_handshakeSecret,
_masterSecret,
_trafficSecret,
_transcript,
_clientFinished);
    }
}
