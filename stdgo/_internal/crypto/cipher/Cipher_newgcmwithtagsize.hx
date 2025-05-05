package stdgo._internal.crypto.cipher;
function newGCMWithTagSize(_cipher:stdgo._internal.crypto.cipher.Cipher_block.Block, _tagSize:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L109"
        return stdgo._internal.crypto.cipher.Cipher__newgcmwithnonceandtagsize._newGCMWithNonceAndTagSize(_cipher, (12 : stdgo.GoInt), _tagSize);
    }
