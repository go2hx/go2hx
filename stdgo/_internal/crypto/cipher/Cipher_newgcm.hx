package stdgo._internal.crypto.cipher;
function newGCM(_cipher:stdgo._internal.crypto.cipher.Cipher_block.Block):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L86"
        return stdgo._internal.crypto.cipher.Cipher__newgcmwithnonceandtagsize._newGCMWithNonceAndTagSize(_cipher, (12 : stdgo.GoInt), (16 : stdgo.GoInt));
    }
