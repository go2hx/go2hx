package stdgo._internal.crypto.tls;
function _legacyTypeAndHashFromPublicKey(_pub:stdgo._internal.crypto.Crypto_publickey.PublicKey):{ var _0 : stdgo.GoUInt8; var _1 : stdgo._internal.crypto.Crypto_hash.Hash; var _2 : stdgo.Error; } {
        var _sigType = (0 : stdgo.GoUInt8), _hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash), _err = (null : stdgo.Error);
        {
            final __type__ = _pub;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo._internal.crypto.Crypto_hash.Hash; var _2 : stdgo.Error; } = { _0 : (225 : stdgo.GoUInt8), _1 : (8u32 : stdgo._internal.crypto.Crypto_hash.Hash), _2 : (null : stdgo.Error) };
                    _sigType = __tmp__._0;
                    _hash = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo._internal.crypto.Crypto_hash.Hash; var _2 : stdgo.Error; } = { _0 : (227 : stdgo.GoUInt8), _1 : (3u32 : stdgo._internal.crypto.Crypto_hash.Hash), _2 : (null : stdgo.Error) };
                    _sigType = __tmp__._0;
                    _hash = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo._internal.crypto.Crypto_hash.Hash; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoUInt8), _1 : (0u32 : stdgo._internal.crypto.Crypto_hash.Hash), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("tls: Ed25519 public keys are not supported before TLS 1.2" : stdgo.GoString)) };
                    _sigType = __tmp__._0;
                    _hash = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            } else {
                return {
                    final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo._internal.crypto.Crypto_hash.Hash; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoUInt8), _1 : (0u32 : stdgo._internal.crypto.Crypto_hash.Hash), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("tls: unsupported public key: %T" : stdgo.GoString), stdgo.Go.toInterface(_pub)) };
                    _sigType = __tmp__._0;
                    _hash = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
    }
