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
function _selectSignatureScheme(_vers:stdgo.GoUInt16, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>, _peerAlgs:stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>):{ var _0 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme; var _1 : stdgo.Error; } {
        var _supportedAlgs = stdgo._internal.crypto.tls.Tls__signatureSchemesForCertificate._signatureSchemesForCertificate(_vers, _c);
        if ((_supportedAlgs.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme), _1 : stdgo._internal.crypto.tls.Tls__unsupportedCertificateError._unsupportedCertificateError(_c) };
        };
        if (((_peerAlgs.length == (0 : stdgo.GoInt)) && (_vers == (771 : stdgo.GoUInt16)) : Bool)) {
            _peerAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>(2, 2, ...[(513 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme), (515 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
        };
        for (__65 => _preferredAlg in _peerAlgs) {
            if ((stdgo._internal.crypto.tls.Tls__needFIPS._needFIPS() && !stdgo._internal.crypto.tls.Tls__isSupportedSignatureAlgorithm._isSupportedSignatureAlgorithm(_preferredAlg, stdgo._internal.crypto.tls.Tls__fipsSupportedSignatureAlgorithms._fipsSupportedSignatureAlgorithms) : Bool)) {
                continue;
            };
            if (stdgo._internal.crypto.tls.Tls__isSupportedSignatureAlgorithm._isSupportedSignatureAlgorithm(_preferredAlg, _supportedAlgs)) {
                return { _0 : _preferredAlg, _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : (0 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme), _1 : stdgo._internal.errors.Errors_new_.new_(("tls: peer doesn\'t support any of the certificate\'s signature algorithms" : stdgo.GoString)) };
    }
