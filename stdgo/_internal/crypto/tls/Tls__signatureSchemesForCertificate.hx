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
function _signatureSchemesForCertificate(_version:stdgo.GoUInt16, _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>):stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme> {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert(((@:checkr _cert ?? throw "null pointer dereference").privateKey : stdgo._internal.crypto.Crypto_Signer.Signer)) : stdgo._internal.crypto.Crypto_Signer.Signer), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.Crypto_Signer.Signer), _1 : false };
        }, _priv = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
        };
        var _sigAlgs:stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
        {
            final __type__ = _priv.public_();
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>))) {
                        var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__.__underlying__().value;
                        if (_version != ((772 : stdgo.GoUInt16))) {
                            _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>(4, 4, ...[(1027 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme), (1283 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme), (1539 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme), (515 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
                            break;
                        };
                        {
                            final __value__ = (@:checkr _pub ?? throw "null pointer dereference").curve;
                            if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p256.p256()))) {
                                _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>(1, 1, ...[(1027 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
                            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p384.p384()))) {
                                _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>(1, 1, ...[(1283 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
                            } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.crypto.elliptic.Elliptic_p521.p521()))) {
                                _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>(1, 1, ...[(1539 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
                            } else {
                                return (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>))) {
                        var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__.__underlying__().value;
                        var _size = (@:check2r _pub.size() : stdgo.GoInt);
                        _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>((0 : stdgo.GoInt).toBasic(), (stdgo._internal.crypto.tls.Tls__rsaSignatureSchemes._rsaSignatureSchemes.length)).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
                        for (__65 => _candidate in stdgo._internal.crypto.tls.Tls__rsaSignatureSchemes._rsaSignatureSchemes) {
                            if (((_size >= _candidate._minModulusBytes : Bool) && (_version <= _candidate._maxVersion : Bool) : Bool)) {
                                _sigAlgs = (_sigAlgs.__append__(_candidate._scheme));
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey))) {
                        var _pub:stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey = __type__ == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__ == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__.__underlying__().value;
                        _sigAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>(1, 1, ...[(2055 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
                    } else {
                        var _pub:stdgo._internal.crypto.Crypto_PublicKey.PublicKey = __type__?.__underlying__();
                        return (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
                    };
                    break;
                };
            };
        };
        if ((@:checkr _cert ?? throw "null pointer dereference").supportedSignatureAlgorithms != null) {
            var _filteredSigAlgs:stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
            for (__65 => _sigAlg in _sigAlgs) {
                if (stdgo._internal.crypto.tls.Tls__isSupportedSignatureAlgorithm._isSupportedSignatureAlgorithm(_sigAlg, (@:checkr _cert ?? throw "null pointer dereference").supportedSignatureAlgorithms)) {
                    _filteredSigAlgs = (_filteredSigAlgs.__append__(_sigAlg));
                };
            };
            return _filteredSigAlgs;
        };
        return _sigAlgs;
    }
