package stdgo._internal.crypto.cipher;
function newCFBEncrypter(_block:stdgo._internal.crypto.cipher.Cipher_block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_stream.Stream {
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cfb.go#L57"
        return stdgo._internal.crypto.cipher.Cipher__newcfb._newCFB(_block, _iv, false);
    }
