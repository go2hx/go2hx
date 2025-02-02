package stdgo._internal.crypto.cipher;
function newGCM(_cipher:stdgo._internal.crypto.cipher.Cipher_Block.Block):{ var _0 : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD; var _1 : stdgo.Error; } {
        return stdgo._internal.crypto.cipher.Cipher__newGCMWithNonceAndTagSize._newGCMWithNonceAndTagSize(_cipher, (12 : stdgo.GoInt), (16 : stdgo.GoInt));
    }
