package stdgo._internal.crypto.cipher;
function newCFBEncrypter(_block:stdgo._internal.crypto.cipher.Cipher_Block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_Stream.Stream {
        return stdgo._internal.crypto.cipher.Cipher__newCFB._newCFB(_block, _iv, false);
    }
