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
@:structInit @:using(stdgo._internal.crypto.tls.Tls_Certificate_static_extension.Certificate_static_extension) class Certificate {
    public var certificate : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public var privateKey : stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey = (null : stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey);
    public var supportedSignatureAlgorithms : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
    public var oCSPStaple : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var signedCertificateTimestamps : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public var leaf : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
    public function new(?certificate:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, ?privateKey:stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey, ?supportedSignatureAlgorithms:stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>, ?oCSPStaple:stdgo.Slice<stdgo.GoUInt8>, ?signedCertificateTimestamps:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, ?leaf:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>) {
        if (certificate != null) this.certificate = certificate;
        if (privateKey != null) this.privateKey = privateKey;
        if (supportedSignatureAlgorithms != null) this.supportedSignatureAlgorithms = supportedSignatureAlgorithms;
        if (oCSPStaple != null) this.oCSPStaple = oCSPStaple;
        if (signedCertificateTimestamps != null) this.signedCertificateTimestamps = signedCertificateTimestamps;
        if (leaf != null) this.leaf = leaf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Certificate(certificate, privateKey, supportedSignatureAlgorithms, oCSPStaple, signedCertificateTimestamps, leaf);
    }
}
