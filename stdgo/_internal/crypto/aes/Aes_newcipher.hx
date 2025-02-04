package stdgo._internal.crypto.aes;
function newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_block.Block; var _1 : stdgo.Error; } {
        var _k = (_key.length : stdgo.GoInt);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _k;
                    if (__value__ == ((16 : stdgo.GoInt)) || __value__ == ((24 : stdgo.GoInt)) || __value__ == ((32 : stdgo.GoInt))) {
                        break;
                        break;
                    } else {
                        return { _0 : (null : stdgo._internal.crypto.cipher.Cipher_block.Block), _1 : stdgo.Go.asInterface((_k : stdgo._internal.crypto.aes.Aes_keysizeerror.KeySizeError)) };
                    };
                };
                break;
            };
        };
        if (false) {
            return stdgo._internal.crypto.internal.boring.Boring_newaescipher.newAESCipher(_key);
        };
        return stdgo._internal.crypto.aes.Aes__newcipher._newCipher(_key);
    }
