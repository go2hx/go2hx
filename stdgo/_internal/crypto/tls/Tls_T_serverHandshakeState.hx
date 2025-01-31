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
@:structInit @:using(stdgo._internal.crypto.tls.Tls_T_serverHandshakeState_static_extension.T_serverHandshakeState_static_extension) class T_serverHandshakeState {
    public var _c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
    public var _ctx : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public var _clientHello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>);
    public var _hello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>);
    public var _suite : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>);
    public var _ecdheOk : Bool = false;
    public var _ecSignOk : Bool = false;
    public var _rsaDecryptOk : Bool = false;
    public var _rsaSignOk : Bool = false;
    public var _sessionState : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>);
    public var _finishedHash : stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash = ({} : stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash);
    public var _masterSecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _cert : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
    public function new(?_c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, ?_ctx:stdgo._internal.context.Context_Context.Context, ?_clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, ?_hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>, ?_suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>, ?_ecdheOk:Bool, ?_ecSignOk:Bool, ?_rsaDecryptOk:Bool, ?_rsaSignOk:Bool, ?_sessionState:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>, ?_finishedHash:stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash, ?_masterSecret:stdgo.Slice<stdgo.GoUInt8>, ?_cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>) {
        if (_c != null) this._c = _c;
        if (_ctx != null) this._ctx = _ctx;
        if (_clientHello != null) this._clientHello = _clientHello;
        if (_hello != null) this._hello = _hello;
        if (_suite != null) this._suite = _suite;
        if (_ecdheOk != null) this._ecdheOk = _ecdheOk;
        if (_ecSignOk != null) this._ecSignOk = _ecSignOk;
        if (_rsaDecryptOk != null) this._rsaDecryptOk = _rsaDecryptOk;
        if (_rsaSignOk != null) this._rsaSignOk = _rsaSignOk;
        if (_sessionState != null) this._sessionState = _sessionState;
        if (_finishedHash != null) this._finishedHash = _finishedHash;
        if (_masterSecret != null) this._masterSecret = _masterSecret;
        if (_cert != null) this._cert = _cert;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_serverHandshakeState(
_c,
_ctx,
_clientHello,
_hello,
_suite,
_ecdheOk,
_ecSignOk,
_rsaDecryptOk,
_rsaSignOk,
_sessionState,
_finishedHash,
_masterSecret,
_cert);
    }
}
