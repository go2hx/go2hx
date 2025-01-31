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
function _extractPadding(_payload:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoUInt8; } {
        var _toRemove = (0 : stdgo.GoInt), _good = (0 : stdgo.GoUInt8);
        if (((_payload.length) < (1 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoUInt8; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoUInt8) };
                _toRemove = __tmp__._0;
                _good = __tmp__._1;
                __tmp__;
            };
        };
        var _paddingLen = (_payload[((_payload.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
        var _t = ((((_payload.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) - (_paddingLen : stdgo.GoUInt) : stdgo.GoUInt);
        _good = (((-1 ^ _t : stdgo.GoInt32) >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8);
        var _toCheck = (256 : stdgo.GoInt);
        if ((_toCheck > (_payload.length) : Bool)) {
            _toCheck = (_payload.length);
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _toCheck : Bool)) {
                var _t = ((_paddingLen : stdgo.GoUInt) - (_i : stdgo.GoUInt) : stdgo.GoUInt);
var _mask = (((-1 ^ _t : stdgo.GoInt32) >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8);
var _b = (_payload[(((_payload.length) - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt)] : stdgo.GoUInt8);
_good = (_good & (((((_mask & _paddingLen : stdgo.GoUInt8) ^ (_mask & _b : stdgo.GoUInt8) : stdgo.GoUInt8)) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8);
                _i++;
            };
        };
        _good = (_good & ((_good << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _good = (_good & ((_good << (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _good = (_good & ((_good << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _good = (((_good : stdgo.GoInt8) >> (7i64 : stdgo.GoUInt64) : stdgo.GoInt8) : stdgo.GoUInt8);
        _paddingLen = (_paddingLen & (_good) : stdgo.GoUInt8);
        _toRemove = ((_paddingLen : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        return { _0 : _toRemove, _1 : _good };
    }
