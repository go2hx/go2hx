package stdgo._internal.crypto;
@:interface typedef Signer = stdgo.StructType & {
    /**
        * Public returns the public key corresponding to the opaque,
        * private key.
        
        
    **/
    @:interfacetypeffun
    public dynamic function public_():stdgo._internal.crypto.Crypto_publickey.PublicKey;
    /**
        * Sign signs digest with the private key, possibly using entropy from
        * rand. For an RSA key, the resulting signature should be either a
        * PKCS #1 v1.5 or PSS signature (as indicated by opts). For an (EC)DSA
        * key, it should be a DER-serialised, ASN.1 signature structure.
        * 
        * Hash implements the SignerOpts interface and, in most cases, one can
        * simply pass in the hash function used as opts. Sign may also attempt
        * to type assert opts to other types in order to obtain algorithm
        * specific values. See the documentation in each package for details.
        * 
        * Note that when a signature of a hash of a larger message is needed,
        * the caller is responsible for hashing the larger message and passing
        * the hash (as digest) and the hash function (as opts) to Sign.
        
        
    **/
    @:interfacetypeffun
    public dynamic function sign(_rand:stdgo._internal.io.Io_reader.Reader, _digest:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_signeropts.SignerOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
};
