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
function _legacyTypeAndHashFromPublicKey(_pub:stdgo._internal.crypto.Crypto_PublicKey.PublicKey):{ var _0 : stdgo.GoUInt8; var _1 : stdgo._internal.crypto.Crypto_Hash.Hash; var _2 : stdgo.Error; } {
        var _sigType = (0 : stdgo.GoUInt8), _hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_Hash.Hash), _err = (null : stdgo.Error);
        {
            final __type__ = _pub;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo._internal.crypto.Crypto_Hash.Hash; var _2 : stdgo.Error; } = { _0 : (225 : stdgo.GoUInt8), _1 : (8u32 : stdgo._internal.crypto.Crypto_Hash.Hash), _2 : (null : stdgo.Error) };
                    _sigType = __tmp__._0;
                    _hash = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo._internal.crypto.Crypto_Hash.Hash; var _2 : stdgo.Error; } = { _0 : (227 : stdgo.GoUInt8), _1 : (3u32 : stdgo._internal.crypto.Crypto_Hash.Hash), _2 : (null : stdgo.Error) };
                    _sigType = __tmp__._0;
                    _hash = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo._internal.crypto.Crypto_Hash.Hash; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoUInt8), _1 : (0u32 : stdgo._internal.crypto.Crypto_Hash.Hash), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("tls: Ed25519 public keys are not supported before TLS 1.2" : stdgo.GoString)) };
                    _sigType = __tmp__._0;
                    _hash = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            } else {
                return {
                    final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo._internal.crypto.Crypto_Hash.Hash; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoUInt8), _1 : (0u32 : stdgo._internal.crypto.Crypto_Hash.Hash), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("tls: unsupported public key: %T" : stdgo.GoString), stdgo.Go.toInterface(_pub)) };
                    _sigType = __tmp__._0;
                    _hash = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
    }
