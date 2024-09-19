package stdgo._internal.crypto.des;
function newTripleDESCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_Block.Block; var _1 : stdgo.Error; } {
        if ((_key.length) != ((24 : stdgo.GoInt))) {
            return { _0 : (null : stdgo._internal.crypto.cipher.Cipher_Block.Block), _1 : stdgo.Go.asInterface((_key.length : stdgo._internal.crypto.des.Des_KeySizeError.KeySizeError)) };
        };
        var _c = (stdgo.Go.setRef(({} : stdgo._internal.crypto.des.Des_T_tripleDESCipher.T_tripleDESCipher)) : stdgo.Ref<stdgo._internal.crypto.des.Des_T_tripleDESCipher.T_tripleDESCipher>);
        _c._cipher1._generateSubkeys((_key.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _c._cipher2._generateSubkeys((_key.__slice__((8 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _c._cipher3._generateSubkeys((_key.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        return { _0 : stdgo.Go.asInterface(_c), _1 : (null : stdgo.Error) };
    }