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
@:structInit @:using(stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13_static_extension.T_serverHandshakeStateTLS13_static_extension) class T_serverHandshakeStateTLS13 {
    public var _c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
    public var _ctx : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public var _clientHello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>);
    public var _hello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>);
    public var _sentDummyCCS : Bool = false;
    public var _usingPSK : Bool = false;
    public var _earlyData : Bool = false;
    public var _suite : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>);
    public var _cert : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
    public var _sigAlg : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme);
    public var _earlySecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _sharedKey : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _handshakeSecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _masterSecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _trafficSecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _transcript : stdgo._internal.hash.Hash_Hash.Hash = (null : stdgo._internal.hash.Hash_Hash.Hash);
    public var _clientFinished : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, ?_ctx:stdgo._internal.context.Context_Context.Context, ?_clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, ?_hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>, ?_sentDummyCCS:Bool, ?_usingPSK:Bool, ?_earlyData:Bool, ?_suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>, ?_cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>, ?_sigAlg:stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme, ?_earlySecret:stdgo.Slice<stdgo.GoUInt8>, ?_sharedKey:stdgo.Slice<stdgo.GoUInt8>, ?_handshakeSecret:stdgo.Slice<stdgo.GoUInt8>, ?_masterSecret:stdgo.Slice<stdgo.GoUInt8>, ?_trafficSecret:stdgo.Slice<stdgo.GoUInt8>, ?_transcript:stdgo._internal.hash.Hash_Hash.Hash, ?_clientFinished:stdgo.Slice<stdgo.GoUInt8>) {
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
