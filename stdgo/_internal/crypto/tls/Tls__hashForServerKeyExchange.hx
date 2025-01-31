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
function _hashForServerKeyExchange(_sigType:stdgo.GoUInt8, _hashFunc:stdgo._internal.crypto.Crypto_Hash.Hash, _version:stdgo.GoUInt16, _slices:haxe.Rest<stdgo.Slice<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        var _slices = new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(_slices.length, 0, ..._slices);
        if (_sigType == ((228 : stdgo.GoUInt8))) {
            var _signed:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            for (__65 => _slice in _slices) {
                _signed = (_signed.__append__(...(_slice : Array<stdgo.GoUInt8>)));
            };
            return _signed;
        };
        if ((_version >= (771 : stdgo.GoUInt16) : Bool)) {
            var _h = (_hashFunc.new_() : stdgo._internal.hash.Hash_Hash.Hash);
            for (__65 => _slice in _slices) {
                _h.write(_slice);
            };
            var _digest = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
            return _digest;
        };
        if (_sigType == ((227 : stdgo.GoUInt8))) {
            return stdgo._internal.crypto.tls.Tls__sha1Hash._sha1Hash(_slices);
        };
        return stdgo._internal.crypto.tls.Tls__md5SHA1Hash._md5SHA1Hash(_slices);
    }
