package stdgo._internal.crypto.des;
function newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_block.Block; var _1 : stdgo.Error; } {
        if ((_key.length) != ((8 : stdgo.GoInt))) {
            return { _0 : (null : stdgo._internal.crypto.cipher.Cipher_block.Block), _1 : stdgo.Go.asInterface((_key.length : stdgo._internal.crypto.des.Des_keysizeerror.KeySizeError)) };
        };
        var _c = (stdgo.Go.setRef(({} : stdgo._internal.crypto.des.Des_t_descipher.T_desCipher)) : stdgo.Ref<stdgo._internal.crypto.des.Des_t_descipher.T_desCipher>);
        @:check2r _c._generateSubkeys(_key);
        return { _0 : stdgo.Go.asInterface(_c), _1 : (null : stdgo.Error) };
    }
