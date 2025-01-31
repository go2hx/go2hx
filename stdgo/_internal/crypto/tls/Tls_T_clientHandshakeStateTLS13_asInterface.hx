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
class T_clientHandshakeStateTLS13_asInterface {
    @:keep
    @:tdfield
    public dynamic function _sendClientFinished():stdgo.Error return @:_0 __self__.value._sendClientFinished();
    @:keep
    @:tdfield
    public dynamic function _sendClientCertificate():stdgo.Error return @:_0 __self__.value._sendClientCertificate();
    @:keep
    @:tdfield
    public dynamic function _readServerFinished():stdgo.Error return @:_0 __self__.value._readServerFinished();
    @:keep
    @:tdfield
    public dynamic function _readServerCertificate():stdgo.Error return @:_0 __self__.value._readServerCertificate();
    @:keep
    @:tdfield
    public dynamic function _readServerParameters():stdgo.Error return @:_0 __self__.value._readServerParameters();
    @:keep
    @:tdfield
    public dynamic function _establishHandshakeKeys():stdgo.Error return @:_0 __self__.value._establishHandshakeKeys();
    @:keep
    @:tdfield
    public dynamic function _processServerHello():stdgo.Error return @:_0 __self__.value._processServerHello();
    @:keep
    @:tdfield
    public dynamic function _processHelloRetryRequest():stdgo.Error return @:_0 __self__.value._processHelloRetryRequest();
    @:keep
    @:tdfield
    public dynamic function _sendDummyChangeCipherSpec():stdgo.Error return @:_0 __self__.value._sendDummyChangeCipherSpec();
    @:keep
    @:tdfield
    public dynamic function _checkServerHelloOrHRR():stdgo.Error return @:_0 __self__.value._checkServerHelloOrHRR();
    @:keep
    @:tdfield
    public dynamic function _handshake():stdgo.Error return @:_0 __self__.value._handshake();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13Pointer.T_clientHandshakeStateTLS13Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
