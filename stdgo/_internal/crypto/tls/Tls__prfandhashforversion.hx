package stdgo._internal.crypto.tls;
function _prfAndHashForVersion(_version:stdgo.GoUInt16, _suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuite.T_cipherSuite>):{ var _0 : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Void; var _1 : stdgo._internal.crypto.Crypto_hash.Hash; } {
        {
            final __value__ = _version;
            if (__value__ == ((769 : stdgo.GoUInt16)) || __value__ == ((770 : stdgo.GoUInt16))) {
                return { _0 : stdgo._internal.crypto.tls.Tls__prf10._prf10, _1 : (0u32 : stdgo._internal.crypto.Crypto_hash.Hash) };
            } else if (__value__ == ((771 : stdgo.GoUInt16))) {
                if (((@:checkr _suite ?? throw "null pointer dereference")._flags & (8 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    return { _0 : stdgo._internal.crypto.tls.Tls__prf12._prf12(stdgo._internal.crypto.sha512.Sha512_new384.new384), _1 : (6u32 : stdgo._internal.crypto.Crypto_hash.Hash) };
                };
                return { _0 : stdgo._internal.crypto.tls.Tls__prf12._prf12(stdgo._internal.crypto.sha256.Sha256_new_.new_), _1 : (5u32 : stdgo._internal.crypto.Crypto_hash.Hash) };
            } else {
                throw stdgo.Go.toInterface(("unknown version" : stdgo.GoString));
            };
        };
    }
