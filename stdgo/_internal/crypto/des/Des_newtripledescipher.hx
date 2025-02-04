package stdgo._internal.crypto.des;
function newTripleDESCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_block.Block; var _1 : stdgo.Error; } {
        if ((_key.length) != ((24 : stdgo.GoInt))) {
            return { _0 : (null : stdgo._internal.crypto.cipher.Cipher_block.Block), _1 : stdgo.Go.asInterface((_key.length : stdgo._internal.crypto.des.Des_keysizeerror.KeySizeError)) };
        };
        var _c = (stdgo.Go.setRef(({} : stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher)) : stdgo.Ref<stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher>);
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._cipher1._generateSubkeys((_key.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._cipher2._generateSubkeys((_key.__slice__((8 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._cipher3._generateSubkeys((_key.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        return { _0 : stdgo.Go.asInterface(_c), _1 : (null : stdgo.Error) };
    }
