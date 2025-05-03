package stdgo._internal.crypto.cipher;
function newGCMWithNonceSize(_cipher:stdgo._internal.crypto.cipher.Cipher_block.Block, _size:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L97"
        return stdgo._internal.crypto.cipher.Cipher__newgcmwithnonceandtagsize._newGCMWithNonceAndTagSize(_cipher, _size, (16 : stdgo.GoInt));
    }
