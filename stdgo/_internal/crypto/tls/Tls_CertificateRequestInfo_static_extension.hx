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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.CertificateRequestInfo_asInterface) class CertificateRequestInfo_static_extension {
    @:keep
    @:tdfield
    static public function supportsCertificate( _cri:stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo>, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>):stdgo.Error {
        @:recv var _cri:stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo> = _cri;
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__selectSignatureScheme._selectSignatureScheme((@:checkr _cri ?? throw "null pointer dereference").version, _c, (@:checkr _cri ?? throw "null pointer dereference").signatureSchemes), __65:stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        if (((@:checkr _cri ?? throw "null pointer dereference").acceptableCAs.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        for (_j => _cert in (@:checkr _c ?? throw "null pointer dereference").certificate) {
            var _x509Cert = (@:checkr _c ?? throw "null pointer dereference").leaf;
            if (((_j != (0 : stdgo.GoInt)) || (_x509Cert == null || (_x509Cert : Dynamic).__nil__) : Bool)) {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    {
                        var __tmp__ = stdgo._internal.crypto.x509.X509_parseCertificate.parseCertificate(_cert);
                        _x509Cert = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("failed to parse certificate #%d in the chain: %w" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_err));
                    };
                };
            };
            for (__66 => _ca in (@:checkr _cri ?? throw "null pointer dereference").acceptableCAs) {
                if (stdgo._internal.bytes.Bytes_equal.equal((@:checkr _x509Cert ?? throw "null pointer dereference").rawIssuer, _ca)) {
                    return (null : stdgo.Error);
                };
            };
        };
        return stdgo._internal.errors.Errors_new_.new_(("chain is not signed by an acceptable CA" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function context( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo>):stdgo._internal.context.Context_Context.Context {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._ctx;
    }
}
