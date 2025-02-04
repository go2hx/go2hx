package stdgo._internal.crypto.tls;
function _cipherRC4(_key:stdgo.Slice<stdgo.GoUInt8>, _iv:stdgo.Slice<stdgo.GoUInt8>, _isRead:Bool):stdgo.AnyInterface {
        var __tmp__ = stdgo._internal.crypto.rc4.Rc4_newcipher.newCipher(_key), _cipher:stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher> = __tmp__._0, __65:stdgo.Error = __tmp__._1;
        return stdgo.Go.toInterface(stdgo.Go.asInterface(_cipher));
    }
