package stdgo._internal.crypto.cipher;
function newGCMWithNonceSize(_cipher:stdgo._internal.crypto.cipher.Cipher_Block.Block, _size:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD; var _1 : stdgo.Error; } {
        return stdgo._internal.crypto.cipher.Cipher__newGCMWithNonceAndTagSize._newGCMWithNonceAndTagSize(_cipher, _size, (16 : stdgo.GoInt));
    }
