package stdgo._internal.crypto;
@:interface typedef Decrypter = stdgo.StructType & {
    /**
        * Public returns the public key corresponding to the opaque,
        * private key.
        
        
    **/
    @:interfacetypeffun
    public dynamic function public_():stdgo._internal.crypto.Crypto_publickey.PublicKey;
    /**
        * Decrypt decrypts msg. The opts argument should be appropriate for
        * the primitive used. See the documentation in each implementation for
        * details.
        
        
    **/
    @:interfacetypeffun
    public dynamic function decrypt(_rand:stdgo._internal.io.Io_reader.Reader, _msg:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_decrypteropts.DecrypterOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
};
