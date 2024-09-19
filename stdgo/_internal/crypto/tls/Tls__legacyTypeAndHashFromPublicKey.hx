package stdgo._internal.crypto.tls;
function _legacyTypeAndHashFromPublicKey(_pub:stdgo._internal.crypto.Crypto_PublicKey.PublicKey):{ var _0 : stdgo.GoUInt8; var _1 : stdgo._internal.crypto.Crypto_Hash.Hash; var _2 : stdgo.Error; } {
        var _sigType = (0 : stdgo.GoUInt8), _hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_Hash.Hash), _err = (null : stdgo.Error);
        {
            final __type__ = _pub;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>))) {
                return { _0 : (225 : stdgo.GoUInt8), _1 : (8u32 : stdgo._internal.crypto.Crypto_Hash.Hash), _2 : (null : stdgo.Error) };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>))) {
                return { _0 : (227 : stdgo.GoUInt8), _1 : (3u32 : stdgo._internal.crypto.Crypto_Hash.Hash), _2 : (null : stdgo.Error) };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey))) {
                return { _0 : (0 : stdgo.GoUInt8), _1 : (0u32 : stdgo._internal.crypto.Crypto_Hash.Hash), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("tls: Ed25519 public keys are not supported before TLS 1.2" : stdgo.GoString)) };
            } else {
                return { _0 : (0 : stdgo.GoUInt8), _1 : (0u32 : stdgo._internal.crypto.Crypto_Hash.Hash), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("tls: unsupported public key: %T" : stdgo.GoString), stdgo.Go.toInterface(_pub)) };
            };
        };
    }
