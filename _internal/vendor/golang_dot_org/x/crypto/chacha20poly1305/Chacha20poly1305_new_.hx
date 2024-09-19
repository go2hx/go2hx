package _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305;
function new_(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD; var _1 : stdgo.Error; } {
        if ((_key.length) != ((32 : stdgo.GoInt))) {
            return { _0 : (null : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD), _1 : stdgo._internal.errors.Errors_new_.new_(("chacha20poly1305: bad key length" : stdgo.GoString)) };
        };
        var _ret = (stdgo.Go.setRef(({} : _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305>);
        stdgo.Go.copySlice((_ret._key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _key);
        return { _0 : stdgo.Go.asInterface(_ret), _1 : (null : stdgo.Error) };
    }
