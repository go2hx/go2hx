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
function _cloneHash(_in:stdgo._internal.hash.Hash_Hash.Hash, _h:stdgo._internal.crypto.Crypto_Hash.Hash):stdgo._internal.hash.Hash_Hash.Hash {
        {};
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_in) : stdgo._internal.crypto.tls.Tls_T__cloneHash___localname___binaryMarshaler_12373.T__cloneHash___localname___binaryMarshaler_12373)) : stdgo._internal.crypto.tls.Tls_T__cloneHash___localname___binaryMarshaler_12373.T__cloneHash___localname___binaryMarshaler_12373), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.tls.Tls_T__cloneHash___localname___binaryMarshaler_12373.T__cloneHash___localname___binaryMarshaler_12373), _1 : false };
        }, _marshaler = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return (null : stdgo._internal.hash.Hash_Hash.Hash);
        };
        var __tmp__ = _marshaler.marshalBinary(), _state:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return (null : stdgo._internal.hash.Hash_Hash.Hash);
        };
        var _out = (_h.new_() : stdgo._internal.hash.Hash_Hash.Hash);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_out) : stdgo._internal.crypto.tls.Tls_T__cloneHash___localname___binaryMarshaler_12373.T__cloneHash___localname___binaryMarshaler_12373)) : stdgo._internal.crypto.tls.Tls_T__cloneHash___localname___binaryMarshaler_12373.T__cloneHash___localname___binaryMarshaler_12373), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.tls.Tls_T__cloneHash___localname___binaryMarshaler_12373.T__cloneHash___localname___binaryMarshaler_12373), _1 : false };
        }, _unmarshaler = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return (null : stdgo._internal.hash.Hash_Hash.Hash);
        };
        {
            var _err = (_unmarshaler.unmarshalBinary(_state) : stdgo.Error);
            if (_err != null) {
                return (null : stdgo._internal.hash.Hash_Hash.Hash);
            };
        };
        return _out;
    }
