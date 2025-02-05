package stdgo._internal.crypto;
@:interface typedef SignerOpts = stdgo.StructType & {
    /**
        * HashFunc returns an identifier for the hash function used to produce
        * the message passed to Signer.Sign, or else zero to indicate that no
        * hashing was done.
        
        
    **/
    @:interfacetypeffun
    public dynamic function hashFunc():stdgo._internal.crypto.Crypto_hash.Hash;
};
