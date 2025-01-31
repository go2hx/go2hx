package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
function _newCBCGenericDecrypter(_b:stdgo._internal.crypto.cipher.Cipher_Block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_BlockMode.BlockMode {
        if ((_iv.length) != (_b.blockSize())) {
            throw stdgo.Go.toInterface(("cipher.NewCBCDecrypter: IV length must equal block size" : stdgo.GoString));
        };
        return stdgo.Go.asInterface((({
            final e = stdgo._internal.crypto.cipher.Cipher__newCBC._newCBC(_b, _iv);
            ({ _b : e._b, _blockSize : e._blockSize, _iv : e._iv, _tmp : e._tmp } : stdgo._internal.crypto.cipher.Cipher_T_cbcDecrypter.T_cbcDecrypter);
        })));
    }
