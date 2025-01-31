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
class T_rsaKeyAgreement_asInterface {
    @:keep
    @:tdfield
    public dynamic function _generateClientKeyExchange(_config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>; var _2 : stdgo.Error; } return @:_0 __self__.value._generateClientKeyExchange(_config, _clientHello, _cert);
    @:keep
    @:tdfield
    public dynamic function _processServerKeyExchange(_config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, _serverHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _skx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg>):stdgo.Error return @:_0 __self__.value._processServerKeyExchange(_config, _clientHello, _serverHello, _cert, _skx);
    @:keep
    @:tdfield
    public dynamic function _processClientKeyExchange(_config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>, _ckx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>, _version:stdgo.GoUInt16):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._processClientKeyExchange(_config, _cert, _ckx, _version);
    @:keep
    @:tdfield
    public dynamic function _generateServerKeyExchange(_config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, _hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg>; var _1 : stdgo.Error; } return @:_0 __self__.value._generateServerKeyExchange(_config, _cert, _clientHello, _hello);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_T_rsaKeyAgreementPointer.T_rsaKeyAgreementPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
