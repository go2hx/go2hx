package stdgo._internal.crypto.des;
function newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_block.Block; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/des/cipher.go#L30"
        if ((_key.length) != ((8 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/des/cipher.go#L31"
            return { _0 : (null : stdgo._internal.crypto.cipher.Cipher_block.Block), _1 : stdgo.Go.asInterface((_key.length : stdgo._internal.crypto.des.Des_keysizeerror.KeySizeError)) };
        };
        var _c = (stdgo.Go.setRef(({} : stdgo._internal.crypto.des.Des_t_descipher.T_desCipher)) : stdgo.Ref<stdgo._internal.crypto.des.Des_t_descipher.T_desCipher>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/des/cipher.go#L35"
        _c._generateSubkeys(_key);
        //"file:///home/runner/.go/go1.21.3/src/crypto/des/cipher.go#L36"
        return { _0 : stdgo.Go.asInterface(_c), _1 : (null : stdgo.Error) };
    }
