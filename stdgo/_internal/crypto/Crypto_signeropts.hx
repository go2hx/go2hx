package stdgo._internal.crypto;
@:interface typedef SignerOpts = stdgo.StructType & {
    @:interfacetypeffun
    function hashFunc():stdgo._internal.crypto.Crypto_hash.Hash;
};
