package stdgo._internal.crypto.aes;
function _newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_block.Block; var _1 : stdgo.Error; } {
        return stdgo._internal.crypto.aes.Aes__newciphergeneric._newCipherGeneric(_key);
    }
