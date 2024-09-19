package _internal.vendor.golang_dot_org.x.crypto.chacha20;
function newUnauthenticatedCipher(_key:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20_Cipher.Cipher>; var _1 : stdgo.Error; } {
        var _c = (stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20_Cipher.Cipher() : _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20_Cipher.Cipher)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20_Cipher.Cipher>);
        return _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20__newUnauthenticatedCipher._newUnauthenticatedCipher(_c, _key, _nonce);
    }
