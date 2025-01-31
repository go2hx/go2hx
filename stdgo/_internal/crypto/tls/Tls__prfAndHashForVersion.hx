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
function _prfAndHashForVersion(_version:stdgo.GoUInt16, _suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>):{ var _0 : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Void; var _1 : stdgo._internal.crypto.Crypto_Hash.Hash; } {
        {
            final __value__ = _version;
            if (__value__ == ((769 : stdgo.GoUInt16)) || __value__ == ((770 : stdgo.GoUInt16))) {
                return { _0 : stdgo._internal.crypto.tls.Tls__prf10._prf10, _1 : (0u32 : stdgo._internal.crypto.Crypto_Hash.Hash) };
            } else if (__value__ == ((771 : stdgo.GoUInt16))) {
                if (((@:checkr _suite ?? throw "null pointer dereference")._flags & (8 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    return { _0 : stdgo._internal.crypto.tls.Tls__prf12._prf12(stdgo._internal.crypto.sha512.Sha512_new384.new384), _1 : (6u32 : stdgo._internal.crypto.Crypto_Hash.Hash) };
                };
                return { _0 : stdgo._internal.crypto.tls.Tls__prf12._prf12(stdgo._internal.crypto.sha256.Sha256_new_.new_), _1 : (5u32 : stdgo._internal.crypto.Crypto_Hash.Hash) };
            } else {
                throw stdgo.Go.toInterface(("unknown version" : stdgo.GoString));
            };
        };
    }
