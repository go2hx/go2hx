package stdgo._internal.crypto.tls;
typedef T_aead = stdgo.StructType & {
    > stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD,
    /**
        explicitNonceLen returns the number of bytes of explicit nonce
        included in each record. This is eight for older AEADs and
        zero for modern ones.
        
        
    **/
    public dynamic function _explicitNonceLen():stdgo.GoInt;
};
