package stdgo._internal.crypto.cipher;
function _newCBCGenericDecrypter(_b:stdgo._internal.crypto.cipher.Cipher_block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode {
        if ((_iv.length) != (_b.blockSize())) {
            throw stdgo.Go.toInterface(("cipher.NewCBCDecrypter: IV length must equal block size" : stdgo.GoString));
        };
        return stdgo.Go.asInterface((({
            final e = stdgo._internal.crypto.cipher.Cipher__newcbc._newCBC(_b, _iv);
            ({ _b : e._b, _blockSize : e._blockSize, _iv : e._iv, _tmp : e._tmp } : stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter.T_cbcDecrypter);
        })));
    }
