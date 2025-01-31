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
function _newFinishedHash(_version:stdgo.GoUInt16, _cipherSuite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>):stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash {
        var _buffer:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        if ((_version >= (771 : stdgo.GoUInt16) : Bool)) {
            _buffer = (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls__prfAndHashForVersion._prfAndHashForVersion(_version, _cipherSuite), _prf:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Void = __tmp__._0, _hash:stdgo._internal.crypto.Crypto_Hash.Hash = __tmp__._1;
        if (_hash != ((0u32 : stdgo._internal.crypto.Crypto_Hash.Hash))) {
            return (new stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash(_hash.new_(), _hash.new_(), (null : stdgo._internal.hash.Hash_Hash.Hash), (null : stdgo._internal.hash.Hash_Hash.Hash), _buffer, _version, _prf) : stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash);
        };
        return (new stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash(stdgo._internal.crypto.sha1.Sha1_new_.new_(), stdgo._internal.crypto.sha1.Sha1_new_.new_(), stdgo._internal.crypto.md5.Md5_new_.new_(), stdgo._internal.crypto.md5.Md5_new_.new_(), _buffer, _version, _prf) : stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash);
    }
