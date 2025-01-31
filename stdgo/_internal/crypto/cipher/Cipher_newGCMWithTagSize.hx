package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
function newGCMWithTagSize(_cipher:stdgo._internal.crypto.cipher.Cipher_Block.Block, _tagSize:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD; var _1 : stdgo.Error; } {
        return stdgo._internal.crypto.cipher.Cipher__newGCMWithNonceAndTagSize._newGCMWithNonceAndTagSize(_cipher, (12 : stdgo.GoInt), _tagSize);
    }
