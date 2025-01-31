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
@:keep class T_keyAgreement_static_extension {
    @:interfacetypeffun
    static public function _generateClientKeyExchange(t:stdgo._internal.crypto.tls.Tls_T_keyAgreement.T_keyAgreement, _0:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _1:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, _2:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>; var _2 : stdgo.Error; } return t._generateClientKeyExchange(_0, _1, _2);
    @:interfacetypeffun
    static public function _processServerKeyExchange(t:stdgo._internal.crypto.tls.Tls_T_keyAgreement.T_keyAgreement, _0:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _1:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, _2:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>, _3:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _4:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg>):stdgo.Error return t._processServerKeyExchange(_0, _1, _2, _3, _4);
    @:interfacetypeffun
    static public function _processClientKeyExchange(t:stdgo._internal.crypto.tls.Tls_T_keyAgreement.T_keyAgreement, _0:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _1:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>, _2:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>, _3:stdgo.GoUInt16):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t._processClientKeyExchange(_0, _1, _2, _3);
    @:interfacetypeffun
    static public function _generateServerKeyExchange(t:stdgo._internal.crypto.tls.Tls_T_keyAgreement.T_keyAgreement, _0:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _1:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>, _2:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, _3:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg>; var _1 : stdgo.Error; } return t._generateServerKeyExchange(_0, _1, _2, _3);
}
