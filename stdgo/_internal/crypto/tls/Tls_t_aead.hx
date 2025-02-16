package stdgo._internal.crypto.tls;
@:interface typedef T_aead = stdgo.StructType & {
    > stdgo._internal.crypto.cipher.Cipher_aead.AEAD,
    @:interfacetypeffun
    function _explicitNonceLen():stdgo.GoInt;
};
