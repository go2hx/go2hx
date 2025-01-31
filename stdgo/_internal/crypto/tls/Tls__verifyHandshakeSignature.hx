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
function _verifyHandshakeSignature(_sigType:stdgo.GoUInt8, _pubkey:stdgo._internal.crypto.Crypto_PublicKey.PublicKey, _hashFunc:stdgo._internal.crypto.Crypto_Hash.Hash, _signed:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        {
            final __value__ = _sigType;
            if (__value__ == ((227 : stdgo.GoUInt8))) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_pubkey : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>), _1 : false };
                }, _pubKey = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("expected an ECDSA public key, got %T" : stdgo.GoString), stdgo.Go.toInterface(_pubkey));
                };
                if (!stdgo._internal.crypto.ecdsa.Ecdsa_verifyASN1.verifyASN1(_pubKey, _signed, _sig)) {
                    return stdgo._internal.errors.Errors_new_.new_(("ECDSA verification failure" : stdgo.GoString));
                };
            } else if (__value__ == ((228 : stdgo.GoUInt8))) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_pubkey : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey)) : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey), _1 : true };
                } catch(_) {
                    { _0 : new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0), _1 : false };
                }, _pubKey = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("expected an Ed25519 public key, got %T" : stdgo.GoString), stdgo.Go.toInterface(_pubkey));
                };
                if (!stdgo._internal.crypto.ed25519.Ed25519_verify.verify(_pubKey, _signed, _sig)) {
                    return stdgo._internal.errors.Errors_new_.new_(("Ed25519 verification failure" : stdgo.GoString));
                };
            } else if (__value__ == ((225 : stdgo.GoUInt8))) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_pubkey : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>), _1 : false };
                }, _pubKey = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("expected an RSA public key, got %T" : stdgo.GoString), stdgo.Go.toInterface(_pubkey));
                };
                {
                    var _err = (stdgo._internal.crypto.rsa.Rsa_verifyPKCS1v15.verifyPKCS1v15(_pubKey, _hashFunc, _signed, _sig) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            } else if (__value__ == ((226 : stdgo.GoUInt8))) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_pubkey : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>), _1 : false };
                }, _pubKey = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("expected an RSA public key, got %T" : stdgo.GoString), stdgo.Go.toInterface(_pubkey));
                };
                var _signOpts = (stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt) } : stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions>);
                {
                    var _err = (stdgo._internal.crypto.rsa.Rsa_verifyPSS.verifyPSS(_pubKey, _hashFunc, _signed, _sig, _signOpts) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            } else {
                return stdgo._internal.errors.Errors_new_.new_(("internal error: unknown signature type" : stdgo.GoString));
            };
        };
        return (null : stdgo.Error);
    }
