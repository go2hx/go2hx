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
function _parsePrivateKey(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey; var _1 : stdgo.Error; } {
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509_parsePKCS1PrivateKey.parsePKCS1PrivateKey(_der), _key:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(_key)), _1 : (null : stdgo.Error) };
            };
        };
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509_parsePKCS8PrivateKey.parsePKCS8PrivateKey(_der), _key:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                {
                    final __type__ = _key;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_PrivateKey.PrivateKey))) {
                        var _key:stdgo.AnyInterface = __type__?.__underlying__();
                        return { _0 : stdgo.Go.toInterface(_key), _1 : (null : stdgo.Error) };
                    } else {
                        var _key:stdgo.AnyInterface = __type__?.__underlying__();
                        return { _0 : (null : stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey), _1 : stdgo._internal.errors.Errors_new_.new_(("tls: found unknown private key type in PKCS#8 wrapping" : stdgo.GoString)) };
                    };
                };
            };
        };
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509_parseECPrivateKey.parseECPrivateKey(_der), _key:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(_key)), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : (null : stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey), _1 : stdgo._internal.errors.Errors_new_.new_(("tls: failed to parse private key" : stdgo.GoString)) };
    }
