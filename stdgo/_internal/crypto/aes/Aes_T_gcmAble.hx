package stdgo._internal.crypto.aes;
typedef T_gcmAble = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function newGCM(_nonceSize:stdgo.GoInt, _tagSize:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD; var _1 : stdgo.Error; };
};