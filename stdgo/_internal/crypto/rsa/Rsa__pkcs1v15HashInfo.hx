package stdgo._internal.crypto.rsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.math.Math;
import stdgo._internal.crypto.rand.Rand;
function _pkcs1v15HashInfo(_hash:stdgo._internal.crypto.Crypto_Hash.Hash, _inLen:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        var _hashLen = (0 : stdgo.GoInt), _prefix = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        if (_hash == ((0u32 : stdgo._internal.crypto.Crypto_Hash.Hash))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : _inLen, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                _hashLen = __tmp__._0;
                _prefix = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        _hashLen = _hash.size();
        if (_inLen != (_hashLen)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: input must be hashed message" : stdgo.GoString)) };
                _hashLen = __tmp__._0;
                _prefix = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var __tmp__ = (stdgo._internal.crypto.rsa.Rsa__hashPrefixes._hashPrefixes != null && stdgo._internal.crypto.rsa.Rsa__hashPrefixes._hashPrefixes.exists(_hash) ? { _0 : stdgo._internal.crypto.rsa.Rsa__hashPrefixes._hashPrefixes[_hash], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false }), _prefix:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: unsupported hash function" : stdgo.GoString)) };
                _hashLen = __tmp__._0;
                _prefix = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        return { _0 : _hashLen, _1 : _prefix, _2 : _err };
    }
