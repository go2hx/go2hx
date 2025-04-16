package stdgo._internal.crypto.ecdh;
@:interface typedef Curve = stdgo.StructType & {
    /**
        * GenerateKey generates a random PrivateKey.
        * 
        * Most applications should use [crypto/rand.Reader] as rand. Note that the
        * returned key does not depend deterministically on the bytes read from rand,
        * and may change between calls and/or between versions.
        
        
    **/
    @:interfacetypeffun
    public dynamic function generateKey(_rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; };
    /**
        * NewPrivateKey checks that key is valid and returns a PrivateKey.
        * 
        * For NIST curves, this follows SEC 1, Version 2.0, Section 2.3.6, which
        * amounts to decoding the bytes as a fixed length big endian integer and
        * checking that the result is lower than the order of the curve. The zero
        * private key is also rejected, as the encoding of the corresponding public
        * key would be irregular.
        * 
        * For X25519, this only checks the scalar length.
        
        
    **/
    @:interfacetypeffun
    public dynamic function newPrivateKey(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; };
    /**
        * NewPublicKey checks that key is valid and returns a PublicKey.
        * 
        * For NIST curves, this decodes an uncompressed point according to SEC 1,
        * Version 2.0, Section 2.3.4. Compressed encodings and the point at
        * infinity are rejected.
        * 
        * For X25519, this only checks the u-coordinate length. Adversarially
        * selected public keys can cause ECDH to return an error.
        
        
    **/
    @:interfacetypeffun
    public dynamic function newPublicKey(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>; var _1 : stdgo.Error; };
    /**
        * ecdh performs a ECDH exchange and returns the shared secret. It's exposed
        * as the PrivateKey.ECDH method.
        * 
        * The private method also allow us to expand the ECDH interface with more
        * methods in the future without breaking backwards compatibility.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _ecdh(_local:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>, _remote:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    /**
        * privateKeyToPublicKey converts a PrivateKey to a PublicKey. It's exposed
        * as the PrivateKey.PublicKey method.
        * 
        * This method always succeeds: for X25519, the zero key can't be
        * constructed due to clamping; for NIST curves, it is rejected by
        * NewPrivateKey.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _privateKeyToPublicKey(_0:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>):stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>;
};
