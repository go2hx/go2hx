package stdgo._internal.crypto.tls;
@:interface typedef T_aead = stdgo.StructType & {
    > stdgo._internal.crypto.cipher.Cipher_aead.AEAD,
    /**
        * explicitNonceLen returns the number of bytes of explicit nonce
        * included in each record. This is eight for older AEADs and
        * zero for modern ones.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _explicitNonceLen():stdgo.GoInt;
};
