package stdgo._internal.crypto.cipher;
function newCFBDecrypter(_block:stdgo._internal.crypto.cipher.Cipher_block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_stream.Stream {
        return stdgo._internal.crypto.cipher.Cipher__newcfb._newCFB(_block, _iv, true);
    }
