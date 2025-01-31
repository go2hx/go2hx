package stdgo._internal.crypto.tls;
import stdgo._internal.internal.cpu.Cpu;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.rc4.Rc4;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.internal.boring.Boring;
import _internal.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305;
import stdgo._internal.container.list.List;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.x509.X509;
import stdgo._internal.runtime.Runtime;
import _internal.golang_dot_org.x.crypto.hkdf.Hkdf;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.time.Time;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
import _internal.golang_dot_org.x.crypto.cryptobyte.Cryptobyte;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13_static_extension.T_clientHandshakeStateTLS13_static_extension) class T_clientHandshakeStateTLS13 {
    public var _c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
    public var _ctx : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public var _serverHello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>);
    public var _hello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>);
    public var _ecdheKey : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>);
    public var _session : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>);
    public var _earlySecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _binderKey : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _certReq : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13>);
    public var _usingPSK : Bool = false;
    public var _sentDummyCCS : Bool = false;
    public var _suite : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>);
    public var _transcript : stdgo._internal.hash.Hash_Hash.Hash = (null : stdgo._internal.hash.Hash_Hash.Hash);
    public var _masterSecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _trafficSecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, ?_ctx:stdgo._internal.context.Context_Context.Context, ?_serverHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>, ?_hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, ?_ecdheKey:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>, ?_session:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>, ?_earlySecret:stdgo.Slice<stdgo.GoUInt8>, ?_binderKey:stdgo.Slice<stdgo.GoUInt8>, ?_certReq:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13>, ?_usingPSK:Bool, ?_sentDummyCCS:Bool, ?_suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>, ?_transcript:stdgo._internal.hash.Hash_Hash.Hash, ?_masterSecret:stdgo.Slice<stdgo.GoUInt8>, ?_trafficSecret:stdgo.Slice<stdgo.GoUInt8>) {
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
