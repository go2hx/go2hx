package stdgo._internal.crypto.cipher;
function _newCBCGenericEncrypter(_b:stdgo._internal.crypto.cipher.Cipher_block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode {
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L64"
        if ((_iv.length) != (_b.blockSize())) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L65"
            throw stdgo.Go.toInterface(("cipher.NewCBCEncrypter: IV length must equal block size" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L67"
        return stdgo.Go.asInterface((({
            final e = stdgo._internal.crypto.cipher.Cipher__newcbc._newCBC(_b, _iv);
            ({ _b : e._b, _blockSize : e._blockSize, _iv : e._iv, _tmp : e._tmp } : stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter.T_cbcEncrypter);
        })));
    }
