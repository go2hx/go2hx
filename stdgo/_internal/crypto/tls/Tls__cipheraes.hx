package stdgo._internal.crypto.tls;
function _cipherAES(_key:stdgo.Slice<stdgo.GoUInt8>, _iv:stdgo.Slice<stdgo.GoUInt8>, _isRead:Bool):stdgo.AnyInterface {
        var __tmp__ = stdgo._internal.crypto.aes.Aes_newcipher.newCipher(_key), _block:stdgo._internal.crypto.cipher.Cipher_block.Block = __tmp__._0, __65:stdgo.Error = __tmp__._1;
        if (_isRead) {
            return stdgo.Go.toInterface(stdgo._internal.crypto.cipher.Cipher_newcbcdecrypter.newCBCDecrypter(_block, _iv));
        };
        return stdgo.Go.toInterface(stdgo._internal.crypto.cipher.Cipher_newcbcencrypter.newCBCEncrypter(_block, _iv));
    }
