package stdgo._internal.crypto.cipher;
@:interface typedef T_gcmAble = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function newGCM(_nonceSize:stdgo.GoInt, _tagSize:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; };
};
